using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(InspectV2.Startup))]
namespace InspectV2
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
