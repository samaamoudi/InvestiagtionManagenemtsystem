using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebApplication13.DAL.Repository;

namespace WebApplication13.DAL
{
    public class Student_DAL
    {
        Investigation_management_systemEntities4 _context = new Investigation_management_systemEntities4();

        public List<Viewer> GetAllData()
        {
            try
            {
                var row = (from s in _context.InvestigationCase1
                           join b in _context.CaseTypes on s.Case_Type equals b.C_Case_Type_ID
                           //join y in _context.Case_Status on s.Case_Status equals y.Case_Status_ID
                           select new Viewer
                           {
                               Case_ID = s.Case_ID,
                               Requester_ID = s.Requester_ID,
                               Case_Start_Date = s.Case_Start_Date,
                               Case_Type1 = b.Case_Type,
                               //Case_Status1 = y.Case_Status1
                               //Case_Type = s.Case_Type,
                               Case_Status = s.Case_Status

                               //student_id = s.student_id,
                               //student_age = s.student_age,
                               //student_course = s.student_course,
                               //student_name = s.student_name,
                               //course_name = c.course_name

                           }
                           );
                return row.ToList();

            }

            catch (Exception)
            {
                throw;
            }
        }
    }
}
