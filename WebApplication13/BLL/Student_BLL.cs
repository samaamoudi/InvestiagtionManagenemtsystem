using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebApplication13.DAL;
using WebApplication13.DAL.Repository;

namespace WebApplication13.BLL
{
    public class Student_BLL
    {
        Student_DAL objStudent_DAL = new Student_DAL();

        public List<Viewer> GetAllData()
        {
            return objStudent_DAL.GetAllData();

        }
    }
}

