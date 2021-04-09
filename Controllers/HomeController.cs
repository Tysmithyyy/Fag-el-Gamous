using Fag_el_Gamous.Models;
using Fag_el_Gamous.Models.ViewModels;
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
        private gamousContext _context;

        public HomeController(ILogger<HomeController> logger, gamousContext ctx)
        {
            _logger = logger;
            _context = ctx;

        }

        public IActionResult Add()
        {
            return View("Add_Edit");
        }

        public IActionResult Index()
        {
            return View();
        }

        public IActionResult BurialRecords(string burialLocationNS, string burialLocationEW, string gender, string hairColor, int pageNum = 1)
        {
            int pageSize = 10;
            ViewBag.BurialLocationNS = _context.MainTbl.Select(t => t.BurialLocationNs).Distinct().OrderBy(x => x);
            ViewBag.BurialLocationEW = _context.MainTbl.Select(t => t.BurialLocationEw).Distinct().OrderBy(x => x);
            ViewBag.Gender = _context.MainTbl.Select(t => t.GenderBodyCol).Distinct().OrderBy(x => x);
            ViewBag.HairColor = _context.MainTbl.Select(t => t.HairColor).Distinct().OrderBy(x => x);

            return View(new RecordsViewModel
            {
                Records =
                (_context.MainTbl
                .Where(t => t.BurialLocationNs == burialLocationNS || burialLocationNS == null)
                .Where(t => t.BurialLocationEw == burialLocationEW || burialLocationEW == null)
                .Where(t => t.GenderBodyCol == gender || gender == null)
                .Where(t => t.HairColor == hairColor || hairColor == null)
                .Skip((pageNum - 1) * pageSize)
                .Take(pageSize)
                .ToList()),
                PageNumberingInfo = new PageNumberingInfo
                {
                    NumItemsPerPage = pageSize,
                    CurrentPage = pageNum,
                    //get the count of items and if there is a specified team get the count for that team.
                    TotalNumItems = (_context.MainTbl.Count())
                }
            });
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
        [HttpPost]
        public IActionResult Add_Edit(MainTbl mainTbl)
        {
            if (ModelState.IsValid)
            {
                _context.MainTbl.Add(mainTbl);
                _context.SaveChanges();
                return RedirectToAction("BurialRecords");
            }
            return View();
        }

        [HttpGet]
        public IActionResult Add_Edit()
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
