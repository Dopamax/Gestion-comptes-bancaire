using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BEZAI_MOHAMMED_EXAMEN_FINAL_DOTNET_4ISI
{
    public partial class AjouterClient : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_ajouter_Click(object sender, EventArgs e)
        {
            CompteDao cdao = new CompteDao();
            Client cl = new Client();
            cl.nom = txt_nom.Text;
            cl.log = txt_log.Text;
            cl.password = txt_password.Text;
            cdao.AddClient(cl);
        }
    }
}