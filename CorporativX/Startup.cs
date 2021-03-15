using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(CorporativX.Startup))]
namespace CorporativX
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
