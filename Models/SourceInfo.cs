// Code scaffolded by EF Core assumes nullable reference types (NRTs) are not used or disabled.
// If you have enabled NRTs for your project, then un-comment the following line:
// #nullable disable

namespace Fag_el_Gamous.Models
{
    public partial class SourceInfo
    {
        public int SourceId { get; set; }
        public string DirName { get; set; }
        public string BaseName { get; set; }
        public string FormatName { get; set; }
        public string DstTable { get; set; }
        public int? Size { get; set; }
        public int? Mtime { get; set; }
    }
}
