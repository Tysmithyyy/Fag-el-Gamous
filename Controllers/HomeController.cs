using Fag_el_Gamous.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;

namespace Fag_el_Gamous.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;

        public HomeController(ILogger<HomeController> logger)
        {
            _logger = logger;
        }

        public IActionResult Index()
        {
            return View();
        }

        public IActionResult BurialRecords()
        {
            int pageSize = 10;

            return View();
        }

        /*public async Task<IActionResult> BurialRecords(string searchString)
        {
             var records = from m in context
              select m;

             if (!String.IsNullOrEmpty(searchString))
             {
                 movies = movies.Where(s => s.Title.Contains(searchString));
             }

            return View();

            await movies.ToListAsync()
        }*/

        public IActionResult ResearcherPage()
        {
            return View();
        }

        public IActionResult AdminPage()
        {
            return View();
        }


        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
