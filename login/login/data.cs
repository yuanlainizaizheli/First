using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace login
{
    public class data
    {
        private DBDataContext db = new DBDataContext();
        public S_User_Info getUserInfo()
        {
            return db.S_User_Info.Where(i => i.LoginName == "ysq").SingleOrDefault();
        }
    }
}