using Fag_el_Gamous.Models;
using Fag_el_Gamous.Models.ViewModels;
using Microsoft.AspNetCore.Identity;
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

        public IActionResult Index()
        {
            return View();
        }


        [HttpGet]
        public IActionResult BurialRecords(string burialLocationNS, string burialLocationEW, int lengthLow, int lengthHigh, string gender, string hairColor, int pageNum = 1)
        {
            int pageSize = 10;
            ViewBag.BurialLocationNS = _context.MainTbl.Where(t => t.BurialLocationNs != null).Select(t => t.BurialLocationNs).Distinct().OrderBy(x => x);
            ViewBag.BurialLocationEW = _context.MainTbl.Where(t => t.BurialLocationEw != null).Select(t => t.BurialLocationEw).Distinct().OrderBy(x => x);
            ViewBag.Gender = _context.MainTbl.Where(t => t.GenderBodyCol != null).Select(t => t.GenderBodyCol).Distinct().OrderBy(x => x);
            ViewBag.HairColor = _context.MainTbl.Where(t => t.HairColor != null).Select(t => t.HairColor).Distinct().OrderBy(x => x);
            

            return View(new RecordsViewModel
            {
                Records =
                (_context.MainTbl
                .Where(t => t.BurialLocationNs == burialLocationNS || burialLocationNS == null)
                .Where(t => t.BurialLocationEw == burialLocationEW || burialLocationEW == null)
                .Where(t => t.GenderBodyCol == gender || gender == null)
                .Where(t => t.HairColor == hairColor || hairColor == null)
                .Where(t => t.LengthOfRemains < lengthHigh || lengthHigh == 0)
                .Where(t => t.LengthOfRemains > lengthLow || lengthLow == 0)
                .Skip((pageNum - 1) * pageSize)
                .Take(pageSize)
                .ToList()),
                PageNumberingInfo = new PageNumberingInfo
                {
                    NumItemsPerPage = pageSize,
                    CurrentPage = pageNum,
                    //get the count of items and if there is a specified team get the count for that team.
                    TotalNumItems = (_context.MainTbl
                .Where(t => t.BurialLocationNs == burialLocationNS || burialLocationNS == null)
                .Where(t => t.BurialLocationEw == burialLocationEW || burialLocationEW == null)
                .Where(t => t.GenderBodyCol == gender || gender == null)
                .Where(t => t.HairColor == hairColor || hairColor == null)
                .Where(t => t.LengthOfRemains < lengthHigh || lengthHigh == 0)
                .Where(t => t.LengthOfRemains > lengthLow || lengthLow == 0)
                .Count())
                },
                Filters = new Filters
                {                    
                    hairColor = hairColor,
                    gender = gender,
                    burialLocationEW = burialLocationEW,
                    burialLocationNS = burialLocationNS,
                    lengthLow = lengthLow,
                    lengthHigh = lengthHigh
                }
            });
        }


        //the burialrecords for Admins has a edit and delete button shown on the page. This page will be shown when the user is loggedin
        //identical copy of the BurialRecordsPage
        [HttpGet]
        public IActionResult BurialRecordsAdmin(string burialLocationNS, string burialLocationEW, int lengthLow, int lengthHigh, string gender, string hairColor, int pageNum = 1)
        {
            int pageSize = 10;
            ViewBag.BurialLocationNS = _context.MainTbl.Where(t => t.BurialLocationNs != null).Select(t => t.BurialLocationNs).Distinct().OrderBy(x => x);
            ViewBag.BurialLocationEW = _context.MainTbl.Where(t => t.BurialLocationEw != null).Select(t => t.BurialLocationEw).Distinct().OrderBy(x => x);
            ViewBag.Gender = _context.MainTbl.Where(t => t.GenderBodyCol != null).Select(t => t.GenderBodyCol).Distinct().OrderBy(x => x);
            ViewBag.HairColor = _context.MainTbl.Where(t => t.HairColor != null).Select(t => t.HairColor).Distinct().OrderBy(x => x);


            return View(new RecordsViewModel
            {
                Records =
                (_context.MainTbl
                .Where(t => t.BurialLocationNs == burialLocationNS || burialLocationNS == null)
                .Where(t => t.BurialLocationEw == burialLocationEW || burialLocationEW == null)
                .Where(t => t.GenderBodyCol == gender || gender == null)
                .Where(t => t.HairColor == hairColor || hairColor == null)
                .Where(t => t.LengthOfRemains < lengthHigh || lengthHigh == 0)
                .Where(t => t.LengthOfRemains > lengthLow || lengthLow == 0)
                .Skip((pageNum - 1) * pageSize)
                .Take(pageSize)
                .ToList()),
                PageNumberingInfo = new PageNumberingInfo
                {
                    NumItemsPerPage = pageSize,
                    CurrentPage = pageNum,
                    //get the count of items and if there is a specified team get the count for that team.
                    TotalNumItems = (_context.MainTbl
                .Where(t => t.BurialLocationNs == burialLocationNS || burialLocationNS == null)
                .Where(t => t.BurialLocationEw == burialLocationEW || burialLocationEW == null)
                .Where(t => t.GenderBodyCol == gender || gender == null)
                .Where(t => t.HairColor == hairColor || hairColor == null)
                .Where(t => t.LengthOfRemains < lengthHigh || lengthHigh == 0)
                .Where(t => t.LengthOfRemains > lengthLow || lengthLow == 0)
                .Count())
                },
                Filters = new Filters
                {
                    hairColor = hairColor,
                    gender = gender,
                    burialLocationEW = burialLocationEW,
                    burialLocationNS = burialLocationNS,
                    lengthLow = lengthLow,
                    lengthHigh = lengthHigh
                }
            });
        }
        //add page, pulled up when add button is pressed
        [HttpGet]
        public IActionResult Add()
        {
            return View();
        }

        //add record, function is initiated when "Add Record" button is pressed on the Add.cshtml page
        [HttpPost]
        public IActionResult Add(MainTbl mainTbl)
        {
            if (ModelState.IsValid)
            {
                //create the key here
                string id = mainTbl.BurialLocationNs + " " + mainTbl.LowPairNs + "/" + mainTbl.HighPairNs
                    + " " + mainTbl.BurialLocationEw + " " + mainTbl.LowPairEw + "/" + mainTbl.HighPairEw
                    + " " + mainTbl.BurialSubplot + " #" + mainTbl.BurialNumber;

                mainTbl.BurialId = id;

                _context.MainTbl.Add(mainTbl);
                _context.SaveChanges();

                //if user is logged in, return the admin burial view, if they are not logged in, return regular view
                if (User.Identity.IsAuthenticated)
                {
                    return RedirectToAction("BurialRecordsAdmin");
                }

                else { return RedirectToAction("BurialRecords"); }
            }

            return View();
            
        }

        //when delete button is pressed, the burial_id is passed into the function and it is removed from the maintbl
        [HttpPost]
        public IActionResult Delete(string BurialId)
        {
            _context.MainTbl.Remove(_context.MainTbl.Find(BurialId));
            _context.SaveChanges();

            //if user is logged in, return the admin burial view, if they are not logged in, return regular view
            if (User.Identity.IsAuthenticated)
            {
                return RedirectToAction("BurialRecordsAdmin");
            }

            else { return RedirectToAction("BurialRecords"); }
        }

        //when edit button is pressed, bring in the burial ID and fill into page
        [HttpGet]
        public IActionResult Edit(string burialid)
        {
            var burial = _context.MainTbl.Where(b => b.BurialId == burialid).FirstOrDefault();
            return View(burial);
        }

        [HttpPost]
        public IActionResult Edit(MainTbl burial)
        {
            _context.MainTbl.Remove(_context.MainTbl.Find(burial.BurialId));
            string id = burial.BurialLocationNs + " " + burial.LowPairNs + "/" + burial.HighPairNs
                    + " " + burial.BurialLocationEw + " " + burial.LowPairEw + "/" + burial.HighPairEw
                    + " " + burial.BurialSubplot + " #" + burial.BurialNumber;
            burial.BurialId = id;
            _context.MainTbl.Add(burial);
            _context.SaveChanges();

            //if user is logged in, return the admin burial view, if they are not logged in, return regular view
            if (User.Identity.IsAuthenticated)
            {
                return RedirectToAction("BurialRecordsAdmin");
            }

            else { return RedirectToAction("BurialRecords"); }
        }

        //once save button is pressed on the edit page, function to update the context

        public IActionResult SingleRecord(string burialid)
        {
            var burial = _context.MainTbl.Where(b => b.BurialId == burialid).FirstOrDefault();

            return View(burial);
        }


        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
