using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Runtime.Serialization;

namespace Wardrobe.Dto.DTO
{
    public class ProductoDTO
    {
        [DataMember]
        public int ID_PRODUCTO { get; set; }
        [DataMember]
        public String NOMBRE { get; set; }
        [DataMember]
        public String DESCRIPCION { get; set; }
        [DataMember]
        public String VALOR { get; set; }
        [DataMember]
        public String OCACION { get; set; }
        [DataMember]
        public String TALLA { get; set; }
        [DataMember]
        public String CANTIDAD_PRENDAS { get; set; }
        [DataMember]
        public List<TagDTO> LISTA_TAG { get; set; }
        [DataMember]
        public List<ImagenProductoDTO> LISTA_IMAGEN_PRODUCTO { get; set; }
    }
}
