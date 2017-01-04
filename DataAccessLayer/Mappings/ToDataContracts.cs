using System.Collections.Generic;
using AutoMapper;
using DataContracts;
using InversionOfControl;

namespace DataAccessLayer.Mappings
{
    public static class ToDataContracts
    {
        private static readonly IMapper mapper = Ioc.Container.GetInstance<IMapper>();

        public static OriginContract ToDataContract(this Origin origin)
        {
            var originContract = mapper.Map<OriginContract>(origin);
            return originContract;
        }

        public static List<OriginContract> ToDataContract(this List<Origin> origins)
        {
            var originContract = mapper.Map<List<OriginContract>>(origins);
            return originContract;
        }
    }
}