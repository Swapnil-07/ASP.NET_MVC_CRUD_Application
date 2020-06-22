using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Web;

namespace Crud_App_MVC.Models
{
    public class DataModel
    {
        public int emp_id { get; set; }

        [DisplayName("Name")]
        public string emp_name { get; set; }

        [DisplayName("Gender")]
        public string gender { get; set; }

        [DisplayName("Is Fulltime")]
        public bool is_fulltime { get; set; }

        [DisplayName("Home/Street Address")]
        public string address { get; set; }

        [DisplayName("Country")]
        public string countryname { get; set; }

        [DisplayName("State")]
        public string statename { get; set; }

        [DisplayName("City")]
        public string city { get; set; }

        [DisplayName("Image")]
        public string image_path { get; set; }

        public HttpPostedFileBase image { get; set; }
    }
}