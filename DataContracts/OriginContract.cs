namespace DataContracts
{
    public class OriginContract
    {
        public int OriginId { get; set; }

        public string Code { get; set; }

        public string Name { get; set; }

        public string City { get; set; }

        public int StateId { get; set; }

        public StateContract State { get; set; }
    }
}