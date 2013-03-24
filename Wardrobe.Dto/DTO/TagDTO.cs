using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Runtime.Serialization;

namespace Wardrobe.Dto.DTO
{
    public class TagDTO
    {
        [DataMember]
        public int ID_TAG { get; set; }
        [DataMember]
        public String NOMBRE { get; set; }
    }
}
