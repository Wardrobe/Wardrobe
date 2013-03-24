using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Runtime.Serialization;

namespace Wardrobe.Dto.DTO
{
    public class MensajeDTO
    {
        [DataMember]
        public int idMensaje { get; set; }
        [DataMember]
        public String asunto { get; set; }
        [DataMember]
        public String mensaje { get; set; }
        [DataMember]
        public DateTime fechaEnvio { get; set; }
        [DataMember]
        public String  nombreEmisor { get; set; }
        [DataMember]
        public int idEmisor { get; set; }
        [DataMember]
        public int idEstado { get; set; }
    }
}
