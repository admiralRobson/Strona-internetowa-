using System.Web;
using System.Web.Mvc;

namespace Strona_zaliczenie_MAT2_122121
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
        }
    }
}
