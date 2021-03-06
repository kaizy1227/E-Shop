using Model.Dao;
using Model.EF;
using NetCuoiKy.Models;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Script.Serialization;
using System.Data.Entity.Core.Common;
using Common;
using PayPal.Api;
using System.Security.Claims;
using OnlineShoppingStore;
using MoMo;
using Newtonsoft.Json.Linq;

namespace NetCuoiKy.Controllers
{
    public class CartController : Controller
    {
        private const string CartSession = "CartSession";
        public double TyGiaUSD = 20000;
        // GET: Cart
        public ActionResult Index()
        {
            var cart = Session[CartSession];
            var list = new List<CartItem>();
            if (cart != null)
            {
                list = (List<CartItem>)cart;
            }
            return View(list);
        }
        public JsonResult DeleteAll()
        {
            Session[CartSession] = null;
            return Json(new
            {
                status = true
            });
        }
        public JsonResult Delete(int id)
        {
            var sessionCart = (List<CartItem>)Session[CartSession];
            sessionCart.RemoveAll(x => x.Product.ID == id);
            Session[CartSession] = sessionCart;
            return Json(new
            {
                status = true
            });
        }
        public JsonResult Update(string cartModel)
        {
            var jsonCart = new JavaScriptSerializer().Deserialize<List<CartItem>>(cartModel);
            var sessionCart = (List<CartItem>)Session[CartSession];
            foreach (var item in sessionCart)
            {
                var jsonItem = jsonCart.SingleOrDefault(x => x.Product.ID == item.Product.ID);
                if (jsonItem != null)
                {
                    item.Quantity = jsonItem.Quantity;

                }
            }
            Session[CartSession] = sessionCart;
            return Json(new
            {
                status = true
            });
        }
        public ActionResult AddItem(int productId, int quantity)
        {
            var session = (UserLogin)Session[NetCuoiKy.Common.CommonConstant.USER_SESSION];
            var product = new ProductDao().ViewDetail(productId);
            var cart = Session[CartSession];
            if(session != null)
            {
                if (cart != null)
                {
                    var list = (List<CartItem>)cart;
                    if (list.Exists(x => x.Product.ID == productId))
                    {
                        foreach (var item in list)
                        {
                            if (item.Product.ID == productId)
                            {
                                item.Quantity += quantity;
                            }
                        }
                    }
                    else
                    {
                        //tao moi doi tuong cart item
                        var item = new CartItem();
                        item.Product = product;
                        item.Quantity = quantity;
                        list.Add(item);
                    }
                    //gan vao session
                    Session[CartSession] = list;
                }
                else
                {
                    //tao moi doi tuong cart item
                    var item = new CartItem();
                    item.Product = product;
                    item.Quantity = quantity;
                    var list = new List<CartItem>();
                    list.Add(item);
                    //gan vao session
                    Session[CartSession] = list;
                }
                return RedirectToAction("Index");
            }
            else
            {
                return Redirect("/dang-nhap");
            } 
        }
        [HttpGet]
        public ActionResult Payment()
        {
            var cart = Session[CartSession];
            var list = new List<CartItem>();
            if (cart != null)
            {
                list = (List<CartItem>)cart;
            }
            return View(list);
        }

        public void save()
        {
            var session = (UserLogin)Session[NetCuoiKy.Common.CommonConstant.USER_SESSION];
            var order = new Model.EF.Order();
            order.CreatedDate = DateTime.Now;
            order.ShipAddress = session.Address;
            order.ShipMobile = session.Phone;
            order.ShipName = session.UserName;
            order.ShipEmail = session.Email;

            try
            {
                var id = new OrderDao().Insert(order);
                var cart = (List<CartItem>)Session[CartSession];
                var detailDao = new Model.Dao.OrderDetailDao();
                decimal total = 0;
                foreach (var item in cart)
                {
                    var orderDetail = new OrderDetail();
                    orderDetail.ProductID = item.Product.ID;
                    orderDetail.OrderID = id;
                    orderDetail.Price = item.Product.Price;
                    orderDetail.Quantity = item.Quantity;
                    detailDao.Insert(orderDetail);

                    total += (item.Product.Price.GetValueOrDefault(0) * item.Quantity);
                }

            }
            catch (Exception)
            {
                //ghi log

            }

        }

        [HttpPost]
        public ActionResult Payment(string shipName, string mobile, string address, string email)
        {
            var order = new Model.EF.Order();
            order.CreatedDate = DateTime.Now;
            order.ShipAddress = address;
            order.ShipMobile = mobile;
            order.ShipName = shipName;
            order.ShipEmail = email;

            try
            {
                var id = new OrderDao().Insert(order);
                var cart = (List<CartItem>)Session[CartSession];
                var detailDao = new Model.Dao.OrderDetailDao();
                decimal total = 0;
                foreach (var item in cart)
                {
                    var orderDetail = new OrderDetail();
                    orderDetail.ProductID = item.Product.ID;
                    orderDetail.OrderID = id;
                    orderDetail.Price = item.Product.Price;
                    orderDetail.Quantity = item.Quantity;
                    detailDao.Insert(orderDetail);

                    total += (item.Product.Price.GetValueOrDefault(0) * item.Quantity);
                }
                string content = System.IO.File.ReadAllText(Server.MapPath("Areas/Client/template/HtmlPage1.html"));

                content = content.Replace("{{CustomerName}}", shipName);
                content = content.Replace("{{Phone}}", mobile);
                content = content.Replace("{{Email}}", email);
                content = content.Replace("{{Address}}", address);
                content = content.Replace("{{Total}}", total.ToString("N0"));
                var toEmail = ConfigurationManager.AppSettings["ToEmailAddress"].ToString();

                new MailHelper().SendMail(email, "Đơn hàng mới từ OnlineShop", content);
                new MailHelper().SendMail(toEmail, "Đơn hàng mới từ OnlineShop", content);
            }
            catch (Exception)
            {
                //ghi log
                return Redirect("/loi-thanh-toan");
            }
            return Redirect("/hoan-thanh");
        }

        public List<CartItem> Carts
        {
            get
            {
                var cart = Session[CartSession];
                var list = new List<CartItem>();
                if (cart != null)
                {
                    list = (List<CartItem>)cart;
                }
                return list;
            }
        }

        public ActionResult PaymentWithPaypal()
        {
            var apiContext = PaypalConfiguration.GetApiContext();

            try
            {
                var payerId = Request.Params["PayerID"];

                if (string.IsNullOrEmpty(payerId))
                {
                    if (Request.Url != null)
                    {
                        var baseUri = Request.Url.Scheme + "://" + Request.Url.Authority + "/Cart/PaymentWithPayPal?";

                        var guid = Convert.ToString((new Random()).Next(100000));

                        var createdPayment = CreatePayment(apiContext, baseUri + "guid=" + guid);


                        var links = createdPayment.links.GetEnumerator();

                        string paypalRedirectUrl = null;

                        while (links.MoveNext())
                        {
                            var lnk = links.Current;

                            if (lnk != null && lnk.rel.ToLower().Trim().Equals("approval_url"))
                            {
                                paypalRedirectUrl = lnk.href;
                            }
                        }
                        Session.Add(guid, createdPayment.id);
                        return Redirect(paypalRedirectUrl);
                    }
                }
                else
                {

                    var guid = Request.Params["guid"];

                    var executedPayment = ExecutePayment(apiContext, payerId, Session[guid] as string);

                    if (executedPayment.state.ToLower() != "approved")
                    {
                        return Redirect("/loi-thanh-toan");
                    }

                }
            }
            catch (Exception ex)
            {
                return Redirect("/loi-thanh-toan");
            }
            save();
            return Redirect("/hoan-thanh");
        }

        private Payment _payment;

        private Payment ExecutePayment(APIContext apiContext, string payerId, string paymentId)
        {
            var paymentExecution = new PaymentExecution { payer_id = payerId };
            _payment = new Payment { id = paymentId };
            return _payment.Execute(apiContext, paymentExecution);
        }

        private Payment CreatePayment(APIContext apiContext, string redirectUrl)
        {
            var paypalOrderId = DateTime.Now.Ticks;
            var itemList = new ItemList() { items = new List<Item>() };
            var total = Math.Round(Carts.Sum(p => p.Total) / TyGiaUSD,1);
            //var total = Carts.Sum(p => p.Total);
            foreach (var item in Carts)
            {
                itemList.items.Add(new Item()
                {
                    name = item.Product.Name,
                    currency = "USD",
                    price = Math.Round((double)item.Product.Price / TyGiaUSD,1).ToString(),
                    quantity = item.Quantity.ToString(),
                    sku = "sku"
                });
            }
            var payer = new Payer { payment_method = "paypal" };

            var redirUrls = new RedirectUrls()
            {
                cancel_url = redirectUrl,
                return_url = redirectUrl
            };

            var details = new Details
            {
                tax = "0",
                shipping = "0",
                subtotal = total.ToString()
            };

            var amount = new Amount()
            {
                currency = "USD",
                total = total.ToString(),
                details = details
            };

            var transactionList = new List<Transaction>
            {
                new Transaction
                {
                    description = "Transaction description.",
                    invoice_number = paypalOrderId.ToString(),
                    amount = amount,
                    item_list = itemList
                }
            };


            this._payment = new Payment
            {
                intent = "sale",
                payer = payer,
                transactions = transactionList,
                redirect_urls = redirUrls
            };


            return this._payment.Create(apiContext);

        }


        public ActionResult ThanhToan()
        {
            List<CartItem> cart = Session[CartSession] as List<CartItem>;
            string endpoint = ConfigurationManager.AppSettings["endpoint"].ToString();
            string partnercode = ConfigurationManager.AppSettings["partnercode"].ToString();
            string accesskey = ConfigurationManager.AppSettings["accesskey"].ToString();
            string serectkey = ConfigurationManager.AppSettings["serectkey"].ToString();
            string orderInfo = "DH" + DateTime.Now.ToString("yyyyMMddHHmmss");
            string returnUrl = ConfigurationManager.AppSettings["returnUrl"].ToString();
            string notifyUrl = ConfigurationManager.AppSettings["notifyUrl"].ToString();

            string amount = cart.Sum(n => n.Total).ToString();
            string orderid = Guid.NewGuid().ToString();
            string requestid = Guid.NewGuid().ToString();
            string extraData = "";

            string rawhash = "partnerCode=" +
                partnercode + "&accessKey=" +
                accesskey + "&requestId=" +
                requestid + "&amount=" +
                amount + "&orderId=" +
                orderid + "&orderInfo=" +
                orderInfo + "&returnUrl=" +
                returnUrl + "&notifyUrl=" +
                notifyUrl + "&extraData=" +
                extraData;
            MoMoSecurity crypto = new MoMoSecurity();
            string signature = crypto.signSHA256(rawhash, serectkey);
            JObject message = new JObject
            {
                { "partnerCode", partnercode },
                { "accessKey", accesskey },
                { "requestId", requestid },
                { "amount", amount },
                { "orderId", orderid },
                { "orderInfo", orderInfo },
                { "returnUrl", returnUrl },
                { "notifyUrl", notifyUrl },
                { "extraData", extraData },
                { "requestType", "captureMoMoWallet" },
                { "signature", signature }
            };
            string reponseFromMomo = PaymentRequest.sendPaymentRequest(endpoint, message.ToString());
            JObject jmessage = JObject.Parse(reponseFromMomo);
            save();
            return Redirect(jmessage.GetValue("payUrl").ToString());

        }
        public ActionResult Success()
        {
            var total = Carts.Sum(p => p.Total);
            var session = (UserLogin)Session[NetCuoiKy.Common.CommonConstant.USER_SESSION];
            string content = System.IO.File.ReadAllText(Server.MapPath("Areas/Client/template/HtmlPage1.html"));
            content = content.Replace("{{CustomerName}}", session.UserName);
            content = content.Replace("{{Phone}}", session.Phone);
            content = content.Replace("{{Email}}", session.Email);
            content = content.Replace("{{Address}}", session.Address);
            content = content.Replace("{{Total}}", total.ToString("N0"));
            var toEmail = ConfigurationManager.AppSettings["ToEmailAddress"].ToString();

            new MailHelper().SendMail(session.Email, "Đơn hàng mới từ OnlineShop", content);
            new MailHelper().SendMail(toEmail, "Đơn hàng mới từ OnlineShop", content);
            Session[CartSession] = null;
            return View();
        }

        public ActionResult Failed()
        {
            return View();
        }
    }
}