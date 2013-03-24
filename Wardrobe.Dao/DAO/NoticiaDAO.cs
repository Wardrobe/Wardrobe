using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Wardrobe.Dto;

namespace Wardrobe.Dao
{
    public class NoticiaDAO
    {
        public static List<NoticiaDTO> getAllTienda()
        {
            //WardrobeEntities entidad = new WardrobeEntities();
            //List<NoticiaDTO> lista = new List<NoticiaDTO>();
            //try
            //{
            //    lista = (from noticia in entidad.Noticias
            //             select new NoticiaDTO
            //             {
            //                ID_NOTICIA=noticia.ID_NOTICIA,
            //                DETALLE=noticia.DETALLE,
            //                URL=noticia.URL
            //             }).ToList();
            //}
            //catch (Exception ex)
            //{
            //    throw new Exception(ex.Message);
            //}
            //finally
            //{
            //    entidad.Dispose();
            //}
            //return lista;
        
            List<NoticiaDTO> lista = new List<NoticiaDTO>();
            try
            {
                using (WardrobeDataContext entidad = new WardrobeDataContext())
                {
                    lista = (from noticia in entidad.Noticia
                             select new NoticiaDTO
                             {
                                 ID_NOTICIA = noticia.ID_NOTICIA,
                                 DETALLE = noticia.DETALLE,
                                 URL = noticia.URL
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
            return lista;
        }

        
    }
}
