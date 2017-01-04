using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

using DataAccessLayer;
using Newtonsoft.Json.Linq;
using System.Web.Http.Cors;
using System.Web.Http.OData;
using DataContracts;


namespace WebApi2Template.Controllers
{
    [EnableCors(origins: "*", headers: "*", methods: "*")]
    [EnableQuery]
    public class WebApi2TemplateController : ApiController
    {
        private static readonly log4net.ILog log = log4net.LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);
        private readonly WebApi2TemplateDataAccess dataAccess;

        public WebApi2TemplateController(WebApi2TemplateDataAccess dataAccess)
        {
            this.dataAccess = dataAccess;
        }
        
        [HttpGet]
        public ShipmentReferenceDataContract ShipmentReferenceData()
        {
            return dataAccess.GetShipmentReferenceData();
        }
        
        [HttpGet]
        public IQueryable<OriginContract> Origins()
        {
            return dataAccess.Origins();
        }

        [HttpGet]
        public DateTimeOffset GetDateTime()
        {
            return DateTimeOffset.Now;
        }
    }
}
