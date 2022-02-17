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

    public static class VoteTools
    {
        private static int? _votedListTypeId = null;
        private static int GetVotedListTypeId() // потом вынести в глобальный кэш
        {
            TM_CarWashEFContext ctx = EFContextHandler.GetCurrentEFContext();

            if(_votedListTypeId == null)
            {
                _votedListTypeId = ctx.tblUsers2CarWashListType.Single(x => x.Name == "VoteList").Id;
            }
            return (int)_votedListTypeId;
        }

        public static void Vote(int userId, int carWashId, short userRating)
        {
            if( IsVoteExists(userId, carWashId) )
            {
                throw new Exception("Try to vote twice");
            }
            else
            {
                TM_CarWashEFContext ctx = EFContextHandler.GetCurrentEFContext();

                // получаем предыдущий рейтинг
                tblCarWashLinks currCarWashLink = ctx.tblCarWashLinks.Single(x => x.Id == carWashId);

                // рассчитываем новый
                short currentWashRating = (currCarWashLink.Rate == null) ? (short)0 : (short)currCarWashLink.Rate;
                short newWashRating = (short)((currentWashRating + userRating) / 2);

                // сохраняем рейтинг
                currCarWashLink.Rate = newWashRating;

                // сохраняем признак проголосованности
                int votedListTypeId = GetVotedListTypeId();
                tblUsers2CarWashList ucWListItem = new tblUsers2CarWashList() { id_User = userId, id_CarWashLink = carWashId, id_Users2CarWashListType=votedListTypeId };
                ctx.tblUsers2CarWashList.Add(ucWListItem);

                ctx.SaveChanges();
            }

            // рассчитать и записать общий рейтинг
            // сохранить факт голосования этого пользователя
        }
        public static bool IsVoteExists(int userId, int carWashId)
        {
            TM_CarWashEFContext ctx = EFContextHandler.GetCurrentEFContext();

            int listTypeId = GetVotedListTypeId();
            
            bool result = ctx.tblUsers2CarWashList.Any(x => x.id_Users2CarWashListType==listTypeId && x.id_User == userId && x.id_CarWashLink == carWashId);

            return result;
        }
    }
}
