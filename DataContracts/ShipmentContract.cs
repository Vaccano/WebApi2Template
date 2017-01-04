using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataContracts
{
    public class ShipmentContract
    {
        
        public ShipmentContract()
        {
            Widgets = new List<WidgetContract>();
        }

        public long ShipmentId { get; set; }

        public DateTimeOffset CreatedWhen { get; set; }
        
        public string Airbill { get; set; }

        public int OriginId { get; set; }
        
        public ICollection<WidgetContract> Widgets { get; set; }
    }
}
