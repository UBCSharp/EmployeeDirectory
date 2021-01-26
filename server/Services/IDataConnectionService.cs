using System.Threading.Tasks;

namespace server.Services
{
    public interface IDataConnectionService
    {
        Task InitDbConnectionAsync();
        bool IsConnected();

        string CurrentDatabase();
    }
}