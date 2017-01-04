using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;
using AutoMapper;
using AutoMapper.QueryableExtensions;
using DataAccessLayer.Mappings;
using DataContracts;
using Newtonsoft.Json.Linq;

namespace DataAccessLayer
{
    public class WebApi2TemplateDataAccess
    {
        private readonly IMapper mapper;
        private readonly DataModel contextProvider;
        private static readonly log4net.ILog log = log4net.LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

        public WebApi2TemplateDataAccess(IMapper mapper)
        {
            this.mapper = mapper;

            contextProvider = new DataModel();

            contextProvider.Database.Log = s => System.Diagnostics.Debug.WriteLine(s);
        }

        // Temporary.  DELETE THIS!~!!!
        private WebApi2TemplateDataAccess()
        {
            contextProvider = new DataModel();

            contextProvider.Database.Log = s => System.Diagnostics.Debug.WriteLine(s);
        }

        public ShipmentContract GetShipmentById(long shipmentId)
        {
            var shipment = contextProvider.Shipments.FirstOrDefault(x => x.ShipmentId == shipmentId);
            return shipment.ToDataContract();
        }

        //public IQueryable<OriginContract> Origins()
        //{
        //    var origins = contextProvider.Origins.Select(origin => new OriginContract
        //    {
        //        City = origin.City,
        //        Code = origin.Code,
        //        Name = origin.Name,
        //        OriginId = origin.OriginId,
        //        StateId = origin.StateId,
        //        State = new StateContract
        //        {
        //            StateId = origin.State.StateId,
        //            Name = origin.State.Name,
        //            Abbreviation = origin.State.Abbreviation
        //        }
        //    });

        //    return origins;
        //}


        public IQueryable<OriginContract> Origins()
        {
            return contextProvider.Origins.ProjectTo<OriginContract>(mapper.ConfigurationProvider);
        }

        public ShipmentReferenceDataContract GetShipmentReferenceData()
        {
            var origins = contextProvider.Origins.Include("State").OrderBy(x => x.Code).ToList();


            var shipmentReferenceData = new ShipmentReferenceDataContract
            {
                Origins = origins.ToDataContract()
            };

            return shipmentReferenceData;
        }


    }
}
