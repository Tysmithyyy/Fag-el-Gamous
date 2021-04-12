using Microsoft.IdentityModel.Protocols;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;



namespace BetterAmazon.Models
{
	public class Helpers
	{
		public static string GetRDSConnectionString()
		{
			var appConfig = ConfigurationManager.AppSettings;



			//string dbname = appConfig["aam7gxxxne51of"];



			//if (string.IsNullOrEmpty(dbname)) return null;



			//string username = appConfig["admin"];
			//string password = appConfig["Admin!11"];
			//string hostname = appConfig["aam7gxxxne51of.chjpza0zaptm.us-east-1.rds.amazonaws.com"];
			//string port = appConfig["1433"];



			//return "Data Source=" + hostname + ";Initial Catalog=ebdb" + ";User ID=" + username + ";Password=" + password + ";";
			return "Data Source=aam7gxxxne51of.chjpza0zaptm.us-east-1.rds.amazonaws.com,1433;Initial Catalog=gamous;User ID=admin;Password=Admin!11;";
		}
	}
}