using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Fag_el_Gamous.Models.ViewModels
{
    public class Filters
    {
        public string burialLocationNS { get; set; }
        public string burialLocationEW { get; set; }
        public string gender { get; set; }
        public string hairColor { get; set; }
        public int lengthHigh { get; set; }
        public int lengthLow { get; set; }
    }
}
