using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TM_CarWash.DataAccessLayer
{
    public static class EFContextHandler
    {
        private static TM_CarWashEFContext currContext = null;
        public static TM_CarWashEFContext GetCurrentEFContext()
        {
            if( currContext==null )
            {
                currContext = new TM_CarWashEFContext();
            }

            return currContext;
        }
    }
}
