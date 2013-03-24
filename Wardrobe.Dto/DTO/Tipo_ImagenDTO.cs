using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Runtime.Serialization;

namespace Wardrobe.Dto.DTO
{
    class Tipo_ImagenDTO
    {
        [DataMember]
        public int ID_TIPO_IMAGE { get; set; }
        [DataMember]
        public String DESCRIPCION { get; set; }
    }
}
