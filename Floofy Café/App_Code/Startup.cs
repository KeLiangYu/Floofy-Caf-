using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Floofy_Café.Startup))]
namespace Floofy_Café
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
