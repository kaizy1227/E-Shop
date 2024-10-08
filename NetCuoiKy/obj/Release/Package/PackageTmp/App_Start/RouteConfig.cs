﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace NetCuoiKy
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");

            routes.MapRoute(
                name: "subcribe",
                url: "subcribe-thanh-cong",
                defaults: new { controller = "MailchimpController", action = "Success", id = UrlParameter.Optional },
                namespaces: new[] { "NetCuoiKy.Controllers" }
            );

            routes.MapRoute(
                name: "Robots.txt",
                url: "robots.txt",
                defaults: new { controller = "Home", action = "Robots", id = UrlParameter.Optional },
                namespaces: new[] { "NetCuoiKy.Controllers" }
            );

            routes.MapRoute(
                  "SiteMap_route", // Route name
                  "sitemap.xml", // URL with parameters
                 defaults: new { controller = "Home", action = "SitemapXml", id = UrlParameter.Optional },
                namespaces: new[] { "NetCuoiKy.Controllers" }
              );

            routes.MapRoute(
                name: "Product Category",
                url: "san-pham/{metatilte}-{cateid}",
                defaults: new { controller = "Product", action = "Category", id = UrlParameter.Optional },
                namespaces: new[] { "NetCuoiKy.Controllers" }
            );

            routes.MapRoute(
               name: "Product Detail",
               url: "chi-tiet/{id}/{metatilte}",
               defaults: new { controller = "Product", action = "Detail", id = UrlParameter.Optional },
               namespaces: new[] { "NetCuoiKy.Controllers" }

           );



            routes.MapRoute(
                name: "About",
                url: "gioi-thieu",
                defaults: new { controller = "About", action = "Index", id = UrlParameter.Optional },
                namespaces: new[] { "NetCuoiKy.Controllers" }
                );

            routes.MapRoute(
           name: "Contact",
           url: "lien-he",
           defaults: new { controller = "Contact", action = "Index", id = UrlParameter.Optional },
           namespaces: new[] { "NetCuoiKy.Controllers" }
       );
            routes.MapRoute(
               name: "Register",
               url: "dang-ky",
               defaults: new { controller = "User", action = "Register", id = UrlParameter.Optional },
               namespaces: new[] { "NetCuoiKy.Controllers" }
           );

            routes.MapRoute(
               name: "Login",
               url: "dang-nhap",
               defaults: new { controller = "User", action = "Login", id = UrlParameter.Optional },
               namespaces: new[] { "NetCuoiKy.Controllers" }
           );


            routes.MapRoute(
               name: "Cart",
               url: "gio-hang",
               defaults: new { controller = "Cart", action = "Index", id = UrlParameter.Optional },
               namespaces: new[] { "NetCuoiKy.Controllers" }
           );
            routes.MapRoute(
               name: "Payment",
               url: "thanh-toan",
               defaults: new { controller = "Cart", action = "Payment", id = UrlParameter.Optional },
               namespaces: new[] { "NetCuoiKy.Controllers" }
           );
            routes.MapRoute(
                name: "Add Cart",
                url: "them-gio-hang",
                defaults: new { controller = "Cart", action = "AddItem", id = UrlParameter.Optional },
                namespaces: new[] { "NetCuoiKy.Controllers" }
            );
            routes.MapRoute(
               name: "Payment Success",
               url: "hoan-thanh",
               defaults: new { controller = "Cart", action = "Success", id = UrlParameter.Optional },
               namespaces: new[] { "NetCuoiKy.Controllers" }
           );
            routes.MapRoute(
             name: "Payment failed",
             url: "loi-thanh-toan",
             defaults: new { controller = "Cart", action = "Failed", id = UrlParameter.Optional },
             namespaces: new[] { "NetCuoiKy.Controllers" }
         );
            routes.MapRoute(
               name: "Default",
               url: "{controller}/{action}/{id}",
               defaults: new { controller = "Home", action = "Index", id = UrlParameter.Optional },
               namespaces: new[] { "NetCuoiKy.Controllers" }
           );
        }
    }
}
