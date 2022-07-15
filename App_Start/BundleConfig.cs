using System.Web;
using System.Web.Optimization;

namespace TryLogin
{
    public class BundleConfig
    {
        // For more information on bundling, visit https://go.microsoft.com/fwlink/?LinkId=301862
        public static void RegisterBundles(BundleCollection bundles)
        {
            bundles.Add(new ScriptBundle("~/bundles/jquery").Include(
                "~/Scripts/jquery-{version}.js",
                "~/Scripts/datatables/jquery.datatables.js",
                "~/Scripts/datatables/datatables.bootstrap.js"
            ));

            bundles.Add(new ScriptBundle("~/bundles/jqueryval").Include(
                "~/Scripts/jquery.validate*"));

            // Use the development version of Modernizr to develop with and learn from. Then, when you're
            // ready for production, use the build tool at https://modernizr.com to pick only the tests you need.
            bundles.Add(new ScriptBundle("~/bundles/modernizr").Include(
                "~/Scripts/modernizr-*"));

            bundles.Add(new ScriptBundle("~/bundles/bootstrap").Include(
                "~/Scripts/bootstrap.js",
                //"~/Content/AdminFrontpage/bootstrap.min.css",
                "~/Content/datatables/css/datatables.bootstrap.min.css"
            ));

            bundles.Add(new StyleBundle("~/Content/css").Include(
                "~/Content/bootstrap.css",
            "~/Content/site.css"));


            bundles.Add(new StyleBundle("~/Content/css2").Include(
                "~/Content/bootstrap.css",
                "~/Content/template.css",
                "~/Content/font-awesome.css"));

            bundles.Add(new StyleBundle("~/Content/css3").Include(
             "~/Content/bootstrap.css",
             "~/Content/registrationtemplate.css",
             "~/Content/font-awesome.min.css"));

            bundles.Add(new StyleBundle("~/Content/css4").Include(
           "~/Content/bootstrap.css",
           "~/Content/Createofficeui.css"));
            bundles.Add(new StyleBundle("~/Content/css5").Include(
             "~/Content/bootstrap.css",
             "~/Content/Createdivisionui.css"));
            bundles.Add(new StyleBundle("~/Content/css6").Include(
            "~/Content/bootstrap.css",
            "~/Content/Createnumberui.css"));
            bundles.Add(new StyleBundle("~/Content/css7").Include(
          "~/Content/bootstrap.css",
          "~/Content/Createnumberui.css"));
            bundles.Add(new ScriptBundle("~/Content/css8").Include(
            "~/Content/assets/css/nav-overlay.css",
             "~/Content/assets/css/style-starter.css"
            ));



        }
    }
}
