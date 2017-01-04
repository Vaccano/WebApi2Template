using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Http;
using System.Web.Routing;
using InversionOfControl;
using Newtonsoft.Json;
using Newtonsoft.Json.Serialization;
using SimpleInjector;
using SimpleInjector.Integration.WebApi;

namespace WebApi2Template
{
    public class WebApiApplication : System.Web.HttpApplication
    {
        protected void Application_Start()
        {
            IocSetup(GlobalConfiguration.Configuration);

            var formatters = GlobalConfiguration.Configuration.Formatters;

            formatters.JsonFormatter.SerializerSettings.ReferenceLoopHandling = Newtonsoft.Json.ReferenceLoopHandling.Ignore;
            formatters.Remove(GlobalConfiguration.Configuration.Formatters.XmlFormatter);

            var jsonFormatter = formatters.JsonFormatter;
            var settings = jsonFormatter.SerializerSettings;
            settings.Formatting = Formatting.Indented;
            settings.ContractResolver = new CamelCasePropertyNamesContractResolver();

            GlobalConfiguration.Configure(WebApiConfig.Register);
        }

        private void IocSetup(HttpConfiguration configuration)
        {
            Ioc.Container = new Container();
            Ioc.Container.Options.DefaultScopedLifestyle = new WebApiRequestLifestyle();

            // Add in all the IOC Mappings needed.  This is done in another project to keep it clean.
            // If it was done here then the start up project would need a reference to any services that are injected.
            Setup.IocSetup.Initialize();

            Ioc.Container.RegisterWebApiControllers(configuration);

            Ioc.Container.Verify();
            configuration.DependencyResolver = new SimpleInjectorWebApiDependencyResolver(Ioc.Container);


        }
    }
}
