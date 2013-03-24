using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Runtime.Serialization;

namespace Wardrobe.Dto.DTO
{
    public class ImagenProductoDTO
    {
        [DataMember]
        public int ID_IMAGEN_PRODUCTO { get; set; }
        [DataMember]
        public String URL { get; set; }
        [DataMember]
        public String URL_THUMB { get; set; }
    }
}
