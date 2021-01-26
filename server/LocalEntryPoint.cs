using System;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.Logging;
using server.Services;

namespace server
{
    /// <summary>
    /// The Main function can be used to run the ASP.NET Core application locally using the Kestrel webserver.
    /// </summary>
    public class LocalEntryPoint
    {
        public static async Task Main(string[] args)
        {
            var host = CreateHostBuilder(args).Build();

            await InitializeServicesAsync(host);

            host.Run();
        }

        private static async Task InitializeServicesAsync(IHost host)
        {
            using var serviceScope = host.Services.CreateScope();
            var services = serviceScope.ServiceProvider;

            try
            {
                var dbConnService = services.GetRequiredService<IDataConnectionService>();
                await dbConnService.InitDbConnectionAsync();
                var logger = services.GetRequiredService<ILogger<LocalEntryPoint>>();
                logger.LogInformation("Connected the DB!");
                logger.LogInformation($"Database: {dbConnService.CurrentDatabase()}");
            }
            catch (Exception ex)
            {
                var logger = services.GetRequiredService<ILogger<LocalEntryPoint>>();
                logger.LogError(ex, "Could not connect to DB.");
            }
        }

        public static IHostBuilder CreateHostBuilder(string[] args) =>
            Host.CreateDefaultBuilder(args)
                .ConfigureWebHostDefaults(webBuilder =>
                {
                    webBuilder.UseStartup<Startup>();
                });
    }
}
