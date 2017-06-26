using Microsoft.AspNet.Identity;
using Microsoft.Owin;
using Microsoft.Owin.Security.Cookies;
using Microsoft.Owin.Security.Google;
using Owin;

namespace Floofy_Café
{
    public partial class Startup {

        public void ConfigureAuth(IAppBuilder app)
        {
            // 啟用應用程式以使用 Cookie 來儲存已登入使用者的資訊
            // 也儲存透過第三方登入提供者登入的使用者資訊。
            // 若您的應用程式允許使用者登入，則此為必要項目
            app.UseCookieAuthentication(new CookieAuthenticationOptions
            {
                AuthenticationType = DefaultAuthenticationTypes.ApplicationCookie,
                LoginPath = new PathString("/Account/Login")
            });
            app.UseExternalSignInCookie(DefaultAuthenticationTypes.ExternalCookie);

            app.UseFacebookAuthentication(
               appId: "1734139466818674",
               appSecret: "9ce692c87f5c7edaf121e66ac393ccd0");
        }
    }
}
