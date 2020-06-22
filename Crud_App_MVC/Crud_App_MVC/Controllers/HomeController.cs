using Crud_App_MVC.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;

namespace Crud_App_MVC.Controllers
{
    public class HomeController : Controller
    {
        private DbModel db = new DbModel();
        // GET: Home
        public ActionResult Index()
        {
            List<DataModel> dataModels = new List<DataModel>();
            var emps = db.Emps.ToList();
            foreach (Emp emp in emps)
            {
                int CountryId = Convert.ToInt32(emp.country);
                int StateId = Convert.ToInt32(emp.state);
                dataModels.Add(new DataModel()
                {
                    address = emp.address,
                    city = emp.city,
                    countryname = db.Countries.Where(c => c.country_id == CountryId).Select(s => s.country_name).FirstOrDefault(),
                    statename = db.States.Where(c => c.state_id == StateId).Select(s => s.state_name).FirstOrDefault(),
                    emp_id = emp.emp_id,
                    emp_name = emp.emp_name,
                    gender = emp.gender,
                    image = emp.image,
                    image_path = emp.image_path,
                    is_fulltime = emp.is_fulltime
                });
            }
            //dataModel.countries = db.Countries.ToList();
            return View(dataModels);
        }

        public ActionResult Create()
        {
            ViewBag.CountryList = new SelectList(GetCountryList(), "country_id", "country_name");
            return View();
        }

        public List<Country> GetCountryList()
        {
            List<Country> countries = db.Countries.ToList();
            return countries;
        }

        [HttpPost]
        public JsonResult GetStateList(int c_id)
        {
            List<State> states = db.States.Where(x => x.country_id == c_id).ToList();
            return Json(states);
        }


        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "emp_name,gender,is_fulltime, address,country,state, city, image_path, image")]Emp employee)
        {
            if (employee.image != null)
            {
                string path = Server.MapPath("~/App_Data/Images");
                string fileName = Path.GetFileName(employee.image.FileName);
                employee.image_path = Path.Combine(path, fileName);
                employee.image.SaveAs(employee.image_path);

                if (ModelState.IsValid)
                {
                    db.Emps.Add(employee);
                    db.SaveChanges();
                    return RedirectToAction("Index");
                }
            }
            
            return View(employee);
        }

        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Emp emp = db.Emps.Find(id);
            DataModel datamodel = new DataModel();
            if (emp == null)
            {
                return HttpNotFound();
            }
            else
            {

                int CountryId = Convert.ToInt32(emp.country);
                int StateId = Convert.ToInt32(emp.state);
                datamodel = new DataModel()
                {
                    address = emp.address,
                    city = emp.city,
                    countryname = db.Countries.Where(c => c.country_id == CountryId).Select(s => s.country_name).FirstOrDefault(),
                    statename = db.States.Where(c => c.state_id == StateId).Select(s => s.state_name).FirstOrDefault(),
                    emp_id = emp.emp_id,
                    emp_name = emp.emp_name,
                    gender = emp.gender,
                    image = emp.image,
                    image_path = emp.image_path,
                    is_fulltime = emp.is_fulltime
                };

            }
            return View(datamodel);
        }

        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }

            ViewBag.CountryList = new SelectList(GetCountryList(), "country_id", "country_name");

            Emp employee = db.Emps.Find(id);
            if (employee == null)
            {
                return HttpNotFound();
            }
            return View(employee);
        }


        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(Emp employee)
        {
            if(employee.image != null)
            {
                string path = Server.MapPath("~/App_Data/Images");
                string fileName = Path.GetFileName(employee.image.FileName);
                employee.image_path = Path.Combine(path, fileName);
                employee.image.SaveAs(employee.image_path);
            }
            
            if (ModelState.IsValid)
            {
                db.Entry(employee).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(employee);
        }

        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Emp emp = db.Emps.Find(id);
            DataModel dataModel = new DataModel();
            if (emp == null)
            {
                return HttpNotFound();
            }
            else
            {
                int CountryId = Convert.ToInt32(emp.country);
                int StateId = Convert.ToInt32(emp.state);
                dataModel = new DataModel()
                {
                    address = emp.address,
                    city = emp.city,
                    countryname = db.Countries.Where(c => c.country_id == CountryId).Select(s => s.country_name).FirstOrDefault(),
                    statename = db.States.Where(c => c.state_id == StateId).Select(s => s.state_name).FirstOrDefault(),
                    emp_id = emp.emp_id,
                    emp_name = emp.emp_name,
                    gender = emp.gender,
                    image = emp.image,
                    image_path = emp.image_path,
                    is_fulltime = emp.is_fulltime
                };
            }
            return View(dataModel);
        }

        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Emp employee = db.Emps.Find(id);
            db.Emps.Remove(employee);
            db.SaveChanges();
            return RedirectToAction("Index");
        }
    }
}