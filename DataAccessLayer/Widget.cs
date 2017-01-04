namespace DataAccessLayer
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("template.Widget")]
    public partial class Widget
    {
        public long WidgetId { get; set; }

        public bool IsLarge { get; set; }

        public int Number { get; set; }

        public bool IsStainless { get; set; }

        public DateTimeOffset CreatedWhen { get; set; }

        public long ShipmentId { get; set; }

        public virtual Shipment Shipment { get; set; }

        public decimal Price { get; set; }
    }
}
