using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Newtonsoft.Json;

namespace login
{
    /// <summary>
    /// LoginHandler 的摘要说明
    /// </summary>
    public class LoginHandler : IHttpHandler
    {
        private DBDataContext db = new DBDataContext();
        private data getdata = new data();
        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            var option=context.Request["option"];
            
            if (option == "post")
            {
                var passport = context.Request["passport"];
                var password = context.Request["password"];
                var S_User_info = getdata.getUserInfo();

                string result = "登陆成功";
                if (S_User_info.LoginName == passport)
                {
                    if (password == S_User_info.Password)
                    {
                        result = JsonConvert.SerializeObject(result);
                        context.Response.Write(result);
                    }
                }
                else
                {
                    result = "登陆失败";
                    context.Response.Write(result);
                }
            }
            else if (option == "infomation")
            {
                var name = context.Request["name"];
                var number = context.Request["number"];
                var product = context.Request["product"];
                S_Infomation s = new S_Infomation();
                s.Name = name;
                s.Number = number;
                s.Product = product;
                db.S_Infomation.InsertOnSubmit(s);
                db.SubmitChanges();
                string result = JsonConvert.SerializeObject("保存成功");
                context.Response.Write(result);       
                
                

            }
            else if(option=="find"){
                var name=context.Request["name"];
                var Information = db.GetTable<S_Infomation>();
                var forms = from f in Information
                            where f.Name == name
                            select f;
                if (forms.Count() != 0)
                {
                    List<S_Infomation> listInfo = new List<S_Infomation>();
                    foreach(var a in forms){
                        S_Infomation s = new S_Infomation();
                        s.Name = a.Name;
                        s.Number = a.Number;
                        s.Product = a.Product;
                        listInfo.Add(s);
                    }
                    string result = JsonConvert.SerializeObject(listInfo);
                    context.Response.Write(result);
                }
                else
                {
                    string result = JsonConvert.SerializeObject("无相关记录");
                    context.Response.Write(result);
                }
            }
            

        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}