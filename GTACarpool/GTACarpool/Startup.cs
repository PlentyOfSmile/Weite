using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(GTACarpool.Startup))]
namespace GTACarpool
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
