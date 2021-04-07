using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(kithuatphanmemungdung.Startup))]
namespace kithuatphanmemungdung
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
