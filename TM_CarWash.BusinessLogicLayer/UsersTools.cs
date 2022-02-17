using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Text;
using System.Threading.Tasks;

using TM_CarWash.DataAccessLayer;
using DTO = TM_CarWash.BusinessLogicLayer.DataTransferObjects;

namespace TM_CarWash.BusinessLogicLayer
{
    public static class UsersTools
    {
        // Id генерится в БД автоматически, поэтому не задаем, это не так удобно как с Guid
        // LastLoginDate тоже не задается здесь
        public static void AddUser(String login, String password)
        {
            TM_CarWashEFContext ctx = EFContextHandler.GetCurrentEFContext();

            // сначала проверим, есть ли уже пользователь с таким именем
            bool userExists = ctx.tblUsers.Any( x => x.Login==login );
            if( userExists )
            {
                throw new Exception("Try to create same user twice. User exists with same login.");
            }

            tblUsers usersRow = new tblUsers()
            {
                Login = login,
                Password = password,
                LastLoginDate = null
            };

            
            ctx.tblUsers.Add(usersRow);
            ctx.SaveChanges();
        }

        public static List<DTO.User> GetAllUsers()
        {
            TM_CarWashEFContext ctx = EFContextHandler.GetCurrentEFContext();

            List <DTO.User> result = ctx.tblUsers.Select
            (
                x => new DTO.User() 
                { 
                    Id = x.Id, 
                    Login = x.Login, 
                    Password = x.Password, 
                    LastLoginDate = x.LastLoginDate  
                }
            ).ToList();

            return result;
        }
    }
}
