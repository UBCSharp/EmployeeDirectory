using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
namespace server.Services
{
    public class DataConnectionService : IDataConnectionService
    {

        private SqlConnection Connection { get; set; }

        public async Task InitDbConnectionAsync()
        {
            var url = "employee-database.cgoymhnsu3rm.us-west-2.rds.amazonaws.com";
            var password = "password";
            var username = "aecpsc319";
            Connection = new SqlConnection($"Server={url};User Id={username};Password={password};Database=Test");
            
            await Connection.OpenAsync();
            System.Diagnostics.Debug.WriteLine("Done connecting");
        }

        public bool IsConnected()
        {
            return Connection.State == System.Data.ConnectionState.Open;
        }

        public string CurrentDatabase()
        {
            return Connection.Database;
        }
    }
}