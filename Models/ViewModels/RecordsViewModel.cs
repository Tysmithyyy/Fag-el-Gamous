using System.Collections.Generic;

namespace Fag_el_Gamous.Models.ViewModels
{
    public class RecordsViewModel
    {
        public List<MainTbl> Records { get; set; }
        public PageNumberingInfo PageNumberingInfo { get; set; }
        public Filters Filters { get; set; }

    }
}
