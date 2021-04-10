using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Fag_el_Gamous.Models.ViewModels
{
    public class RecordsViewModel
    {
        public List<MainTbl> Records { get; set; }
        public PageNumberingInfo PageNumberingInfo { get; set; }

        public string path_and_query { get; set; }

    }
}
