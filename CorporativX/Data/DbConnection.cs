using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;

namespace CorporativX.Data
{
    public class DbConnection
    {
        public static string Connection()
        {
            string cs = ConfigurationManager.ConnectionStrings["Corporativx"].ConnectionString;
            return cs;
        }
    }
}