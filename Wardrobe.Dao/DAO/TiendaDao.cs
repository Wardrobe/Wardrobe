using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using Wardrobe.Dto;
using Wardrobe.Dto.DTO;

namespace Wardrobe.Dao
{
   

    //TODO: CREAR DAO MENSAJE
    public class TiendaDao
    {
        public static TiendaDTO obtenerTiendaID(int idTienda)
        {
            TiendaDTO t = null;
            try
            {
             using(WardrobeDataContext entidad=new WardrobeDataContext())
             {
                 var l_producto = (from tienda in entidad.Tienda
                                   from producto in entidad.Producto
                                   where tienda.ID_TIENDA == producto.ID_TIENDA &&
                                   tienda.ID_TIENDA == idTienda
                                   select new ProductoDTO
                                   {
                                       DESCRIPCION = producto.DESCRIPCION,
                                       ID_PRODUCTO = producto.ID_PRODUCTO,
                                       LISTA_IMAGEN_PRODUCTO = (from imagen_producto in entidad.Imagen_Producto
                                                                where imagen_producto.ID_PRODUCTO == producto.ID_PRODUCTO
                                                                select new ImagenProductoDTO
                                                                {
                                                                    URL = imagen_producto.URL
                                                                }).ToList(),
                                       NOMBRE = producto.NOMBRE,
                                       OCACION = producto.OCACION,
                                       TALLA = producto.TALLA,
                                       VALOR = producto.VALOR
                                   }).ToList();

                 t = (from tienda in entidad.Tienda
                      from logo in entidad.Imagen
                      from portada in entidad.Imagen
                      from localidad in entidad.Localidad
                      from comuna in entidad.Comuna
                      from region in entidad.Region
                      from pais in entidad.Pais
                      where logo.ID_TIPO_IMAGEN == 1 &&
                            portada.ID_TIPO_IMAGEN == 2 &&
                            tienda.ID_TIENDA == logo.ID_DUENO &&
                            tienda.ID_TIENDA == portada.ID_DUENO &&
                            logo.ID_TIPO_DUENO == 1 &&
                            portada.ID_TIPO_DUENO == 1 &&
                            tienda.ID_TIENDA == localidad.ID_LOCALIDAD &&
                            localidad.ID_COMUNA == comuna.ID_COMUNA &&
                            comuna.ID_REGION == region.ID_REGION &&
                            region.ID_PAIS == pais.ID_PAIS &&
                            tienda.ID_TIENDA == idTienda
                      select new TiendaDTO
                      {
                          FECHA_CREACION = (DateTime)tienda.FECHA_CREACION,
                          NOMBRE = tienda.NOMBRE,
                          ID_TIENDA = tienda.ID_TIENDA,
                          RESENA = tienda.RESENA,
                          URL_LOGO = logo.URL,
                          UBICACION = localidad.CALLE + " " + localidad.NUMERO + " " + comuna.NOMBRE + " " + region.NOMBRE + " " + pais.NOMBRE,
                          URL_PORTADA = portada.URL,
                          LISTA_PRODUCTOS = l_producto
                      }).FirstOrDefault();
             }
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
            finally
            {
               
            }
            return t;
        }

        public static TiendaDTO obtenerTiendaCodigo(string cod)
        {
            //WardrobeEntities entidad = new WardrobeEntities();
            //TiendaDTO t = null;
            //try
            //{
            //    //t = (from tienda in entidad.Tiendas
            //    //     from logo in entidad.Imagens
            //    //     from portada in entidad.Imagens
            //    //     from localidad in entidad.Localidads
            //    //     from comuna in entidad.Comunas
            //    //     from region in entidad.Regions
            //    //     from pais in entidad.Pais
            //    //     where logo.ID_TIPO_IMAGEN == 1 &&
            //    //           portada.ID_TIPO_IMAGEN == 2 &&
            //    //           tienda.ID_TIENDA == logo.ID_DUENO &&
            //    //           tienda.ID_TIENDA == portada.ID_DUENO &&
            //    //           logo.ID_TIPO_DUENO == 1 &&
            //    //           portada.ID_TIPO_DUENO == 1 &&
            //    //           tienda.ID_TIENDA == localidad.ID_LOCALIDAD &&
            //    //           localidad.ID_COMUNA == comuna.ID_COMUNA &&
            //    //           comuna.ID_REGION == region.ID_REGION &&
            //    //           region.ID_PAIS == pais.ID_PAIS &&
            //    //           tienda.ID_TIENDA == Int32.Parse(cod)
            //    //     select new TiendaDTO
            //    //     {
            //    //         FECHA_CREACION = (DateTime)tienda.FECHA_CREACION,
            //    //         NOMBRE = tienda.NOMBRE,
            //    //         ID_TIENDA = tienda.ID_TIENDA,
            //    //         RESENA = tienda.RESENA,
            //    //         URL_LOGO = logo.URL,
            //    //         UBICACION = localidad.CALLE + " " + localidad.NUMERO + " " + comuna.NOMBRE + " " + region.NOMBRE + " " + pais.NOMBRE,
            //    //         URL_PORTADA = portada.URL,
            //    //         LISTA_PRODUCTOS = (from producto in entidad.Productoes
            //    //                            from imagen in entidad.Imagens
            //    //                            where producto.ID_TIENDA == tienda.ID_TIENDA &&
            //    //                            imagen.ID_TIPO_IMAGEN == 3 &&
            //    //                            imagen.ID_DUENO == tienda.ID_TIENDA &&
            //    //                            imagen.ID_TIPO_DUENO == 1
            //    //                            select new ProductoDTO
            //    //                            {
            //    //                                NOMBRE = producto.NOMBRE,
            //    //                                DESCRIPCION = producto.DESCRIPCION
            //    //                            })
            //    //     }).ToList();
            //}
            //catch (Exception ex)
            //{
            //    throw new Exception(ex.Message);
            //}
            //finally
            //{
            //    entidad.Dispose();
            //}
            return null;
        }

        public static List<TiendaDTO> obtenerTiendas()
        {
            
            List<TiendaDTO> t = new List<TiendaDTO>();
            try
            {
                using (WardrobeDataContext entidad = new WardrobeDataContext())
                { 
                    t = (from tienda in entidad.Tienda
                         from logo in entidad.Imagen
                         from portada in entidad.Imagen
                         from localidad in entidad.Localidad
                         from comuna in entidad.Comuna
                         from region in entidad.Region
                         from pais in entidad.Pais
                         where logo.ID_TIPO_IMAGEN == 1 && 
                               portada.ID_TIPO_IMAGEN == 2 && 
                               tienda.ID_TIENDA == logo.ID_DUENO && 
                               tienda.ID_TIENDA == portada.ID_DUENO &&
                               logo.ID_TIPO_DUENO == 1 && 
                               portada.ID_TIPO_DUENO == 1 &&
                               tienda.ID_TIENDA == localidad.ID_LOCALIDAD &&
                               localidad.ID_COMUNA == comuna.ID_COMUNA &&
                               comuna.ID_REGION==region.ID_REGION &&
                               region.ID_PAIS == pais.ID_PAIS
                         select new TiendaDTO
                         {
                             FECHA_CREACION = (DateTime)tienda.FECHA_CREACION,
                             NOMBRE = tienda.NOMBRE,
                             ID_TIENDA = tienda.ID_TIENDA,
                             RESENA = tienda.RESENA,
                             URL_LOGO = logo.URL,
                             UBICACION = localidad.CALLE + " " + localidad.NUMERO + " " + comuna.NOMBRE + " " + region.NOMBRE + " "+ pais.NOMBRE,
                             URL_PORTADA = portada.URL
                         }).ToList();
                }
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
            finally
            {
               
            }
            return t;
        }

        public static Boolean validarCodigo(string cod)
        { 
            //WardrobeEntities entidad = new WardrobeEntities();
            //try
            //{
            //    var t = (from codigo in entidad.Codigoes
            //             from estado in entidad.Estadoes
            //             where codigo.ID_ESTADO == estado.ID_ESTADO &&
            //                   estado.ID_ESTADO == 1 &&
            //                   codigo.CODIGO1 == cod
            //             select codigo).FirstOrDefault();
            //    if (t != null)
            //    {
            //        return true;
            //    }
            //    else
            //    {
                  return false;
            //    }
            //}
            //catch (Exception ex)
            //{
            //    throw new Exception(ex.Message);
            //}
            //finally
            //{
            //    entidad.Dispose();
            //}
        }

        public static Boolean registrar(String id_usuario, String id_password, String email, String cod)
        {
            //WardrobeEntities entidad = new WardrobeEntities();
            //try
            //{
            //    //var t = (from codigo in entidad.Codigoes
            //    //         from tienda in entidad.Tiendas
            //    //         where codigo.ID_TIENDA == tienda.ID_TIENDA 
            //    //         select codigo).FirstOrDefault();

            //    //t.ID_ESTADO = 2;
            //    //t.Tienda.USUARIO = id_usuario;
            //    //t.Tienda.PASSWORD = id_password;
            //    //t.Tienda.EMAIL = email;

            //   // entidad.SaveChanges();
            //    return true;
            //}
            //catch (Exception ex)
            //{
            //    Console.WriteLine(ex.Message);
                return false;
            //}
            //finally
            //{
            //    entidad.Dispose();
            //}
        }
        
        //MENSAJES
        //TODO EMISOR Y RECEPTOR ESTAN EN DURO!
        public static Boolean guardarMensaje(String de, String asunto, String contenido)
        {
            try
            {
                using (WardrobeDataContext db = new WardrobeDataContext())
                {
                    Mensaje mensaje = new Mensaje();
                    mensaje.asunto = asunto;
                    mensaje.mensaje1 = contenido;
                    mensaje.fecha_envio = DateTime.Now;
                    mensaje.id_usuario_de = 1;
                    mensaje.id_usuario_para = 1;
                    mensaje.id_estado = 1;
                    db.Mensaje.InsertOnSubmit(mensaje);
                    db.SubmitChanges();
                    return true;
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                return false;
            }
        
        }

        public static int obtenerCantidadMensaje(int id)
        {
            try
            {
                using (WardrobeDataContext db = new WardrobeDataContext())
                {
                    var cantidad = db.Mensaje.Where(p => p.id_usuario_para == id && p.id_estado == 1).Count();
                    return cantidad;
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                return 0;
            }
        }

        public static List<MensajeDTO> cargarTablaMensaje(int id)
        {
            try
            {
                using (WardrobeDataContext db=new WardrobeDataContext())
                {
                    var lista = (from mensaje in db.Mensaje
                                 from usuario in db.Usuario
                                 where mensaje.id_usuario_para == id && mensaje.id_usuario_de == usuario.ID_USUARIO && mensaje.id_estado == 1
                                 select new MensajeDTO
                                 {
                                     asunto=mensaje.asunto,
                                     fechaEnvio=mensaje.fecha_envio.Value,
                                     idMensaje=mensaje.id_mensaje,
                                     mensaje=mensaje.mensaje1,
                                     nombreEmisor= usuario.NOMBRE,
                                     idEmisor=usuario.ID_USUARIO
                                 }).ToList();


                    return lista;
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                return null;
            }
        }
        
         public static Boolean  enviarRespuesta(int receptor, int emisor, String asunto,String respuesta)
        {
            try
            {
                using (WardrobeDataContext db=new WardrobeDataContext())
                {
                    Mensaje mensaje = new Mensaje();
                    mensaje.asunto = asunto;
                    mensaje.fecha_envio = DateTime.Now;
                    mensaje.id_usuario_de = emisor;
                    mensaje.id_usuario_para = receptor;
                    mensaje.mensaje1=respuesta;
                    mensaje.id_estado = 1;
                    db.Mensaje.InsertOnSubmit(mensaje);
                    db.SubmitChanges();
                    return true;
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                return false;
            }
        }
         public static Boolean actualizarMensaje(int id_mensaje,int id_estado)
        {
            try
            {
                using (WardrobeDataContext db=new WardrobeDataContext())
                {
                    Mensaje mensaje = db.Mensaje.Where(p => p.id_mensaje == id_mensaje).FirstOrDefault();
                    mensaje.id_estado = id_estado;
                    db.SubmitChanges();
                    return true;
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                return false;
            }
        }
       
    }
}
