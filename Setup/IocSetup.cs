using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AutoMapper;
using Common;
using DataAccessLayer;
using InversionOfControl;
using SimpleInjector;

namespace Setup
{
    public static class IocSetup
    {
        public static void Initialize()
        {
            // Setup automapper
            var mapperConfiguration = SetupMappings.Setup();
            Ioc.Container.Register<IConfigurationProvider>(() => mapperConfiguration, Lifestyle.Singleton);
            Ioc.Container.Register<IMapper>(() => mapperConfiguration.CreateMapper(Ioc.Container.GetInstance), Lifestyle.Singleton);
            Ioc.Container.Register<WebApi2TemplateDataAccess>(Lifestyle.Scoped);



            //SetupMappings.SetupStatic();
            //var dataAccess = new WebApi2TemplateDataAccess();
            //Ioc.Container.Register(() => dataAccess);

            // Example of a service client registration
            //string serviceUrl = CommonHelpers.GetAppSetting("MyServiceUrl");
            //Ioc.Container.Register(() => new MyServiceClient(serviceUrl), Lifestyle.Scoped);
        }
    }
}
