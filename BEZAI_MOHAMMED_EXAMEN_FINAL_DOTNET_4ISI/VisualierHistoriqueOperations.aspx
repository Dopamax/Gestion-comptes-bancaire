<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="VisualierHistoriqueOperations.aspx.cs" Inherits="BEZAI_MOHAMMED_EXAMEN_FINAL_DOTNET_4ISI.VisualierHistoriqueOperations" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="dol-md-12">
            <h2 class="text-center">Historiques des opérations</h2>
        </div>
    </div>
     <div class="row">
        <div class="col-md-6">
           
            <div class="form">
              
                 <div class="form-group">
                    <label>Date debut: </label>
                     <asp:Calendar ID="Calendar1_debut" runat="server"></asp:Calendar>
                </div>
                <div class="form-group">
                    <label>Date fin: </label>
                     <asp:Calendar ID="Calendar1_fin" runat="server"></asp:Calendar>
                </div>

                <div class="form-group">
                    <asp:Button ID="btn_rechercher" CssClass="btn btn-lg btn-info btn-block" runat="server" Text="Rechercher" OnClick="btn_rechercher_Click" />
                </div>
            </div>
        </div>
         <div class="col-md-6">
              <label>Historiques des opérations:</label>
              <asp:GridView ID="GridView_liste_operations" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
                  <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                  <EditRowStyle BackColor="#999999" />
                  <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                  <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                  <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                  <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                  <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                  <SortedAscendingCellStyle BackColor="#E9E7E2" />
                  <SortedAscendingHeaderStyle BackColor="#506C8C" />
                  <SortedDescendingCellStyle BackColor="#FFFDF8" />
                  <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
              </asp:GridView>
         </div>
    </div>
</asp:Content>
