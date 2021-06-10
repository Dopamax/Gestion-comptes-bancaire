using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BEZAI_MOHAMMED_EXAMEN_FINAL_DOTNET_4ISI
{
    public partial class ConsulterSolde : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList_Comptes_SelectedIndexChanged(object sender, EventArgs e)
        {
            CompteDao cdao = new CompteDao();
            Compte c = new Compte();
            c=cdao.FindCompte(int.Parse(DropDownList_Comptes.SelectedValue));
            txt_Solde.Text = c.solde;
            Label1.Text = c.solde;
        }

        protected void DropDownList_Client_SelectedIndexChanged(object sender, EventArgs e)
        {
            CompteDao cdao = new CompteDao();
            List<Compte> liste_c = cdao.FindCompte4Client(int.Parse(DropDownList_Client.SelectedValue));
            DropDownList_Comptes.DataSource = liste_c;
            DropDownList_Comptes.DataTextField = "date_creation";
            DropDownList_Comptes.DataValueField = "Id";
            DropDownList_Comptes.DataBind();
        }
    }
}