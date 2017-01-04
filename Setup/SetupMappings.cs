using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AutoMapper;
using AutoMapper.QueryableExtensions;
using AutoMapper.Configuration;
using DataAccessLayer;
using DataContracts;

namespace Setup
{
    public static class SetupMappings
    {
        public static IConfigurationProvider Setup()
        {
            var mapperConfigExpression = new MapperConfigurationExpression();

            mapperConfigExpression.CreateMap<Shipment, ShipmentContract>();
            mapperConfigExpression.CreateMap<ShipmentContract, Shipment>();

            // This service does not own origins or states, so it does not support updates from the contracts to the entities
            mapperConfigExpression.CreateMap<Origin, OriginContract>(); //.ForMember(x=>x.State, opt=>opt.NullSubstitute(new State()));
            mapperConfigExpression.CreateMap<OriginContract, Origin>();

            mapperConfigExpression.CreateMap<State, StateContract>();
            mapperConfigExpression.CreateMap<StateContract, State>();

            mapperConfigExpression.CreateMap<Widget, WidgetContract>();
            mapperConfigExpression.CreateMap<WidgetContract, Widget>();
            
            var mapperConfiguration = new MapperConfiguration(mapperConfigExpression);
            return mapperConfiguration;
        }



        public static void SetupStatic()
        {
            Mapper.Initialize(config =>
            {
                config.CreateMap<Shipment, ShipmentContract>();
                config.CreateMap<ShipmentContract, Shipment>();

                // This service does not own origins or states, so it does not support updates from the contracts to the entities
                config.CreateMap<Origin, OriginContract>(); //.ForMember(x => x.State, opt => opt.MapFrom(src => src.State));
                config.CreateMap<OriginContract, Origin>();

                config.CreateMap<State, StateContract>();
                config.CreateMap<StateContract, State>();

                config.CreateMap<Widget, WidgetContract>();
                config.CreateMap<WidgetContract, Widget>();
            });
        }
    }
}
