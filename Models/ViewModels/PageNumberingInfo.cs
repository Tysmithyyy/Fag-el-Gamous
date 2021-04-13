using System;

namespace Fag_el_Gamous.Models.ViewModels
{
    public class PageNumberingInfo
    {
        public int NumItemsPerPage { get; set; }

        public int CurrentPage { get; set; }

        public int TotalNumItems { get; set; }

        public int NumPages => (int)(Math.Ceiling((decimal)TotalNumItems / NumItemsPerPage));
    }
}
