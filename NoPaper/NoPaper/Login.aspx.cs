using NoPaper.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NoPaper
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            //TODO
            UsuarioDAL usuDal = new UsuarioDAL();
            tabUsuario objUsuario = new tabUsuario();
            objUsuario = usuDal.ConsultarUsuario(txtUsuario.Text, txtSenha.Text);

            if(objUsuario == null)
            {
                lbResultado.Visible = true;
                lbResultado.Text = "Usuário/Senha inválido!";
            }
            else
            {
                Response.Redirect("Sistema/Home.aspx");
            }

        }
    }
}