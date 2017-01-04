namespace DataAccessLayer
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("template.Shipment")]
    public partial class Shipment
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Shipment()
        {
            Widgets = new HashSet<Widget>();
        }

        public long ShipmentId { get; set; }

        public DateTimeOffset CreatedWhen { get; set; }

        [Required]
        [StringLength(30)]
        public string Airbill { get; set; }

        public int OriginId { get; set; }

        public virtual Origin Origin { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Widget> Widgets { get; set; }
    }
}
