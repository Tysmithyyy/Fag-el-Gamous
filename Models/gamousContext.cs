using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

// Code scaffolded by EF Core assumes nullable reference types (NRTs) are not used or disabled.
// If you have enabled NRTs for your project, then un-comment the following line:
// #nullable disable

namespace Fag_el_Gamous.Models
{
    public partial class gamousContext : DbContext
    {
        public gamousContext()
        {
        }

        public gamousContext(DbContextOptions<gamousContext> options)
            : base(options)
        {
        }

        public virtual DbSet<BioData> BioData { get; set; }
        public virtual DbSet<C14> C14 { get; set; }
        public virtual DbSet<FagElGamousAll> FagElGamousAll { get; set; }
        public virtual DbSet<FieldNotes> FieldNotes { get; set; }
        public virtual DbSet<MainTbl> MainTbl { get; set; }
        public virtual DbSet<Photos> Photos { get; set; }
        public virtual DbSet<SourceInfo> SourceInfo { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. See http://go.microsoft.com/fwlink/?LinkId=723263 for guidance on storing connection strings.
                optionsBuilder.UseSqlServer("Data Source = FagElGamousDB.sql");
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<BioData>(entity =>
            {
                entity.HasNoKey();

                entity.Property(e => e.AdditionalNotes).HasColumnName("Additional Notes");

                entity.Property(e => e.Bag).HasColumnName("Bag #");

                entity.Property(e => e.Burial).HasColumnName("Burial #");

                entity.Property(e => e.BurialId).HasColumnName("Burial ID");

                entity.Property(e => e.Cluster).HasColumnName("Cluster #");

                entity.Property(e => e.EW).HasColumnName("E/W");

                entity.Property(e => e.High).HasColumnName("High #");

                entity.Property(e => e.High1).HasColumnName("High #_1");

                entity.Property(e => e.Low).HasColumnName("Low #");

                entity.Property(e => e.Low1).HasColumnName("Low #_1");

                entity.Property(e => e.NS).HasColumnName("N/S");

                entity.Property(e => e.PreviouslySampled).HasColumnName("Previously Sampled");

                entity.Property(e => e.Rack).HasColumnName("Rack #");
            });

            modelBuilder.Entity<C14>(entity =>
            {
                entity.HasNoKey();

                entity.Property(e => e.AdditionalNotes).HasColumnName("Additional Notes");

                entity.Property(e => e.Bag).HasColumnName("Bag #");

                entity.Property(e => e.Burial).HasColumnName("Burial #");

                entity.Property(e => e.BurialId).HasColumnName("Burial ID");

                entity.Property(e => e.Cluster).HasColumnName("Cluster #");

                entity.Property(e => e.EW).HasColumnName("E/W");

                entity.Property(e => e.High).HasColumnName("High #");

                entity.Property(e => e.High1).HasColumnName("High #_1");

                entity.Property(e => e.Low).HasColumnName("Low #");

                entity.Property(e => e.Low1).HasColumnName("Low #_1");

                entity.Property(e => e.NS).HasColumnName("N/S");

                entity.Property(e => e.PreviouslySampled).HasColumnName("Previously Sampled");

                entity.Property(e => e.Rack).HasColumnName("Rack #");
            });

            modelBuilder.Entity<FagElGamousAll>(entity =>
            {
                entity.HasNoKey();

                entity.ToTable("Fag_el_Gamous_All");

                entity.Property(e => e.AgeCodeSingle).HasColumnName("Age Code SINGLE");

                entity.Property(e => e.AgeSkull2018).HasColumnName("Age _(Skull; _2018)");

                entity.Property(e => e.ArcGis).HasColumnName("ARC GIS");

                entity.Property(e => e.AreaHillBurials).HasColumnName("Area (Hill burials)");

                entity.Property(e => e.BodyAnalysis).HasColumnName("Body Analysis");

                entity.Property(e => e.BurialAdultChild).HasColumnName("burial adult child");

                entity.Property(e => e.BurialAreaEastOrWest).HasColumnName("burial area east or west");

                entity.Property(e => e.BurialAreaNorthOrSouth).HasColumnName("burial area North or South");

                entity.Property(e => e.BurialDepth).HasColumnName("burial depth");

                entity.Property(e => e.BurialDirection1).HasColumnName("burial direction 1");

                entity.Property(e => e.BurialDirection2).HasColumnName("Burial Direction 2");

                entity.Property(e => e.BurialId).HasColumnName("Burial ID");

                entity.Property(e => e.BurialNumber).HasColumnName("Burial Number");

                entity.Property(e => e.BurialPreservation).HasColumnName("burial preservation");

                entity.Property(e => e.BurialSouthToFeet).HasColumnName("burial south to feet");

                entity.Property(e => e.BurialSouthToHead).HasColumnName("burial south to head");

                entity.Property(e => e.BurialWestToFeet).HasColumnName("burial west to feet");

                entity.Property(e => e.BurialWestToHead).HasColumnName("burial west to head");

                entity.Property(e => e.BurialWrapping).HasColumnName("burial wrapping");

                entity.Property(e => e.Burialageatdeath).HasColumnName("burialageatdeath");

                entity.Property(e => e.Burialagemethod).HasColumnName("burialagemethod");

                entity.Property(e => e.Burialgendermethod).HasColumnName("burialgendermethod");

                entity.Property(e => e.Burialhaircolor).HasColumnName("burialhaircolor");

                entity.Property(e => e.Burialnors).HasColumnName("burialnors");

                entity.Property(e => e.Burialsampletaken).HasColumnName("burialsampletaken");

                entity.Property(e => e.Burialxeorw).HasColumnName("burialxeorw");

                entity.Property(e => e.ButtonOsteoma).HasColumnName("Button Osteoma");

                entity.Property(e => e.ByuSample).HasColumnName("BYU Sample");

                entity.Property(e => e.CribraOrbitala).HasColumnName("Cribra Orbitala");

                entity.Property(e => e.DateExcavated).HasColumnName("Date Excavated");

                entity.Property(e => e.DateOnSkull).HasColumnName("Date on Skull");

                entity.Property(e => e.FaceBundle).HasColumnName("Face Bundle");

                entity.Property(e => e.FieldBook).HasColumnName("Field Book");

                entity.Property(e => e.FieldBookPageNumber).HasColumnName("Field Book Page Number");

                entity.Property(e => e.GenderCode).HasColumnName("Gender Code");

                entity.Property(e => e.HairColorCode).HasColumnName("Hair Color Code");

                entity.Property(e => e.InitialsOfDataEntryChecker).HasColumnName("Initials of Data Entry Checker");

                entity.Property(e => e.InitialsOfDataEntryExpert).HasColumnName("Initials of Data Entry Expert");

                entity.Property(e => e.Length).HasColumnName("length");

                entity.Property(e => e.LengthCm).HasColumnName("length(CM)");

                entity.Property(e => e.LengthM).HasColumnName("length(M)");

                entity.Property(e => e.LinearHypoplasiaEnamel).HasColumnName("Linear Hypoplasia Enamel");

                entity.Property(e => e.MetopicSuture).HasColumnName("Metopic Suture");

                entity.Property(e => e.MonthExcavated).HasColumnName("Month Excavated");

                entity.Property(e => e.MonthOnSkull).HasColumnName("Month on skull");

                entity.Property(e => e.Note1).HasColumnName("Note 1");

                entity.Property(e => e.Note10).HasColumnName("Note 10");

                entity.Property(e => e.Note11).HasColumnName("Note 11");

                entity.Property(e => e.Note12).HasColumnName("Note 12");

                entity.Property(e => e.Note13).HasColumnName("Note 13");

                entity.Property(e => e.Note14).HasColumnName("Note 14");

                entity.Property(e => e.Note2).HasColumnName("Note 2");

                entity.Property(e => e.Note3).HasColumnName("Note 3");

                entity.Property(e => e.Note4).HasColumnName("Note 4");

                entity.Property(e => e.Note5).HasColumnName("Note 5");

                entity.Property(e => e.Note6).HasColumnName("Note 6");

                entity.Property(e => e.Note7).HasColumnName("Note 7");

                entity.Property(e => e.Note8).HasColumnName("Note 8");

                entity.Property(e => e.Note9).HasColumnName("Note 9");

                entity.Property(e => e.OsteologyNotes).HasColumnName("Osteology Notes");

                entity.Property(e => e.OsteologyUnknownComment).HasColumnName("Osteology unknown comment");

                entity.Property(e => e.PoroticHyperostosis).HasColumnName("Porotic Hyperostosis");

                entity.Property(e => e.PoroticHyperostosisLocations).HasColumnName("Porotic Hyperostosis (LOCATIONS)");

                entity.Property(e => e.PostcraniaAtMagazine).HasColumnName("Postcrania at Magazine");

                entity.Property(e => e.PostcraniaTrauma).HasColumnName("Postcrania Trauma");

                entity.Property(e => e.PostcraniaTrauma1).HasColumnName("Postcrania Trauma_1");

                entity.Property(e => e.RackAndShelf).HasColumnName("Rack and Shelf");

                entity.Property(e => e.SexSkull2018).HasColumnName("Sex _(Skull; 2018)");

                entity.Property(e => e.SkullAtMagazine).HasColumnName("Skull at Magazine");

                entity.Property(e => e.SkullTrauma).HasColumnName("Skull Trauma");

                entity.Property(e => e.TemporalMandibularJointOsteoarthritisTmjOa).HasColumnName("Temporal Mandibular Joint Osteoarthritis (TMJ OA)");

                entity.Property(e => e.ToBeConfirmed).HasColumnName("TO BE CONFIRMED");

                entity.Property(e => e.YearExcav).HasColumnName("year excav");

                entity.Property(e => e.YearOnSkull).HasColumnName("Year on skull");
            });

            modelBuilder.Entity<FieldNotes>(entity =>
            {
                entity.HasNoKey();

                entity.ToTable("Field Notes");

                entity.Property(e => e.BurialId).HasColumnName("Burial ID");

                entity.Property(e => e.FieldNoteImage).HasColumnName("Field Note Image");
            });

            modelBuilder.Entity<MainTbl>(entity =>
            {
                entity.HasKey(e => e.BurialId);

                entity.ToTable("main_tbl");

                entity.Property(e => e.BurialId).HasColumnName("Burial_ID");

                entity.Property(e => e.ArtifactFound).HasColumnName("artifact_found");

                entity.Property(e => e.ArtifactsDescription).HasColumnName("artifacts_description");

                entity.Property(e => e.BasilarSuture).HasColumnName("basilar_suture");

                entity.Property(e => e.BasionBregmaHeight).HasColumnName("basion_bregma_height");

                entity.Property(e => e.BasionNasion).HasColumnName("basion_nasion");

                entity.Property(e => e.BasionProsthionLength).HasColumnName("basion_prosthion_length");

                entity.Property(e => e.BizygomaticDiameter).HasColumnName("bizygomatic_diameter");

                entity.Property(e => e.BoneTaken).HasColumnName("bone_taken");

                entity.Property(e => e.BurialDepth).HasColumnName("burial_depth");

                entity.Property(e => e.BurialLocationEw).HasColumnName("burial_location_EW");

                entity.Property(e => e.BurialLocationNs).HasColumnName("burial_location_NS");

                entity.Property(e => e.BurialNumber).HasColumnName("burial_number");

                entity.Property(e => e.BurialSituation).HasColumnName("burial_situation");

                entity.Property(e => e.BurialSubplot).HasColumnName("burial_subplot");

                entity.Property(e => e.CranialSuture).HasColumnName("cranial_suture");

                entity.Property(e => e.DayFound).HasColumnName("day_found");

                entity.Property(e => e.DescriptionOfTaken).HasColumnName("description_of_taken");

                entity.Property(e => e.DorsalPitting).HasColumnName("dorsal_pitting");

                entity.Property(e => e.EpiphysealUnion).HasColumnName("epiphyseal_union");

                entity.Property(e => e.EstimateAge).HasColumnName("estimate_age");

                entity.Property(e => e.EstimateLivingStature).HasColumnName("estimate_living_stature");

                entity.Property(e => e.FemurHead).HasColumnName("femur_head");

                entity.Property(e => e.FemurLength).HasColumnName("femur_length");

                entity.Property(e => e.ForemanMagnum).HasColumnName("foreman_magnum");

                entity.Property(e => e.GeFunctionTotal).HasColumnName("GE_function_total");

                entity.Property(e => e.GenderBodyCol).HasColumnName("gender_body_col");

                entity.Property(e => e.GenderGe).HasColumnName("gender_GE");

                entity.Property(e => e.Gonian).HasColumnName("gonian");

                entity.Property(e => e.HairColor).HasColumnName("hair_color");

                entity.Property(e => e.HairTaken).HasColumnName("hair_taken");

                entity.Property(e => e.HeadDirection).HasColumnName("head_direction");

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

                entity.Property(e => e.MonthFound).HasColumnName("month_found");

                entity.Property(e => e.NasionProsthion).HasColumnName("nasion_prosthion");

                entity.Property(e => e.NuchalCrest).HasColumnName("nuchal_crest");

                entity.Property(e => e.OrbitEdge).HasColumnName("orbit_edge");

                entity.Property(e => e.Osteophytosis).HasColumnName("osteophytosis");

                entity.Property(e => e.ParietalBossing).HasColumnName("parietal_bossing");

                entity.Property(e => e.PathologyAnomalies).HasColumnName("pathology_anomalies");

                entity.Property(e => e.PreaurSulcus).HasColumnName("preaur_sulcus");

                entity.Property(e => e.PreservationIndex).HasColumnName("preservation_index");

                entity.Property(e => e.PubicBone).HasColumnName("pubic_bone");

                entity.Property(e => e.PubicSymphysis).HasColumnName("pubic_symphysis");

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

                entity.Property(e => e.ToothAttrition).HasColumnName("tooth_attrition");

                entity.Property(e => e.ToothEruption).HasColumnName("tooth_eruption");

                entity.Property(e => e.ToothTaken).HasColumnName("tooth_taken");

                entity.Property(e => e.VentralArc).HasColumnName("ventral_arc");

                entity.Property(e => e.WestToFeet).HasColumnName("west_to_feet");

                entity.Property(e => e.WestToHead).HasColumnName("west_to_head");

                entity.Property(e => e.YearFound).HasColumnName("year_found");

                entity.Property(e => e.ZygomaticCrest).HasColumnName("zygomatic_crest");
            });

            modelBuilder.Entity<Photos>(entity =>
            {
                entity.HasNoKey();

                entity.Property(e => e.BurialId).HasColumnName("Burial ID");
            });

            modelBuilder.Entity<SourceInfo>(entity =>
            {
                entity.HasNoKey();

                entity.ToTable("_source_info_");

                entity.Property(e => e.BaseName)
                    .IsRequired()
                    .HasColumnName("base_name");

                entity.Property(e => e.DirName).HasColumnName("dir_name");

                entity.Property(e => e.DstTable)
                    .IsRequired()
                    .HasColumnName("dst_table");

                entity.Property(e => e.FormatName)
                    .IsRequired()
                    .HasColumnName("format_name");

                entity.Property(e => e.Mtime).HasColumnName("mtime");

                entity.Property(e => e.Size).HasColumnName("size");

                entity.Property(e => e.SourceId).HasColumnName("source_id");
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
