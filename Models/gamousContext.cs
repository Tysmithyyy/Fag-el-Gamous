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

        public virtual DbSet<CranialMain> CranialMain { get; set; }
        public virtual DbSet<MainTbl> MainTbl { get; set; }
        public virtual DbSet<SourceInfo> SourceInfo { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. See http://go.microsoft.com/fwlink/?LinkId=723263 for guidance on storing connection strings.
                optionsBuilder.UseSqlite("Data Source = gamous.sqlite");
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<CranialMain>(entity =>
            {
                entity.HasKey(e => new { e.HighPairEw, e.LowPairEw, e.BurialPositioningNSDirection, e.BurialPositioningEWDirection, e.BurialNumber, e.BurialSubPlotDirection, e.HighPairNs, e.LowPairNs });

                entity.Property(e => e.HighPairEw).HasColumnName("High Pair EW");

                entity.Property(e => e.LowPairEw).HasColumnName("Low Pair EW");

                entity.Property(e => e.BurialPositioningNSDirection).HasColumnName("Burial Positioning (N/S) Direction");

                entity.Property(e => e.BurialPositioningEWDirection).HasColumnName("Burial Positioning (E/W) Direction");

                entity.Property(e => e.BurialNumber).HasColumnName("Burial Number");

                entity.Property(e => e.BurialSubPlotDirection).HasColumnName("Burial sub-plot direction");

                entity.Property(e => e.HighPairNs).HasColumnName("High Pair NS");

                entity.Property(e => e.LowPairNs).HasColumnName("Low Pair NS");

                entity.Property(e => e.BasionBregmaHeight).HasColumnName("Basion-Bregma Height");

                entity.Property(e => e.BasionNasion).HasColumnName("Basion-Nasion");

                entity.Property(e => e.BasionProsthionLength).HasColumnName("Basion-Prosthion Length");

                entity.Property(e => e.BizygomaticDiameter).HasColumnName("Bizygomatic Diameter");

                entity.Property(e => e.BurialDepth).HasColumnName("Burial Depth");

                entity.Property(e => e.BurialPositioningEastWestNumber).HasColumnName("Burial Positioning (East/West) Number");

                entity.Property(e => e.BurialPositioningNorthSouthNumber).HasColumnName("Burial Positioning (North/South) Number");

                entity.Property(e => e.InterorbitalBreadth).HasColumnName("Interorbital Breadth");

                entity.Property(e => e.MaximumCranialBreadth).HasColumnName("Maximum Cranial Breadth");

                entity.Property(e => e.MaximumCranialLength).HasColumnName("Maximum Cranial Length");

                entity.Property(e => e.MaximumNasalBreadth).HasColumnName("Maximum Nasal Breadth");

                entity.Property(e => e.NasionProsthion).HasColumnName("Nasion-Prosthion");
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

                entity.Property(e => e.EastToFeet).HasColumnName("east_to_feet");

                entity.Property(e => e.EastToHead).HasColumnName("east_to_head");

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

                entity.Property(e => e.YearFound).HasColumnName("year_found");

                entity.Property(e => e.ZygomaticCrest).HasColumnName("zygomatic_crest");
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
