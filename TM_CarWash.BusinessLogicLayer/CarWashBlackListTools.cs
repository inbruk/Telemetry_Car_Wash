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
    public static class CarWashBlackListTools
    {
        private static int? _blackListTypeId = null;
        private static int GetBlackListTypeId() // потом вынести в глобальный кэш
        {
            TM_CarWashEFContext ctx = EFContextHandler.GetCurrentEFContext();

            if (_blackListTypeId == null)
            {
                _blackListTypeId = ctx.tblUsers2CarWashListType.Single(x => x.Name == "BlackList").Id;
            }
            return (int)_blackListTypeId;
        }


        public static void Add(int userId, int carWashId)
        {
            if (IsExists(userId, carWashId))
            {
                throw new Exception("Try to add existent item of black list");
            }

            if ( CarWashFavoritiesListTools.IsExists(userId, carWashId) )
            {
                CarWashFavoritiesListTools.Remove(userId, carWashId);
            }

            TM_CarWashEFContext ctx = EFContextHandler.GetCurrentEFContext();
            int blackListTypeId = GetBlackListTypeId();
            tblUsers2CarWashList blItem = new tblUsers2CarWashList() { id_Users2CarWashListType = blackListTypeId, id_User = userId, id_CarWashLink = carWashId };
            ctx.tblUsers2CarWashList.Add(blItem);
            ctx.SaveChanges();
        }

        public static void Remove(int userId, int carWashId)
        {
            if( IsExists(userId, carWashId) )
            {
                TM_CarWashEFContext ctx = EFContextHandler.GetCurrentEFContext();
                int blackListTypeId = GetBlackListTypeId();
                tblUsers2CarWashList blItem = ctx.tblUsers2CarWashList.Single(x => x.id_Users2CarWashListType == blackListTypeId && x.id_User == userId && x.id_CarWashLink == carWashId);
                ctx.tblUsers2CarWashList.Remove(blItem);
                ctx.SaveChanges();

            }
            else
            {
                throw new Exception("Try to remove unexistent item of black list");
            }
        }

        public static bool IsExists(int userId, int carWashId)
        {
            TM_CarWashEFContext ctx = EFContextHandler.GetCurrentEFContext();

            int listTypeId = GetBlackListTypeId();

            bool result = ctx.tblUsers2CarWashList.Any(x => x.id_Users2CarWashListType == listTypeId && x.id_User == userId && x.id_CarWashLink == carWashId);

            return result;
        }
    }
}
