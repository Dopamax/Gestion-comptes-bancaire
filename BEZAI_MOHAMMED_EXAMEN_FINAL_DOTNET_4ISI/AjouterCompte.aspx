<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AjouterCompte.aspx.cs" Inherits="BEZAI_MOHAMMED_EXAMEN_FINAL_DOTNET_4ISI.AjouterCompte" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md-12">
            <h2 class="text-center">Nouveau Compte</h2>
        </div>
    </div>
     <div class="row">
        <div class="col-md-12">
           
            <div class="">
                <div class="form-group">
                    <label>Client: </label>
                    <asp:DropDownList ID="DropDownListClients" CssClass="form-control" runat="server" DataSourceID="SqlDataSource1Client" DataTextField="nom" DataValueField="Id"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1Client" runat="server" ConnectionString="<%$ ConnectionStrings:bezai_mohammed_examfinalConnectionString2 %>" SelectCommand="SELECT [Id], [nom] FROM [ClientSet1]"></asp:SqlDataSource>
                </div>
                <div class="form-group">
                    <label>Date création: </label>
                    <asp:Calendar ID="Calendar1_date_creation" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px">
                        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                        <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                        <TodayDayStyle BackColor="#CCCCCC" />
                    </asp:Calendar>
                </div>
                 <div class="form-group">
                    <label>Solde: </label>
                    <asp:TextBox ID="txt_solde" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
    
                 <div class="form-group">
                     <asp:Button ID="btn_ajouter" CssClass="btn btn-info" runat="server" Text="Ajouter" OnClick="btn_ajouter_Click" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
