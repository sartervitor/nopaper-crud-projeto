using NoPaper.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NoPaper
{
    public partial class Cadastrar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCadastrar_Click(object sender, EventArgs e)
        {

            txtNome.CssClass = "form-control";
            txtEmail.CssClass = "form-control";
            txtSenha.CssClass = "form-control";
            txtRepetirSenha.CssClass = "form-control";
            lbResult.Visible = false;

            if (string.IsNullOrEmpty(txtNome.Text))
            {
                lbResult.Text = "Informe seu Nome!";
                lbResult.Visible = true;
                txtNome.CssClass = "form-control alert-danger";
            }
            else if (string.IsNullOrEmpty(txtEmail.Text))
            {
                lbResult.Text = "Informe seu E-mail!";
                lbResult.Visible = true;
                txtEmail.CssClass = "form-control alert-danger ";
            }
            else if (string.IsNullOrEmpty(txtSenha.Text))
            {
                lbResult.Text = "Insira sua Senha!";
                lbResult.Visible = true;
                txtSenha.CssClass = "form-control alert-danger";
            }
            else if (txtSenha.Text != txtRepetirSenha.Text)
            {
                lbResult.Text = "As senhas não conferem!";
                lbResult.Visible = true;
                txtSenha.CssClass = "form-control alert-danger";
                txtRepetirSenha.CssClass = "form-control alert-danger";
            }
            else
            {
                tabUsuario objUsuario = new tabUsuario();
                objUsuario.dataDeCadastro = DateTime.Now;
                objUsuario.email = txtEmail.Text;
                objUsuario.nome = txtNome.Text;
                objUsuario.senha = txtSenha.Text;

                UsuarioDAL usuDal = new UsuarioDAL();
                usuDal.CadastrarUsuario(objUsuario);
                ScriptManager.RegisterStartupScript(this, this.GetType(), "modalScript", "MostrarModal();", true);


                txtNome.Text = "";
                txtEmail.Text = "";
                txtSenha.Text = "";
                txtRepetirSenha.Text = "";

            }
        }
    }
}