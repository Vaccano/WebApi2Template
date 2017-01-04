using System;

namespace DataContracts
{
    public class WidgetContract
    {
        public long WidgetId { get; set; }

        public bool IsLarge { get; set; }

        public int Number { get; set; }

        public bool IsStainless { get; set; }

        public DateTimeOffset CreatedWhen { get; set; }

        public long ShipmentId { get; set; }

        public virtual ShipmentContract Shipment { get; set; }

        public decimal Price { get; set; }
    }
}