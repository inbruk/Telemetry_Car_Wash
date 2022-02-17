using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Services;
using System.Web.Script.Services;
using System.Web.Services.Protocols;

using TM_CarWash.ServiceTester.CarWashWebService;

namespace TM_CarWash.ServiceTester
{
    // ВНИМАНИЕ ТЕСТ РАБОТАЕТ ПОД SOAP !!! (Также возможно надо заменить иды в середине main, там видно)
    // ПОД JSON ДАЖЕ НЕ КОМПИЛИТСЯ, ТАК КАК МЕНЯЕТСЯ ИНТЕРФЕЙС СЕРВИСА (МЕТОДЫ ИМЕЮТ ДР. ПАРАМЕТРЫ И ВОЗВР. ЗНАЧЕНИЯ)
    class Program 
    {
        private static void ShowException(SoapException e)
        {
            String message = e.Message.Substring(0, e.Message.IndexOf("--->"));
            message = message.Substring(message.IndexOf(":") + 1);

            Console.Write(" cause exception in " + e.Actor + " => " + message); 
        }
        private static void ShowComplete()
        {
            Console.Write(" Complete. Press any key to continue.");
            Console.ReadKey();
        }

        // есть очень большая хитрость  !!! при добавлении сервис референс надо жать мелкую кнопку внизу Add Web Service reference
        // иначе ссылка будет как бы на WCF и пудет приходить Fault Exception не корректно, вместо soap exception
        static void Main(string[] args)
        {
            TM_CarWash_WebService wsClient = new TM_CarWash_WebService();
            User[] dbUsers = null;

            try //-------------------------------------------------------------------------------------------------------------------------
            {
                Console.WriteLine();
                Console.WriteLine();
                Console.Write(" wsClient.AddUser(\"testuser1\", \"password1\") :");
                wsClient.AddUser("testuser1", "password1");
            }
            catch (SoapException se) 
            {
                ShowException(se);
            }
            ShowComplete();

            try //-------------------------------------------------------------------------------------------------------------------------
            {
                Console.WriteLine();
                Console.WriteLine();
                Console.Write(" wsClient.AddUser(\"testuser2\", \"password2\") :");
                wsClient.AddUser("testuser2", "password2");
            }
            catch (SoapException e)
            {
                ShowException(e);
            }
            ShowComplete();

            try //-------------------------------------------------------------------------------------------------------------------------
            {
                Console.WriteLine();
                Console.WriteLine();
                Console.Write(" wsClient.AddUser(\"testuser1\", \"password3\") :");
                wsClient.AddUser("testuser1", "password3");
            }
            catch (SoapException e)
            {
                ShowException(e);
            }
            ShowComplete();

            try //-------------------------------------------------------------------------------------------------------------------------
            {
                Console.WriteLine();
                Console.WriteLine();
                Console.Write(" wsClient.GetAllUsers() :");
                
                dbUsers = wsClient.GetAllUsers();
                Console.WriteLine();
                foreach(User currUser in dbUsers)
                {
                    Console.WriteLine(currUser.Id + ", " + currUser.Login + ", " + currUser.Password + ", " + currUser.LastLoginDate);
                }
            }
            catch (SoapException e)
            {
                ShowException(e);
            }
            ShowComplete();


            int testUser1Id = dbUsers.ToList<User>().Single(x => x.Login == "testuser1").Id;
            int testUser2Id = dbUsers.ToList<User>().Single(x => x.Login == "testuser2").Id;

            // ЭТИ ИДЫ МОГУТ БЫТЬ ДРУГИМИ ПРИ ДРУГОМ ПАБЛИШЕ ПРОЕКТА БД !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
            // ПЕРЕД ТЕСТИРОВАНИЕМ ПРОВЕРИТЬ

            int carWashLink1 = 13;
            int carWashLink2 = 14;
            int carWashLink5 = 15;
            int carWashLink8 = 16;
            int carWashLink9 = 17;

            // ЭТИ ИДЫ МОГУТ БЫТЬ ДРУГИМИ ПРИ ДРУГОМ ПАБЛИШЕ ПРОЕКТА БД !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
            // ПЕРЕД ТЕСТИРОВАНИЕМ ПРОВЕРИТЬ

            try //-------------------------------------------------------------------------------------------------------------------------
            {
                Console.WriteLine();
                Console.WriteLine();
                Console.Write(" AddToCarWashBlackList :");

                wsClient.AddToCarWashBlackList(testUser1Id, carWashLink1);
                wsClient.AddToCarWashBlackList(testUser1Id, carWashLink2);
                wsClient.AddToCarWashBlackList(testUser1Id, carWashLink5);

                wsClient.AddToCarWashBlackList(testUser2Id, carWashLink5);
                wsClient.AddToCarWashBlackList(testUser2Id, carWashLink8);
                wsClient.AddToCarWashBlackList(testUser2Id, carWashLink9);
            }
            catch (SoapException e)
            {
                ShowException(e);
            }
            ShowComplete();

            try //-------------------------------------------------------------------------------------------------------------------------
            {
                Console.WriteLine();
                Console.WriteLine();
                Console.Write(" AddToCarWashFavoritiesList :");

                wsClient.AddToCarWashFavoritiesList(testUser1Id, carWashLink5); // transfer 
                wsClient.AddToCarWashFavoritiesList(testUser1Id, carWashLink8);
                wsClient.AddToCarWashFavoritiesList(testUser1Id, carWashLink9);

                wsClient.AddToCarWashFavoritiesList(testUser2Id, carWashLink5); // transfer
                wsClient.AddToCarWashFavoritiesList(testUser2Id, carWashLink1);
                wsClient.AddToCarWashFavoritiesList(testUser2Id, carWashLink2);

            }
            catch (SoapException e)
            {
                ShowException(e);
            }
            ShowComplete();


            try //-------------------------------------------------------------------------------------------------------------------------
            {
                Console.WriteLine();
                Console.WriteLine();
                Console.Write(" AddToCarWashBlackList check back transfer:");

                wsClient.AddToCarWashBlackList(testUser1Id, carWashLink5); // transfer
                wsClient.AddToCarWashBlackList(testUser2Id, carWashLink5); // transfer
            }
            catch (SoapException e)
            {
                ShowException(e);
            }
            ShowComplete();

            try //-------------------------------------------------------------------------------------------------------------------------
            {
                Console.WriteLine();
                Console.WriteLine();
                Console.Write(" AddToCarWashBlackList check double adding to lists:");

                wsClient.AddToCarWashBlackList(testUser1Id, carWashLink5);         //exception
            }
            catch (SoapException e)
            {
                ShowException(e);
            }
            ShowComplete();

            try //-------------------------------------------------------------------------------------------------------------------------
            {
                Console.WriteLine();
                Console.WriteLine();
                Console.Write(" Vote :");

                wsClient.UserVoteForCarWash(testUser1Id, carWashLink1, 2);
                wsClient.UserVoteForCarWash(testUser1Id, carWashLink2, 4);

                wsClient.UserVoteForCarWash(testUser2Id, carWashLink8, 6);
                wsClient.UserVoteForCarWash(testUser2Id, carWashLink9, 8);
            }
            catch (SoapException e)
            {
                ShowException(e);
            }
            ShowComplete();

            try //-------------------------------------------------------------------------------------------------------------------------
            {
                Console.WriteLine();
                Console.WriteLine();
                Console.Write(" Check double voting :");

                wsClient.UserVoteForCarWash(testUser1Id, carWashLink1, 1); // exception
            }
            catch (SoapException e)
            {
                ShowException(e);
            }
            ShowComplete();
        }
    }
}
