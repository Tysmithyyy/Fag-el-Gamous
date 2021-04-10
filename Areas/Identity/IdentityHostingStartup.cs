using System;
using Fag_el_Gamous.Areas.Identity.Data;
using Fag_el_Gamous.Data;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.UI;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;

[assembly: HostingStartup(typeof(Fag_el_Gamous.Areas.Identity.IdentityHostingStartup))]
namespace Fag_el_Gamous.Areas.Identity
{
    public class IdentityHostingStartup : IHostingStartup
    {
        public void Configure(IWebHostBuilder builder)
        {
            builder.ConfigureServices((context, services) => {
                services.AddDbContext<AuthContext>(options =>
                    options.UseSqlServer(
                        context.Configuration.GetConnectionString("AuthContextConnection")));

                services.AddDefaultIdentity<Researcher>(options => options.SignIn.RequireConfirmedAccount = true)
                    .AddEntityFrameworkStores<AuthContext>();

                services.AddDefaultIdentity<Administrator>(options => options.SignIn.RequireConfirmedAccount = true)
                    .AddEntityFrameworkStores<AuthContext>();
            });
        }
    }
}