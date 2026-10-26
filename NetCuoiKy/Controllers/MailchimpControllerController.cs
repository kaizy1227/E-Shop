using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MailChimp;
using MailChimp.Helper;
using MailChimp.Lists;
using NetCuoiKy.Models;
using System.Configuration;

namespace NetCuoiKy.Controllers
{
    public class MailchimpControllerController : Controller
    {
        // GET: MailchimpController
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult AddSubcribeUser(FormCollection frc)
        {
            string userEmail = frc["subcribe"];
            MailChimpManager mc = new MailChimpManager(ConfigurationManager.AppSettings["MailchimpApiKey"]);

            //	Create the email parameter
            EmailParameter email = new EmailParameter()
            {
                Email = userEmail
            };

            EmailParameter results = mc.Subscribe("58e8eff755", email);
            Message msg = new Message()
            {
                textMessage = "Thank you :3"
            };

            return Redirect("/subcribe-thanh-cong");
        }

        public ActionResult Success()
        {
            return View();
        }
    }
}
