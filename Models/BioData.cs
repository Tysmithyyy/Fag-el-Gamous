using System;
using System.Collections.Generic;

// Code scaffolded by EF Core assumes nullable reference types (NRTs) are not used or disabled.
// If you have enabled NRTs for your project, then un-comment the following line:
// #nullable disable

namespace Fag_el_Gamous.Models
{
    public partial class BioData
    {
        public string BurialId { get; set; }
        public string Rack { get; set; }
        public string Bag { get; set; }
        public string Low { get; set; }
        public string High { get; set; }
        public string NS { get; set; }
        public string Low1 { get; set; }
        public string High1 { get; set; }
        public string EW { get; set; }
        public string Area { get; set; }
        public string Burial { get; set; }
        public long? Cluster { get; set; }
        public string Date { get; set; }
        public string PreviouslySampled { get; set; }
        public string Notes { get; set; }
        public string Initials { get; set; }
        public string AdditionalNotes { get; set; }
    }
}
