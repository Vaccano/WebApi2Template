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
            
            mapperConfigExpression.CreateMap<Origin, OriginContract>(); //.ForMember(x=>x.State, opt=>opt.NullSubstitute(new State()));
            mapperConfigExpression.CreateMap<OriginContract, Origin>();

            mapperConfigExpression.CreateMap<State, StateContract>();
            mapperConfigExpression.CreateMap<StateContract, State>();
            
            
            var mapperConfiguration = new MapperConfiguration(mapperConfigExpression);
            return mapperConfiguration;
        }

        
        public static void SetupStatic()
        {
            Mapper.Initialize(config =>
            {
                config.CreateMap<Origin, OriginContract>(); //.ForMember(x => x.State, opt => opt.MapFrom(src => src.State));
                config.CreateMap<OriginContract, Origin>();

                config.CreateMap<State, StateContract>();
                config.CreateMap<StateContract, State>();
            });
        }
    }
}
