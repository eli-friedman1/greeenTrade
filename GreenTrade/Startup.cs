using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(GreenTrade.Startup))]
namespace GreenTrade
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
