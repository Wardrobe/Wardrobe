using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Runtime.Serialization;

namespace Wardrobe.Dto
{
    public class NoticiaDTO
    {
        [DataMember]
        public int ID_NOTICIA { get; set; }

        [DataMember]
        public String DETALLE { get; set; }

        [DataMember]
        public String URL { get; set; }

    }
}
