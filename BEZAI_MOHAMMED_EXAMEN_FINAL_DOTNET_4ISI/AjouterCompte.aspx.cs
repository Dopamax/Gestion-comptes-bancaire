using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BEZAI_MOHAMMED_EXAMEN_FINAL_DOTNET_4ISI
{
    public partial class AjouterCompte : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_ajouter_Click(object sender, EventArgs e)
        {
            CompteDao cdao = new CompteDao();
            Compte c = new Compte();
            Client cl = new Client();
            cl = cdao.FindClient(int.Parse(DropDownListClients.SelectedValue));
            c.date_creation = Calendar1_date_creation.SelectedDate.ToShortDateString();
            c.solde = txt_solde.Text;
            cdao.AddCompte(c,cl);
        }
    }
}