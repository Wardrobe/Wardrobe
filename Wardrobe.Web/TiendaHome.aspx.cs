using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Wardrobe.Dto;
using Wardrobe.Dao;
using Wardrobe.Dao.DAO;


namespace Wardrobe.Web
{
    public partial class TiendaHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int a = Int32.Parse(Request.QueryString["ID_TIENDA"]);
            TiendaDTO tienda= TiendaDao.obtenerTiendaID(a);
            imgLogo.ImageUrl = tienda.URL_LOGO;
            lblNombre.Text = tienda.NOMBRE;
            lblUbicacion.Text = tienda.UBICACION;
            direccionMapa.Value = tienda.UBICACION.Replace(",", " ");
        }

        protected void loginAction_Click(object sender, ImageClickEventArgs e)
        {
            if (UsuarioDAO.ValidarUsuario(txtLogin.Text, txtPassword.Text) != null)
            {
                Session["nombreUsuario"] = txtLogin.Text;
                Response.Redirect("Menu.aspx");
            }
        }
    }
}