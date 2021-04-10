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
        public long? LowPairNs { get; set; }
        public long? HighPairNs { get; set; }
        public long? LowPairEw { get; set; }
        public long? HighPairEw { get; set; }
        public string BurialSubplot { get; set; }
        public double? BurialDepth { get; set; }
        public double? SouthToHead { get; set; }
        public double? SouthToFeet { get; set; }
        public double? WestToHead { get; set; }
        public double? WestToFeet { get; set; }
        public string BurialSituation { get; set; }
        public long? LengthOfRemains { get; set; }
        public long? BurialNumber { get; set; }
        public long? SampleNumber { get; set; }
        public string GenderGe { get; set; }
        public double? GeFunctionTotal { get; set; }
        public string GenderBodyCol { get; set; }
        public string BasilarSuture { get; set; }
        public long? VentralArc { get; set; }
        public long? SubpubicAngle { get; set; }
        public long? SciaticNotch { get; set; }
        public long? PubicBone { get; set; }
        public long? PreaurSulcus { get; set; }
        public long? MedialIpRamus { get; set; }
        public long? DorsalPitting { get; set; }
        public string ForemanMagnum { get; set; }
        public double? FemurHead { get; set; }
        public double? HumerusHead { get; set; }
        public string Osteophytosis { get; set; }
        public string PubicSymphysis { get; set; }
        public double? FemurLength { get; set; }
        public double? HumerusLength { get; set; }
        public double? TibiaLength { get; set; }
        public long? Robust { get; set; }
        public long? SupraorbitalRidges { get; set; }
        public long? OrbitEdge { get; set; }
        public long? ParietalBossing { get; set; }
        public long? Gonian { get; set; }
        public long? NuchalCrest { get; set; }
        public long? ZygomaticCrest { get; set; }
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
        public long? HairTaken { get; set; }
        public long? SoftTissueTaken { get; set; }
        public long? BoneTaken { get; set; }
        public long? ToothTaken { get; set; }
        public long? TextileTaken { get; set; }
        public string DescriptionOfTaken { get; set; }
        public long? ArtifactFound { get; set; }
        public double? EstimateAge { get; set; }
        public double? EstimateLivingStature { get; set; }
        public string ToothAttrition { get; set; }
        public string ToothEruption { get; set; }
        public string PathologyAnomalies { get; set; }
        public string EpiphysealUnion { get; set; }
        public long? YearFound { get; set; }
        public string MonthFound { get; set; }
        public long? DayFound { get; set; }
        public string HeadDirection { get; set; }
    }
}
