using GTACarpool.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace GTACarpool.Controllers
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
        #region Initdata
        /// <summary>
        /// Initail Car Maker Data
        /// </summary>
        /// <returns></returns>
        public ActionResult Initdata()
        {
            using (var db = new CarpoolSystemEntities())
            {
                string[] makes = { "Acura", "Aston Martin", "Audi", "Bentley", "BMW", "Buick", "Cadillac", "Chevrolet", "Chrysler", "Dodge", "Ferrari", "Ford", "GMC", "Honda", "Hummer", "Hyundai", "Infiniti", "Jaguar", "Jeep", "Kia", "Lamborghini", "Land Rover", "Lexus", "Lincoln", "Lotus", "Maserati", "Maybach", "Mazda", "Mercedes-Benz", "Mercury", "Mini", "Mitsubishi", "Nissan", "Pontiac", "Porsche", "Rolls-Royce", "Smart", "Subaru", "Suzuki", "Tesla", "Toyota", "Volkswagen", "Vlkswagen", "Volvo", };
                foreach (var item in makes)
                {
                    var newModel = db.CarMakes.Create();
                    newModel.Manufactory = item;
                    db.CarMakes.Add(newModel);
                    db.SaveChanges();
                }
            }
            //DBCC CHECKIDENT (orders, RESEED, 0)
            return View();
        }
        #endregion
    }
}