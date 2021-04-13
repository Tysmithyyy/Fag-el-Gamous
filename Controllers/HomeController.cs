using BetterAmazon.Models;
using Fag_el_Gamous.Models;
using Fag_el_Gamous.Models.ViewModels;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;

namespace Fag_el_Gamous.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private gamous2Context _context;
        private string connectionString = Helpers.GetRDSConnectionString();

        public HomeController(ILogger<HomeController> logger, gamous2Context ctx)
        {
            _logger = logger;
            _context = ctx;

        }

        public IActionResult Index()
        {
            return View();
        }


        [HttpGet]
        public IActionResult BurialRecords(string burialLocationNS, string preservationIndex, string burialLocationEW, int lengthLow, int lengthHigh, int ageLow, int ageHigh, long? yearFound, string gender, string hairColor, string searchString, int pageNum = 1)
        {
            int pageSize = 10;
            ViewBag.BurialLocationNS = _context.MainTbl.Where(t => t.BurialLocationNs != null).Select(t => t.BurialLocationNs).Distinct().OrderBy(x => x);
            ViewBag.BurialLocationEW = _context.MainTbl.Where(t => t.BurialLocationEw != null).Select(t => t.BurialLocationEw).Distinct().OrderBy(x => x);
            ViewBag.Gender = _context.MainTbl.Where(t => t.GenderBodyCol != null).Select(t => t.GenderBodyCol).Distinct().OrderBy(x => x);
            ViewBag.HairColor = _context.MainTbl.Where(t => t.HairColor != null).Select(t => t.HairColor).Distinct().OrderBy(x => x);
            ViewBag.yearFound = _context.MainTbl.Where(t => t.YearFound != null).Select(t => t.YearFound).Distinct().OrderBy(x => x);
            ViewBag.preservationIndex = _context.MainTbl.Where(t => t.PreservationIndex != null).Select(t => t.PreservationIndex).Distinct().OrderBy(x => x);

            if (searchString != null)
            {
                searchString = searchString.ToLower();
            };



            return View(new RecordsViewModel
            {
                Records =
                (_context.MainTbl
                .Where(t => t.BurialLocationNs == burialLocationNS || burialLocationNS == null)
                .Where(t => t.BurialLocationEw == burialLocationEW || burialLocationEW == null)
                .Where(t => t.GenderBodyCol == gender || gender == null)
                .Where(t => t.HairColor == hairColor || hairColor == null)
                .Where(t => t.PreservationIndex == preservationIndex || preservationIndex == null)
                .Where(t => t.YearFound == yearFound || yearFound == null)
                .Where(t => t.LengthOfRemains < lengthHigh || lengthHigh == 0)
                .Where(t => t.LengthOfRemains > lengthLow || lengthLow == 0)
                .Where(t => t.EstimateAge < ageHigh || ageHigh == 0)
                .Where(t => t.EstimateAge > ageLow || ageLow == 0)
                .Where(t => t.BurialId.ToLower().Contains(searchString) ||
                t.BurialSituation.ToLower().Contains(searchString) ||
                t.ArtifactsDescription.ToLower().Contains(searchString) || searchString == null)
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
                .Where(t => t.PreservationIndex == preservationIndex || preservationIndex == null)
                .Where(t => t.YearFound == yearFound || yearFound == null)
                .Where(t => t.LengthOfRemains < lengthHigh || lengthHigh == 0)
                .Where(t => t.LengthOfRemains > lengthLow || lengthLow == 0)
                .Where(t => t.EstimateAge < ageHigh || ageHigh == 0)
                .Where(t => t.EstimateAge > ageLow || ageLow == 0)
                .Where(t => t.BurialId.Contains(searchString) ||
                t.BurialSituation.Contains(searchString) ||
                t.ArtifactsDescription.Contains(searchString) || searchString == null)
                .Count())
                },
                Filters = new Filters
                {
                    hairColor = hairColor,
                    gender = gender,
                    burialLocationEW = burialLocationEW,
                    burialLocationNS = burialLocationNS,
                    lengthLow = lengthLow,
                    lengthHigh = lengthHigh,
                    ageHigh = ageHigh,
                    ageLow = ageLow,
                    searchString = searchString,
                    preservationIndex = preservationIndex,
                    yearFound = yearFound
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

                //parameterized queries to protect agains SQL Injection
                SqlConnection con = new SqlConnection(Helpers.GetRDSConnectionString());
                //Replaced Parameters with Value
                string query = "INSERT INTO main_tbl " +
                    "(Burial_ID, burial_location_NS, burial_location_EW, low_pair_NS, high_pair_NS, low_pair_EW, high_pair_EW, burial_subplot, burial_number, " +
                    "south_to_head, south_to_feet, west_to_head, west_to_feet, length_of_remains, burial_depth, " +
                    "artifact_found, hair_color, year_found, month_found, day_found) " +
                    "VALUES(@Burial_ID, @burial_location_NS, @burial_location_EW, @low_pair_NS, @high_pair_NS, @low_pair_EW, @high_pair_EW, @burial_subplot, @burial_number, " +
                    "@south_to_head, @south_to_feet, @west_to_head, @west_to_feet, @length_of_remains, @burial_depth, " +
                    "@artifact_found, @hair_color, @year_found, @month_found, @day_found)";
                SqlCommand cmd = new SqlCommand(query, con);

                //Pass values to Parameters
                cmd.Parameters.AddWithValue("@Burial_ID", mainTbl.BurialId);
                cmd.Parameters.AddWithValue("@burial_location_NS", mainTbl.BurialLocationNs);
                cmd.Parameters.AddWithValue("@burial_location_EW", mainTbl.BurialLocationEw);
                cmd.Parameters.AddWithValue("@low_pair_NS", mainTbl.LowPairNs);
                cmd.Parameters.AddWithValue("@high_pair_NS", mainTbl.HighPairNs);
                cmd.Parameters.AddWithValue("@low_pair_EW", mainTbl.LowPairEw);
                cmd.Parameters.AddWithValue("@high_pair_EW", mainTbl.LowPairNs);
                cmd.Parameters.AddWithValue("@burial_subplot", mainTbl.BurialSubplot);
                cmd.Parameters.AddWithValue("@burial_number", mainTbl.BurialNumber);
                cmd.Parameters.AddWithValue("@south_to_head", mainTbl.SouthToHead ?? (object)DBNull.Value);
                cmd.Parameters.AddWithValue("@south_to_feet", mainTbl.SouthToFeet ?? (object)DBNull.Value);
                cmd.Parameters.AddWithValue("@west_to_head", mainTbl.WestToHead ?? (object)DBNull.Value);
                cmd.Parameters.AddWithValue("@west_to_feet", mainTbl.WestToFeet ?? (object)DBNull.Value);
                cmd.Parameters.AddWithValue("@length_of_remains", mainTbl.LengthOfRemains ?? (object)DBNull.Value);
                cmd.Parameters.AddWithValue("@burial_depth", mainTbl.BurialDepth ?? (object)DBNull.Value);
                cmd.Parameters.AddWithValue("@artifact_found", mainTbl.ArtifactFound ?? (object)DBNull.Value);
                cmd.Parameters.AddWithValue("@hair_color", mainTbl.HairColor ?? (object)DBNull.Value);
                cmd.Parameters.AddWithValue("@year_found", mainTbl.YearFound ?? (object)DBNull.Value);
                cmd.Parameters.AddWithValue("@month_found", mainTbl.MonthFound ?? (object)DBNull.Value);
                cmd.Parameters.AddWithValue("@day_found", mainTbl.DayFound ?? (object)DBNull.Value);
                try
                {
                    con.Open();
                    cmd.ExecuteNonQuery();
                    Console.WriteLine("Records Inserted Successfully");
                }
                catch (SqlException e)
                {
                    Console.WriteLine("Error Generated. Details: " + e.ToString());
                    return View();
                }
                con.Close();

                return RedirectToAction("BurialRecords");
            }

            return View();

        }

        //when delete button is pressed, the burial_id is passed into the function and it is removed from the maintbl
        [HttpPost]
        public IActionResult Delete(string BurialId)
        {
            _context.MainTbl.Remove(_context.MainTbl.Find(BurialId));
            _context.SaveChanges();

            return RedirectToAction("BurialRecords");
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

            if (ModelState.IsValid)
            {
                _context.MainTbl.Remove(_context.MainTbl.Find(burial.BurialId));
                _context.SaveChanges();
                string id = burial.BurialLocationNs + " " + burial.LowPairNs + "/" + burial.HighPairNs
                        + " " + burial.BurialLocationEw + " " + burial.LowPairEw + "/" + burial.HighPairEw
                        + " " + burial.BurialSubplot + " #" + burial.BurialNumber;
                burial.BurialId = id;

                SqlConnection con = new SqlConnection(Helpers.GetRDSConnectionString());
                //Replaced Parameters with Value
                string query = "INSERT INTO main_tbl " +
                    "(Burial_ID, burial_location_NS, burial_location_EW, low_pair_NS, high_pair_NS, low_pair_EW, high_pair_EW, burial_subplot, burial_number, " +
                    "south_to_head, south_to_feet, west_to_head, west_to_feet, length_of_remains, burial_depth, " +
                    "artifact_found, hair_color, year_found, month_found, day_found) " +
                    "VALUES(@Burial_ID, @burial_location_NS, @burial_location_EW, @low_pair_NS, @high_pair_NS, @low_pair_EW, @high_pair_EW, @burial_subplot, @burial_number, " +
                    "@south_to_head, @south_to_feet, @west_to_head, @west_to_feet, @length_of_remains, @burial_depth, " +
                    "@artifact_found, @hair_color, @year_found, @month_found, @day_found)";
                SqlCommand cmd = new SqlCommand(query, con);

                //Pass values to Parameters
                cmd.Parameters.AddWithValue("@Burial_ID", burial.BurialId);
                cmd.Parameters.AddWithValue("@burial_location_NS", burial.BurialLocationNs);
                cmd.Parameters.AddWithValue("@burial_location_EW", burial.BurialLocationEw);
                cmd.Parameters.AddWithValue("@low_pair_NS", burial.LowPairNs);
                cmd.Parameters.AddWithValue("@high_pair_NS", burial.HighPairNs);
                cmd.Parameters.AddWithValue("@low_pair_EW", burial.LowPairEw);
                cmd.Parameters.AddWithValue("@high_pair_EW", burial.LowPairNs);
                cmd.Parameters.AddWithValue("@burial_subplot", burial.BurialSubplot);
                cmd.Parameters.AddWithValue("@burial_number", burial.BurialNumber);
                cmd.Parameters.AddWithValue("@south_to_head", burial.SouthToHead ?? (object)DBNull.Value);
                cmd.Parameters.AddWithValue("@south_to_feet", burial.SouthToFeet ?? (object)DBNull.Value);
                cmd.Parameters.AddWithValue("@west_to_head", burial.WestToHead ?? (object)DBNull.Value);
                cmd.Parameters.AddWithValue("@west_to_feet", burial.WestToFeet ?? (object)DBNull.Value);
                cmd.Parameters.AddWithValue("@length_of_remains", burial.LengthOfRemains ?? (object)DBNull.Value);
                cmd.Parameters.AddWithValue("@burial_depth", burial.BurialDepth ?? (object)DBNull.Value);
                cmd.Parameters.AddWithValue("@artifact_found", burial.ArtifactFound ?? (object)DBNull.Value);
                cmd.Parameters.AddWithValue("@hair_color", burial.HairColor ?? (object)DBNull.Value);
                cmd.Parameters.AddWithValue("@year_found", burial.YearFound ?? (object)DBNull.Value);
                cmd.Parameters.AddWithValue("@month_found", burial.MonthFound ?? (object)DBNull.Value);
                cmd.Parameters.AddWithValue("@day_found", burial.DayFound ?? (object)DBNull.Value);

                try
                {
                    con.Open();
                    cmd.ExecuteNonQuery();
                    Console.WriteLine("Records Inserted Successfully");
                }
                catch (SqlException e)
                {
                    Console.WriteLine("Error Generated. Details: " + e.ToString());
                    return View();
                }
                con.Close();

                return RedirectToAction("BurialRecords");
            }

            return View();
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
