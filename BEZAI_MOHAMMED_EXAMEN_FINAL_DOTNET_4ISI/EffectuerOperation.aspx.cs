using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BEZAI_MOHAMMED_EXAMEN_FINAL_DOTNET_4ISI
{
    public partial class EffectuerOperation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_crediter_Click(object sender, EventArgs e)
        {
            CompteDao cdao = new CompteDao();
            Compte c = new Compte();
            Client cl = new Client();
            Opération o = new Opération();
            c=cdao.FindCompte(int.Parse(DropDownList_Comptes.SelectedValue));
            cl = cdao.FindClient(int.Parse(DropDownList_Client.SelectedValue));
            c.Client = cl;
            o.montant = txt_montant_crediter.Text;
            c.solde = (double.Parse(c.solde) - double.Parse(o.montant)).ToString();
            o.Compte = c;
            o.type = "créditer";
            o.date = DateTime.Now.Date;
            cdao.AddOperation(o);
        }

        protected void DropDownList_Client_SelectedIndexChanged(object sender, EventArgs e)
        {
            CompteDao cdao = new CompteDao();
            List<Compte> liste_c=cdao.FindCompte4Client(int.Parse(DropDownList_Client.SelectedValue));
            DropDownList_Comptes.DataSource=liste_c;
            DropDownList_Comptes.DataTextField = "date_creation";
            DropDownList_Comptes.DataValueField = "Id";
            DropDownList_Comptes.DataBind();
        }

        protected void btn_debiter_Click(object sender, EventArgs e)
        {
            CompteDao cdao = new CompteDao();
            Compte c = new Compte();
            Client cl = new Client();
            Opération o = new Opération();
            c = cdao.FindCompte(int.Parse(DropDownList_Comptes.SelectedValue));
            cl = cdao.FindClient(int.Parse(DropDownList_Client.SelectedValue));
            c.Client = cl;
            o.montant = txt_montant_debiter.Text;
            c.solde = (double.Parse(c.solde) + double.Parse(o.montant)).ToString();
            o.Compte = c;
            o.type = "débiter";
            o.date = DateTime.Now.Date;
            cdao.AddOperation(o);
        }
    }
}