using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BEZAI_MOHAMMED_EXAMEN_FINAL_DOTNET_4ISI
{
    public partial class VisualierHistoriqueOperations : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_rechercher_Click(object sender, EventArgs e)
        {
            CompteDao cdao = new CompteDao();
            List<Opération> liste_o=cdao.FindOperationBetween(Calendar1_debut.SelectedDate,Calendar1_fin.SelectedDate);
            GridView_liste_operations.DataSource = liste_o;
            GridView_liste_operations.DataBind();
        }
    }
}