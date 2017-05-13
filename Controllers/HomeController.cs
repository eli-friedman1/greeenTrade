using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Net;
using System.Net.Mail;

namespace GreenTrade.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }

        public JsonResult SubmitPhoneForm(string emailTo, string name)
        {
            var fromAddress = new MailAddress("efriedman000@gmail.com", "Green Trade");
            var toAddress = new MailAddress(emailTo, "To Name");
            const string fromPassword = "yechihamelech";
            const string subject = "Your request has been received!";
            string body = "Hi" + name + ",\n\nThank you for your interest in blah lblah";

            var smtp = new SmtpClient
            {
                Host = "smtp.gmail.com",
                Port = 587,
                EnableSsl = true,
                DeliveryMethod = SmtpDeliveryMethod.Network,
                UseDefaultCredentials = false,
                Credentials = new NetworkCredential(fromAddress.Address, fromPassword)
            };
            using (var message = new MailMessage(fromAddress, toAddress)
            {
                Subject = subject,
                Body = body
            })
            {
                smtp.Send(message);
            }

            return Json(new { Success = true });
        }

   
    }
}