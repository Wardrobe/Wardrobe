using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Runtime.Serialization;
using Wardrobe.Dto.DTO;

namespace Wardrobe.Dto
{
    public class TiendaDTO
    {
        [DataMember]
        public int ID_TIENDA { get; set; }
        
        [DataMember]
        public String NOMBRE { get; set; }
        
        [DataMember]
        public String RESENA { get; set; }
        
        [DataMember]
        public DateTime FECHA_CREACION { get; set; }

        [DataMember]
        public String UBICACION { get; set; }

        [DataMember]
        public String NOMBRE_ESTADO { get; set; }

        [DataMember]
        public String URL_LOGO { get; set; }

        [DataMember]
        public String URL_PORTADA { get; set; }

        [DataMember]
        public List<ProductoDTO> LISTA_PRODUCTOS { get; set; }
    }
}
