using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

// Code scaffolded by EF Core assumes nullable reference types (NRTs) are not used or disabled.
// If you have enabled NRTs for your project, then un-comment the following line:
// #nullable disable

namespace Fag_el_Gamous.Models
{
    public partial class gamous2Context : DbContext
    {
        public gamous2Context()
        {
        }

        public gamous2Context(DbContextOptions<gamous2Context> options)
            : base(options)
        {
        }

        public virtual DbSet<BioData> BioData { get; set; }
        public virtual DbSet<C14> C14 { get; set; }
        public virtual DbSet<FagElGamousAll> FagElGamousAll { get; set; }
        public virtual DbSet<MainTbl> MainTbl { get; set; }
        public virtual DbSet<SourceInfo> SourceInfo { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
//To protect potentially sensitive information in your connection string, you should move it out of source code. See http://go.microsoft.com/fwlink/?LinkId=723263 for guidance on storing connection strings.
                optionsBuilder.UseSqlServer("Data Source=aam7gxxxne51of.chjpza0zaptm.us-east-1.rds.amazonaws.com,1433;Initial Catalog=gamous2;User ID=admin;Password=Admin!11;");
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<BioData>(entity =>
            {
                entity.HasNoKey();

                entity.Property(e => e.AdditionalNotes)
                    .HasColumnName("Additional Notes")
                    .IsUnicode(false);

                entity.Property(e => e.Area).IsUnicode(false);

                entity.Property(e => e.Bag)
                    .HasColumnName("Bag #")
                    .IsUnicode(false);

                entity.Property(e => e.Burial)
                    .HasColumnName("Burial #")
                    .IsUnicode(false);

                entity.Property(e => e.BurialId)
                    .HasColumnName("Burial ID")
                    .IsUnicode(false);

                entity.Property(e => e.Cluster).HasColumnName("Cluster #");

                entity.Property(e => e.Date).IsUnicode(false);

                entity.Property(e => e.EW)
                    .HasColumnName("E/W")
                    .IsUnicode(false);

                entity.Property(e => e.High)
                    .HasColumnName("High #")
                    .IsUnicode(false);

                entity.Property(e => e.High1)
                    .HasColumnName("High #_1")
                    .IsUnicode(false);

                entity.Property(e => e.Initials).IsUnicode(false);

                entity.Property(e => e.Low)
                    .HasColumnName("Low #")
                    .IsUnicode(false);

                entity.Property(e => e.Low1)
                    .HasColumnName("Low #_1")
                    .IsUnicode(false);

                entity.Property(e => e.NS)
                    .HasColumnName("N/S")
                    .IsUnicode(false);

                entity.Property(e => e.Notes).IsUnicode(false);

                entity.Property(e => e.PreviouslySampled)
                    .HasColumnName("Previously Sampled")
                    .IsUnicode(false);

                entity.Property(e => e.Rack)
                    .HasColumnName("Rack #")
                    .IsUnicode(false);
            });

            modelBuilder.Entity<C14>(entity =>
            {
                entity.HasNoKey();

                entity.Property(e => e.AdditionalNote)
                    .HasColumnName("Additional Note")
                    .IsUnicode(false);

                entity.Property(e => e.Area).HasColumnName("AREA");

                entity.Property(e => e.Burial).HasColumnName("Burial#");

                entity.Property(e => e.BurialId)
                    .HasColumnName("Burial Id")
                    .IsUnicode(false);

                entity.Property(e => e.C14Sample2017).HasColumnName("C14 Sample 2017");

                entity.Property(e => e.Calibrated95CalendarDateAvg)
                    .HasColumnName("Calibrated 95% Calendar Date AVG")
                    .IsUnicode(false);

                entity.Property(e => e.Calibrated95CalendarDateMax).HasColumnName("Calibrated 95% Calendar Date MAX");

                entity.Property(e => e.Calibrated95CalendarDateMin).HasColumnName("Calibrated 95% Calendar Date MIN");

                entity.Property(e => e.Calibrated95CalendarDateSpan).HasColumnName("Calibrated 95% Calendar Date SPAN");

                entity.Property(e => e.Category).IsUnicode(false);

                entity.Property(e => e.Conventional14cAgeBp).HasColumnName("Conventional 14C age BP");

                entity.Property(e => e.Description).IsUnicode(false);

                entity.Property(e => e.EW)
                    .HasColumnName("E/W")
                    .IsUnicode(false);

                entity.Property(e => e.EWPair).HasColumnName("E/W Pair");

                entity.Property(e => e.Location).IsUnicode(false);

                entity.Property(e => e.NS)
                    .HasColumnName("N/S")
                    .IsUnicode(false);

                entity.Property(e => e.NSPair).HasColumnName("N/S Pair");

                entity.Property(e => e.Notes).IsUnicode(false);

                entity.Property(e => e.QuestionS)
                    .HasColumnName("Question(s)")
                    .IsUnicode(false);

                entity.Property(e => e.Rack1).HasColumnName("Rack_1");

                entity.Property(e => e.SizeMl).HasColumnName("Size (ml)");

                entity.Property(e => e.Square).IsUnicode(false);

                entity.Property(e => e.Tube).HasColumnName("TUBE#");

                entity.Property(e => e._14cCalendarDate).HasColumnName("14C Calendar Date");
            });

            modelBuilder.Entity<FagElGamousAll>(entity =>
            {
                entity.HasNoKey();

                entity.ToTable("Fag_el_Gamous_All");

                entity.Property(e => e.AgeCodeSingle)
                    .HasColumnName("Age Code SINGLE")
                    .IsUnicode(false);

                entity.Property(e => e.AgeSkull2018)
                    .HasColumnName("Age _(Skull; _2018)")
                    .IsUnicode(false);

                entity.Property(e => e.ArcGis).HasColumnName("ARC GIS");

                entity.Property(e => e.AreaHillBurials).HasColumnName("Area (Hill burials)");

                entity.Property(e => e.BodyAnalysis).HasColumnName("Body Analysis");

                entity.Property(e => e.BurialAdultChild)
                    .HasColumnName("burial adult child")
                    .IsUnicode(false);

                entity.Property(e => e.BurialAreaEastOrWest).HasColumnName("burial area east or west");

                entity.Property(e => e.BurialAreaNorthOrSouth)
                    .HasColumnName("burial area North or South")
                    .IsUnicode(false);

                entity.Property(e => e.BurialDepth)
                    .HasColumnName("burial depth")
                    .IsUnicode(false);

                entity.Property(e => e.BurialDirection1)
                    .HasColumnName("burial direction 1")
                    .IsUnicode(false);

                entity.Property(e => e.BurialDirection2)
                    .HasColumnName("Burial Direction 2")
                    .IsUnicode(false);

                entity.Property(e => e.BurialId)
                    .HasColumnName("Burial ID")
                    .IsUnicode(false);

                entity.Property(e => e.BurialNumber)
                    .HasColumnName("Burial Number")
                    .IsUnicode(false);

                entity.Property(e => e.BurialPreservation)
                    .HasColumnName("burial preservation")
                    .IsUnicode(false);

                entity.Property(e => e.BurialSouthToFeet)
                    .HasColumnName("burial south to feet")
                    .IsUnicode(false);

                entity.Property(e => e.BurialSouthToHead)
                    .HasColumnName("burial south to head")
                    .IsUnicode(false);

                entity.Property(e => e.BurialWestToFeet)
                    .HasColumnName("burial west to feet")
                    .IsUnicode(false);

                entity.Property(e => e.BurialWestToHead)
                    .HasColumnName("burial west to head")
                    .IsUnicode(false);

                entity.Property(e => e.BurialWrapping)
                    .HasColumnName("burial wrapping")
                    .IsUnicode(false);

                entity.Property(e => e.Burialageatdeath)
                    .HasColumnName("burialageatdeath")
                    .IsUnicode(false);

                entity.Property(e => e.Burialagemethod)
                    .HasColumnName("burialagemethod")
                    .IsUnicode(false);

                entity.Property(e => e.Burialgendermethod)
                    .HasColumnName("burialgendermethod")
                    .IsUnicode(false);

                entity.Property(e => e.Burialhaircolor)
                    .HasColumnName("burialhaircolor")
                    .IsUnicode(false);

                entity.Property(e => e.Burialnors)
                    .HasColumnName("burialnors")
                    .IsUnicode(false);

                entity.Property(e => e.Burialsampletaken)
                    .HasColumnName("burialsampletaken")
                    .IsUnicode(false);

                entity.Property(e => e.Burialxeorw)
                    .HasColumnName("burialxeorw")
                    .IsUnicode(false);

                entity.Property(e => e.ButtonOsteoma)
                    .HasColumnName("Button Osteoma")
                    .IsUnicode(false);

                entity.Property(e => e.ByuSample)
                    .HasColumnName("BYU Sample")
                    .IsUnicode(false);

                entity.Property(e => e.Cluster).IsUnicode(false);

                entity.Property(e => e.CribraOrbitala)
                    .HasColumnName("Cribra Orbitala")
                    .IsUnicode(false);

                entity.Property(e => e.DateExcavated).HasColumnName("Date Excavated");

                entity.Property(e => e.DateOnSkull).HasColumnName("Date on Skull");

                entity.Property(e => e.FaceBundle)
                    .HasColumnName("Face Bundle")
                    .IsUnicode(false);

                entity.Property(e => e.FieldBook)
                    .HasColumnName("Field Book")
                    .IsUnicode(false);

                entity.Property(e => e.FieldBookPageNumber)
                    .HasColumnName("Field Book Page Number")
                    .IsUnicode(false);

                entity.Property(e => e.GenderCode)
                    .HasColumnName("Gender Code")
                    .IsUnicode(false);

                entity.Property(e => e.Goods).IsUnicode(false);

                entity.Property(e => e.HairColorCode)
                    .HasColumnName("Hair Color Code")
                    .IsUnicode(false);

                entity.Property(e => e.InitialsOfDataEntryChecker)
                    .HasColumnName("Initials of Data Entry Checker")
                    .IsUnicode(false);

                entity.Property(e => e.InitialsOfDataEntryExpert)
                    .HasColumnName("Initials of Data Entry Expert")
                    .IsUnicode(false);

                entity.Property(e => e.Length)
                    .HasColumnName("length")
                    .IsUnicode(false);

                entity.Property(e => e.LengthCm)
                    .HasColumnName("length(CM)")
                    .IsUnicode(false);

                entity.Property(e => e.LengthM)
                    .HasColumnName("length(M)")
                    .IsUnicode(false);

                entity.Property(e => e.LinearHypoplasiaEnamel)
                    .HasColumnName("Linear Hypoplasia Enamel")
                    .IsUnicode(false);

                entity.Property(e => e.MetopicSuture)
                    .HasColumnName("Metopic Suture")
                    .IsUnicode(false);

                entity.Property(e => e.MonthExcavated)
                    .HasColumnName("Month Excavated")
                    .IsUnicode(false);

                entity.Property(e => e.MonthOnSkull)
                    .HasColumnName("Month on skull")
                    .IsUnicode(false);

                entity.Property(e => e.Note1)
                    .HasColumnName("Note 1")
                    .IsUnicode(false);

                entity.Property(e => e.Note10)
                    .HasColumnName("Note 10")
                    .IsUnicode(false);

                entity.Property(e => e.Note11)
                    .HasColumnName("Note 11")
                    .IsUnicode(false);

                entity.Property(e => e.Note12)
                    .HasColumnName("Note 12")
                    .IsUnicode(false);

                entity.Property(e => e.Note13)
                    .HasColumnName("Note 13")
                    .IsUnicode(false);

                entity.Property(e => e.Note14)
                    .HasColumnName("Note 14")
                    .IsUnicode(false);

                entity.Property(e => e.Note2)
                    .HasColumnName("Note 2")
                    .IsUnicode(false);

                entity.Property(e => e.Note3)
                    .HasColumnName("Note 3")
                    .IsUnicode(false);

                entity.Property(e => e.Note4)
                    .HasColumnName("Note 4")
                    .IsUnicode(false);

                entity.Property(e => e.Note5)
                    .HasColumnName("Note 5")
                    .IsUnicode(false);

                entity.Property(e => e.Note6)
                    .HasColumnName("Note 6")
                    .IsUnicode(false);

                entity.Property(e => e.Note7)
                    .HasColumnName("Note 7")
                    .IsUnicode(false);

                entity.Property(e => e.Note8)
                    .HasColumnName("Note 8")
                    .IsUnicode(false);

                entity.Property(e => e.Note9)
                    .HasColumnName("Note 9")
                    .IsUnicode(false);

                entity.Property(e => e.OsteologyNotes)
                    .HasColumnName("Osteology Notes")
                    .IsUnicode(false);

                entity.Property(e => e.OsteologyUnknownComment)
                    .HasColumnName("Osteology unknown comment")
                    .IsUnicode(false);

                entity.Property(e => e.PoroticHyperostosis)
                    .HasColumnName("Porotic Hyperostosis")
                    .IsUnicode(false);

                entity.Property(e => e.PoroticHyperostosisLocations)
                    .HasColumnName("Porotic Hyperostosis (LOCATIONS)")
                    .IsUnicode(false);

                entity.Property(e => e.PostcraniaAtMagazine)
                    .HasColumnName("Postcrania at Magazine")
                    .IsUnicode(false);

                entity.Property(e => e.PostcraniaTrauma)
                    .HasColumnName("Postcrania Trauma")
                    .IsUnicode(false);

                entity.Property(e => e.PostcraniaTrauma1)
                    .HasColumnName("Postcrania Trauma_1")
                    .IsUnicode(false);

                entity.Property(e => e.RackAndShelf)
                    .HasColumnName("Rack and Shelf")
                    .IsUnicode(false);

                entity.Property(e => e.SexSkull2018)
                    .HasColumnName("Sex _(Skull; 2018)")
                    .IsUnicode(false);

                entity.Property(e => e.SkullAtMagazine)
                    .HasColumnName("Skull at Magazine")
                    .IsUnicode(false);

                entity.Property(e => e.SkullTrauma)
                    .HasColumnName("Skull Trauma")
                    .IsUnicode(false);

                entity.Property(e => e.Square).IsUnicode(false);

                entity.Property(e => e.TemporalMandibularJointOsteoarthritisTmjOa)
                    .HasColumnName("Temporal Mandibular Joint Osteoarthritis (TMJ OA)")
                    .IsUnicode(false);

                entity.Property(e => e.ToBeConfirmed)
                    .HasColumnName("TO BE CONFIRMED")
                    .IsUnicode(false);

                entity.Property(e => e.YearExcav).HasColumnName("year excav");

                entity.Property(e => e.YearOnSkull)
                    .HasColumnName("Year on skull")
                    .IsUnicode(false);
            });

            modelBuilder.Entity<MainTbl>(entity =>
            {
                entity.HasNoKey();

                entity.ToTable("main_tbl");

                entity.Property(e => e.ArtifactFound).HasColumnName("artifact_found");

                entity.Property(e => e.ArtifactsDescription)
                    .HasColumnName("artifacts_description")
                    .IsUnicode(false);

                entity.Property(e => e.BasilarSuture)
                    .HasColumnName("basilar_suture")
                    .IsUnicode(false);

                entity.Property(e => e.BasionBregmaHeight).HasColumnName("basion_bregma_height");

                entity.Property(e => e.BasionNasion).HasColumnName("basion_nasion");

                entity.Property(e => e.BasionProsthionLength).HasColumnName("basion_prosthion_length");

                entity.Property(e => e.BizygomaticDiameter).HasColumnName("bizygomatic_diameter");

                entity.Property(e => e.BoneTaken).HasColumnName("bone_taken");

                entity.Property(e => e.BurialDepth).HasColumnName("burial_depth");

                entity.Property(e => e.BurialId)
                    .HasColumnName("Burial_ID")
                    .IsUnicode(false);

                entity.Property(e => e.BurialLocationEw)
                    .HasColumnName("burial_location_EW")
                    .IsUnicode(false);

                entity.Property(e => e.BurialLocationNs)
                    .HasColumnName("burial_location_NS")
                    .IsUnicode(false);

                entity.Property(e => e.BurialNumber).HasColumnName("burial_number");

                entity.Property(e => e.BurialSituation)
                    .HasColumnName("burial_situation")
                    .IsUnicode(false);

                entity.Property(e => e.BurialSubplot)
                    .HasColumnName("burial_subplot")
                    .IsUnicode(false);

                entity.Property(e => e.CranialSuture)
                    .HasColumnName("cranial_suture")
                    .IsUnicode(false);

                entity.Property(e => e.DayFound).HasColumnName("day_found");

                entity.Property(e => e.DescriptionOfTaken)
                    .HasColumnName("description_of_taken")
                    .IsUnicode(false);

                entity.Property(e => e.DorsalPitting).HasColumnName("dorsal_pitting");

                entity.Property(e => e.EpiphysealUnion)
                    .HasColumnName("epiphyseal_union")
                    .IsUnicode(false);

                entity.Property(e => e.EstimateAge).HasColumnName("estimate_age");

                entity.Property(e => e.EstimateLivingStature).HasColumnName("estimate_living_stature");

                entity.Property(e => e.FemurHead).HasColumnName("femur_head");

                entity.Property(e => e.FemurLength).HasColumnName("femur_length");

                entity.Property(e => e.ForemanMagnum)
                    .HasColumnName("foreman_magnum")
                    .IsUnicode(false);

                entity.Property(e => e.GeFunctionTotal).HasColumnName("GE_function_total");

                entity.Property(e => e.GenderBodyCol)
                    .HasColumnName("gender_body_col")
                    .IsUnicode(false);

                entity.Property(e => e.GenderGe)
                    .HasColumnName("gender_GE")
                    .IsUnicode(false);

                entity.Property(e => e.Gonian).HasColumnName("gonian");

                entity.Property(e => e.HairColor)
                    .HasColumnName("hair_color")
                    .IsUnicode(false);

                entity.Property(e => e.HairTaken).HasColumnName("hair_taken");

                entity.Property(e => e.HeadDirection)
                    .HasColumnName("head_direction")
                    .IsUnicode(false);

                entity.Property(e => e.HighPairEw).HasColumnName("high_pair_EW");

                entity.Property(e => e.HighPairNs).HasColumnName("high_pair_NS");

                entity.Property(e => e.HumerusHead).HasColumnName("humerus_head");

                entity.Property(e => e.HumerusLength).HasColumnName("humerus_length");

                entity.Property(e => e.InterorbitalBreadth).HasColumnName("interorbital_breadth");

                entity.Property(e => e.LengthOfRemains).HasColumnName("length_of_remains");

                entity.Property(e => e.LowPairEw).HasColumnName("low_pair_EW");

                entity.Property(e => e.LowPairNs).HasColumnName("low_pair_NS");

                entity.Property(e => e.MaximumCranialBreadth).HasColumnName("maximum_cranial_breadth");

                entity.Property(e => e.MaximumCranialLength).HasColumnName("maximum_cranial_length");

                entity.Property(e => e.MaximumNasalBreadth).HasColumnName("maximum_nasal_breadth");

                entity.Property(e => e.MedialIpRamus).HasColumnName("medial_IP_ramus");

                entity.Property(e => e.MonthFound)
                    .HasColumnName("month_found")
                    .IsUnicode(false);

                entity.Property(e => e.NasionProsthion).HasColumnName("nasion_prosthion");

                entity.Property(e => e.NuchalCrest).HasColumnName("nuchal_crest");

                entity.Property(e => e.OrbitEdge).HasColumnName("orbit_edge");

                entity.Property(e => e.Osteophytosis)
                    .HasColumnName("osteophytosis")
                    .IsUnicode(false);

                entity.Property(e => e.ParietalBossing).HasColumnName("parietal_bossing");

                entity.Property(e => e.PathologyAnomalies)
                    .HasColumnName("pathology_anomalies")
                    .IsUnicode(false);

                entity.Property(e => e.PreaurSulcus).HasColumnName("preaur_sulcus");

                entity.Property(e => e.PreservationIndex)
                    .HasColumnName("preservation_index")
                    .IsUnicode(false);

                entity.Property(e => e.PubicBone).HasColumnName("pubic_bone");

                entity.Property(e => e.PubicSymphysis)
                    .HasColumnName("pubic_symphysis")
                    .IsUnicode(false);

                entity.Property(e => e.Robust).HasColumnName("robust");

                entity.Property(e => e.SampleNumber).HasColumnName("sample_number");

                entity.Property(e => e.SciaticNotch).HasColumnName("sciatic_notch");

                entity.Property(e => e.SoftTissueTaken).HasColumnName("soft_tissue_taken");

                entity.Property(e => e.SouthToFeet).HasColumnName("south_to_feet");

                entity.Property(e => e.SouthToHead).HasColumnName("south_to_head");

                entity.Property(e => e.SubpubicAngle).HasColumnName("subpubic_angle");

                entity.Property(e => e.SupraorbitalRidges).HasColumnName("supraorbital_ridges");

                entity.Property(e => e.TextileTaken).HasColumnName("textile_taken");

                entity.Property(e => e.TibiaLength).HasColumnName("tibia_length");

                entity.Property(e => e.ToothAttrition)
                    .HasColumnName("tooth_attrition")
                    .IsUnicode(false);

                entity.Property(e => e.ToothEruption)
                    .HasColumnName("tooth_eruption")
                    .IsUnicode(false);

                entity.Property(e => e.ToothTaken).HasColumnName("tooth_taken");

                entity.Property(e => e.VentralArc).HasColumnName("ventral_arc");

                entity.Property(e => e.WestToFeet).HasColumnName("west_to_feet");

                entity.Property(e => e.WestToHead).HasColumnName("west_to_head");

                entity.Property(e => e.YearFound).HasColumnName("year_found");

                entity.Property(e => e.ZygomaticCrest).HasColumnName("zygomatic_crest");
            });

            modelBuilder.Entity<SourceInfo>(entity =>
            {
                entity.HasNoKey();

                entity.ToTable("_source_info_");

                entity.Property(e => e.BaseName)
                    .IsRequired()
                    .HasColumnName("base_name")
                    .IsUnicode(false);

                entity.Property(e => e.DirName)
                    .HasColumnName("dir_name")
                    .IsUnicode(false);

                entity.Property(e => e.DstTable)
                    .IsRequired()
                    .HasColumnName("dst_table")
                    .IsUnicode(false);

                entity.Property(e => e.FormatName)
                    .IsRequired()
                    .HasColumnName("format_name")
                    .IsUnicode(false);

                entity.Property(e => e.Mtime).HasColumnName("mtime");

                entity.Property(e => e.Size).HasColumnName("size");

                entity.Property(e => e.SourceId).HasColumnName("source_id");
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
