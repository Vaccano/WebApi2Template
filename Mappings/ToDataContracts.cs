using AutoMapper;
using DataAccessLayer;
using DataContracts;
using InversionOfControl;

namespace Mappings
{
    public static class ToDataContracts
    {
        private static readonly IMapper mapper = Ioc.Container.GetInstance<IMapper>();

        public static OriginContract ToDataContract(this Origin origin)
        {
            var originContract = mapper.Map<OriginContract>(origin);
            return originContract;
        }

        public static ShipmentContract ToDataContract(this Shipment shipment)
        {
            var shipmentContract = mapper.Map<ShipmentContract>(shipment);
            return shipmentContract;
        }
    }
}