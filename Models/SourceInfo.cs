﻿using System;
using System.Collections.Generic;

// Code scaffolded by EF Core assumes nullable reference types (NRTs) are not used or disabled.
// If you have enabled NRTs for your project, then un-comment the following line:
// #nullable disable

namespace Fag_el_Gamous.Models
{
    public partial class SourceInfo
    {
        public long SourceId { get; set; }
        public string DirName { get; set; }
        public string BaseName { get; set; }
        public string FormatName { get; set; }
        public string DstTable { get; set; }
        public long? Size { get; set; }
        public long? Mtime { get; set; }
    }
}