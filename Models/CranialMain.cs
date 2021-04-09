using System;
using System.Collections.Generic;

// Code scaffolded by EF Core assumes nullable reference types (NRTs) are not used or disabled.
// If you have enabled NRTs for your project, then un-comment the following line:
// #nullable disable

namespace Fag_el_Gamous.Models
{
    public partial class CranialMain
    {
        public double? MaximumCranialLength { get; set; }
        public double? MaximumCranialBreadth { get; set; }
        public double? BasionBregmaHeight { get; set; }
        public double? BasionNasion { get; set; }
        public double? BasionProsthionLength { get; set; }
        public double? BizygomaticDiameter { get; set; }
        public double? NasionProsthion { get; set; }
        public double? MaximumNasalBreadth { get; set; }
        public double? InterorbitalBreadth { get; set; }
        public long LowPairNs { get; set; }
        public long HighPairNs { get; set; }
        public string BurialPositioningNorthSouthNumber { get; set; }
        public string BurialPositioningNSDirection { get; set; }
        public long LowPairEw { get; set; }
        public long HighPairEw { get; set; }
        public string BurialPositioningEastWestNumber { get; set; }
        public string BurialPositioningEWDirection { get; set; }
        public long BurialNumber { get; set; }
        public double? BurialDepth { get; set; }
        public string BurialSubPlotDirection { get; set; }
    }
}
