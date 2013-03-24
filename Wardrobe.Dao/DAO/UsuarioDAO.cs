using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Wardrobe.Dto.DTO;

namespace Wardrobe.Dao.DAO
{
    public class UsuarioDAO
    {
        public static UsuarioDTO ValidarUsuario(String Usuario,String Password)
        {
            try
            {
                using (WardrobeDataContext db = new WardrobeDataContext())
                {
                    UsuarioDTO usuario = (from user in db.Usuario
                                          where user.PASSWORD == Password && user.USUARIO1 == Usuario
                                          select new UsuarioDTO
                                          {
                                              APELLIDO = user.APELLIDO,
                                              EMAIL = user.EMAIL,
                                              ID_USUARIO = user.ID_USUARIO,
                                              NOMBRE = user.NOMBRE,
                                              PASSWORD = user.PASSWORD,
                                              TELEFONO = user.TELEFONO,
                                              USUARIO = user.USUARIO1
                                          }).FirstOrDefault();
                    if (usuario != null)
                    {
                        return usuario;
                    }
                    else
                    {
                        return null;
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                return null;
            }
        }
    }
}
