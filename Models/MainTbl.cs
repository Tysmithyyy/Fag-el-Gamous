using System;
using System.Collections.Generic;

// Code scaffolded by EF Core assumes nullable reference types (NRTs) are not used or disabled.
// If you have enabled NRTs for your project, then un-comment the following line:
// #nullable disable

namespace Fag_el_Gamous.Models
{
    public partial class MainTbl
    {
        public string BurialId { get; set; }
        public string BurialLocationNs { get; set; }
        public string BurialLocationEw { get; set; }
        public int? LowPairNs { get; set; }
        public int? HighPairNs { get; set; }
        public int? LowPairEw { get; set; }
        public int? HighPairEw { get; set; }
        public string BurialSubplot { get; set; }
        public double? BurialDepth { get; set; }
        public double? SouthToHead { get; set; }
        public double? SouthToFeet { get; set; }
        public double? WestToHead { get; set; }
        public double? WestToFeet { get; set; }
        public string BurialSituation { get; set; }
        public int? LengthOfRemains { get; set; }
        public int? BurialNumber { get; set; }
        public int? SampleNumber { get; set; }
        public string GenderGe { get; set; }
        public double? GeFunctionTotal { get; set; }
        public string GenderBodyCol { get; set; }
        public string BasilarSuture { get; set; }
        public int? VentralArc { get; set; }
        public int? SubpubicAngle { get; set; }
        public int? SciaticNotch { get; set; }
        public int? PubicBone { get; set; }
        public int? PreaurSulcus { get; set; }
        public int? MedialIpRamus { get; set; }
        public int? DorsalPitting { get; set; }
        public string ForemanMagnum { get; set; }
        public double? FemurHead { get; set; }
        public double? HumerusHead { get; set; }
        public string Osteophytosis { get; set; }
        public string PubicSymphysis { get; set; }
        public double? FemurLength { get; set; }
        public double? HumerusLength { get; set; }
        public double? TibiaLength { get; set; }
        public int? Robust { get; set; }
        public int? SupraorbitalRidges { get; set; }
        public int? OrbitEdge { get; set; }
        public int? ParietalBossing { get; set; }
        public int? Gonian { get; set; }
        public int? NuchalCrest { get; set; }
        public int? ZygomaticCrest { get; set; }
        public string CranialSuture { get; set; }
        public double? MaximumCranialLength { get; set; }
        public double? MaximumCranialBreadth { get; set; }
        public double? BasionBregmaHeight { get; set; }
        public double? BasionNasion { get; set; }
        public double? BasionProsthionLength { get; set; }
        public double? BizygomaticDiameter { get; set; }
        public double? NasionProsthion { get; set; }
        public double? MaximumNasalBreadth { get; set; }
        public double? InterorbitalBreadth { get; set; }
        public string ArtifactsDescription { get; set; }
        public string HairColor { get; set; }
        public string PreservationIndex { get; set; }
        public int? HairTaken { get; set; }
        public int? SoftTissueTaken { get; set; }
        public int? BoneTaken { get; set; }
        public int? ToothTaken { get; set; }
        public int? TextileTaken { get; set; }
        public string DescriptionOfTaken { get; set; }
        public int? ArtifactFound { get; set; }
        public double? EstimateAge { get; set; }
        public double? EstimateLivingStature { get; set; }
        public string ToothAttrition { get; set; }
        public string ToothEruption { get; set; }
        public string PathologyAnomalies { get; set; }
        public string EpiphysealUnion { get; set; }
        public int? YearFound { get; set; }
        public string MonthFound { get; set; }
        public int? DayFound { get; set; }
        public string HeadDirection { get; set; }
    }
}
