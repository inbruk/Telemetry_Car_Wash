using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.Script.Services;
using System.Web.Script.Serialization;
using System.Web.Services.Protocols;

using TM_CarWash.BusinessLogicLayer;
using DTO = TM_CarWash.BusinessLogicLayer.DataTransferObjects;

namespace TM_CarWash.ServiceLayer
{
    /// <summary>
    /// Summary description for Service1
    /// </summary>
    [WebService(Namespace = "http://microsoft.com/webservices/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    [ScriptService] // To allow this Web Service to be called from script, using ASP.NET AJAX
    public class TM_CarWash_WebService : System.Web.Services.WebService
    {
        // artificial way to force net web service return JSON formatted data
        private void ForceJson(object res)
        {
            JavaScriptSerializer js = new JavaScriptSerializer();
            string str = js.Serialize(res);

            Context.Response.Clear();
            Context.Response.ContentType = "application/json";
            Context.Response.Write(str);
            Context.Response.Flush();
            Context.Response.Close();
        }

        [WebMethod]
        [ScriptMethod(UseHttpGet = true, ResponseFormat = ResponseFormat.Json)]
        public void AddUser(String login, String password)
        {
            try
            {
                UsersTools.AddUser(login, password);
            }
            catch (Exception ex)
            {
                throw new SoapException(ex.Message, SoapException.ClientFaultCode, Context.Request.Url.AbsoluteUri + " .AddUser()", ex);
            }
        }

        [WebMethod]
        [ScriptMethod(UseHttpGet = true, ResponseFormat = ResponseFormat.Json)]
        public 
            // SOAP for testing variant: List<DTO.User> 
            void // JSON variant for android usage
            GetAllUsers()
        {
            try
            {
                List<DTO.User> result = UsersTools.GetAllUsers();

                // SOAP for testing variant: return result;
                ForceJson(result); // JSON variant for android usage
            }
            catch (Exception ex)
            {
                throw new SoapException(ex.Message, SoapException.ClientFaultCode, Context.Request.Url.AbsoluteUri + " .GetAllUsers()", ex);
            }
        }

        [WebMethod]
        [ScriptMethod(UseHttpGet = true, ResponseFormat = ResponseFormat.Json)]
        public void AddToCarWashBlackList(int userId, int carWashId)
        {
            try
            {
                CarWashBlackListTools.Add(userId, carWashId);
            }
            catch (Exception ex)
            {
                throw new SoapException(ex.Message, SoapException.ClientFaultCode, Context.Request.Url.AbsoluteUri + " .AddToCarWashBlackList()", ex);
            }
        }

        [WebMethod]
        [ScriptMethod(UseHttpGet = true, ResponseFormat = ResponseFormat.Json)]
        public void RemoveFromCarWashBlackList(int userId, int carWashId)
        {
            try
            {
                CarWashBlackListTools.Remove(userId, carWashId);
            }
            catch (Exception ex)
            {
                throw new SoapException(ex.Message, SoapException.ClientFaultCode, Context.Request.Url.AbsoluteUri + " .RemoveFromCarWashBlackList()", ex);
            }
        }

        [WebMethod]
        [ScriptMethod(UseHttpGet = true, ResponseFormat = ResponseFormat.Json)]
        public 
            // SOAP for testing variant: bool 
            void // JSON variant for android usage
            IsExistsInCarWashBlackList(int userId, int carWashId)
        {
            try
            {
                bool result = CarWashBlackListTools.IsExists(userId, carWashId);

                // SOAP for testing variant: return result;
                ForceJson(result); // JSON variant for android usage
            }
            catch (Exception ex)
            {
                throw new SoapException(ex.Message, SoapException.ClientFaultCode, Context.Request.Url.AbsoluteUri + " .IsExistsInCarWashBlackList()", ex);
            }
        }

        [WebMethod]
        [ScriptMethod(UseHttpGet = true, ResponseFormat = ResponseFormat.Json)]
        public void AddToCarWashFavoritiesList(int userId, int carWashId)
        {
            try
            {
            CarWashFavoritiesListTools.Add(userId, carWashId);
            }
            catch (Exception ex)
            {
                throw new SoapException(ex.Message, SoapException.ClientFaultCode, Context.Request.Url.AbsoluteUri + " .AddToCarWashFavoritiesList()", ex);
            }
        }

        [WebMethod]
        [ScriptMethod(UseHttpGet = true, ResponseFormat = ResponseFormat.Json)]
        public void RemoveFromCarWashFavoritiesList(int userId, int carWashId)
        {
            try
            {
            CarWashFavoritiesListTools.Remove(userId, carWashId);
            }
            catch (Exception ex)
            {
                throw new SoapException(ex.Message, SoapException.ClientFaultCode, Context.Request.Url.AbsoluteUri + " .RemoveFromCarWashFavoritiesList()", ex);
            }
        }

        [WebMethod]
        [ScriptMethod(UseHttpGet = true, ResponseFormat = ResponseFormat.Json)]
        public
            // SOAP for testing variant: bool 
            void // JSON variant for android usage           
            IsExistsInCarWashFavoritiesList(int userId, int carWashId)
        {
            try
            {
                bool result = CarWashFavoritiesListTools.IsExists(userId, carWashId);

                // SOAP for testing variant: return result;
                ForceJson(result); // JSON variant for android usage
            }
            catch (Exception ex)
            {
                throw new SoapException(ex.Message, SoapException.ClientFaultCode, Context.Request.Url.AbsoluteUri + " .IsExistsInCarWashFavoritiesList()", ex);
            }
        }

        [WebMethod]
        [ScriptMethod(UseHttpGet = true, ResponseFormat = ResponseFormat.Json)]
        public void UserVoteForCarWash(int userId, int carWashId, short userRating)
        {
            try
            {
                VoteTools.Vote(userId, carWashId, userRating);
            }
            catch (Exception ex)
            {
                throw new SoapException(ex.Message, SoapException.ClientFaultCode, Context.Request.Url.AbsoluteUri + " .UserVoteForCarWash()", ex);
            }
        }

        [WebMethod]
        [ScriptMethod(UseHttpGet = true, ResponseFormat = ResponseFormat.Json)]
        public
            // SOAP for testing variant: bool 
            void // JSON variant for android usage             
            IsUserForCarWashVoteExists(int userId, int carWashId)
        {
            try
            {
                bool result = VoteTools.IsVoteExists(userId, carWashId);

                // SOAP for testing variant: return result;
                ForceJson(result); // JSON variant for android usage
            }
            catch (Exception ex)
            {
                throw new SoapException(ex.Message, SoapException.ClientFaultCode, Context.Request.Url.AbsoluteUri + " .IsUserForCarWashVoteExists()", ex);
            }
        }
    }
}