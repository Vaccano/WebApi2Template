using System.Collections.Generic;

namespace DataContracts
{

    // This class contains all the reference data needed for the shipment screen in one class.
    // This is used to allow us to download it all in one call to the server.
    public class ShipmentReferenceDataContract
    {
        public List<OriginContract> Origins { get; set; }
    }
}