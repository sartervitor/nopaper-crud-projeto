using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace NoPaper.DAL
{
    public class UsuarioDAL
    {
        public void CadastrarUsuario(tabUsuario objUsu)
        {
            using (db_NoPaperEntities ctx = new db_NoPaperEntities())
            {
                ctx.tabUsuario.Add(objUsu);
                ctx.SaveChanges();
            }
        }

        public tabUsuario ConsultarUsuario(string usuario, string senha)
        {
            using (db_NoPaperEntities ctx = new db_NoPaperEntities())
            {
                return ctx.tabUsuario.Where(c => c.email == usuario && c.senha == senha).FirstOrDefault();
            }
        }
    }
}