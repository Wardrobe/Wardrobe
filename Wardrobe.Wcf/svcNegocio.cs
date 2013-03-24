using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using Wardrobe.Dto;
using Wardrobe.Dao;
using System.ServiceModel.Activation;
using Wardrobe.Dto.DTO;

namespace Wardrobe.Wcf
{
    [ServiceContract(Namespace = "Servicios")]
    [AspNetCompatibilityRequirements(RequirementsMode = AspNetCompatibilityRequirementsMode.Allowed)]
    public class svcNegocio 
    {
        [OperationContract]
        public List<TiendaDTO> obtenerTiendas()
        {
            return TiendaDao.obtenerTiendas();
        }

        [OperationContract]
        public List<NoticiaDTO> obtenerNoticias(int id)
        {
            return NoticiaDAO.getAllTienda();
        }

        [OperationContract]
        public Boolean validarCodigo(String codigo)
        {
            Boolean estado=TiendaDao.validarCodigo(codigo);
            return estado;
        }

       
        [OperationContract]
        public Boolean registrar(String id_usuario,String id_password,String email,String codigo)
        {
            Boolean estado=TiendaDao.registrar(id_usuario, id_password, email, codigo);
            return estado;

        }

        [OperationContract]
        public TiendaDTO obtenerTienda(int id_tienda)
        {
            TiendaDTO estado = TiendaDao.obtenerTiendaID(id_tienda);
            return estado;
        }


        //MENSAJES
        [OperationContract]
        public Boolean enviarMensaje(String de,String asunto, String mensaje)
        {
            Boolean estado = TiendaDao.guardarMensaje(de, asunto, mensaje);
            return estado;
        }

        [OperationContract]
        public String obtenerCantidadMensaje(int id)
        {
            return TiendaDao.obtenerCantidadMensaje(id).ToString();
        }

        [OperationContract]
        public List<MensajeDTO> cargarTablaMensaje(int id)
        {
            return TiendaDao.cargarTablaMensaje(id);
        }

        [OperationContract]
        public String enviarRespuesta(int receptor,int emisor,String asunto,String respuesta,int id)
        {
            if (TiendaDao.enviarRespuesta(receptor, emisor, asunto,respuesta) == true)
            {
                TiendaDao.actualizarMensaje(id,2);
                return "ok";
            }
            else
                return "problema";
        }
        [OperationContract]
        public String eliminarMensaje(int id)
        {
            try
            {
                TiendaDao.actualizarMensaje(id, 3);
                return "ok";
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                return "problema";
            }
        }

        

        
        
        

    }
}