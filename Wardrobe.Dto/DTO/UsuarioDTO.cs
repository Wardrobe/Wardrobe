using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Runtime.Serialization;

namespace Wardrobe.Dto.DTO
{
    public class UsuarioDTO
    {
        [DataMember]
        public int ID_USUARIO { get; set; }
        [DataMember]
        public String NOMBRE { get; set; }
        [DataMember]
        public String APELLIDO { get; set; }
        [DataMember]
        public String EMAIL { get; set; }
        [DataMember]
        public String TELEFONO { get; set; }
        [DataMember]
        public String USUARIO { get; set; }
        [DataMember]
        public String PASSWORD { get; set; }
        [DataMember]
        public int ID_TIENDA { get; set; }
        [DataMember]
        public int ID_ESTADO { get; set; }
    }
}
