using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Wardrobe.Dao.DAO;

namespace Wardrobe.Web
{
    public partial class Inicio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void loginAction_Click(object sender, ImageClickEventArgs e)
        {
            try
            {
                //if (UsuarioDAO.ValidarUsuario(txtLogin.Text, txtPassword.Text) != null)
                //{
                //    Session["nombreUsuario"] = txtLogin.Text;
                //    Response.Redirect("Menu.aspx");
                //}
            }
            catch(Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
        }

    }
}