<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ConsulterSolde.aspx.cs" Inherits="BEZAI_MOHAMMED_EXAMEN_FINAL_DOTNET_4ISI.ConsulterSolde" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div class="row">
        <div class="dol-md-12">
            <h2 class="text-center">Consulter solde</h2>
        </div>
    </div>
     <div class="row">
        <div class="dol-md-12">
           
            <div class="">
                <div class="form-group">
                    <label>Client: </label>
                    <asp:DropDownList ID="DropDownList_Client" CssClass="form-control" AutoPostBack="true" runat="server" DataSourceID="SqlDataSourceClients" DataTextField="nom" DataValueField="Id" OnSelectedIndexChanged="DropDownList_Client_SelectedIndexChanged"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSourceClients" runat="server" ConnectionString="<%$ ConnectionStrings:bezai_mohammed_examfinalConnectionString %>" SelectCommand="SELECT [Id], [nom] FROM [ClientSet1]"></asp:SqlDataSource>
                </div>
                <div class="form-group">
                    <label>Comptes selon leurs date de création: </label>
                    <asp:DropDownList ID="DropDownList_Comptes" CssClass="form-control" AutoPostBack="true" runat="server" OnSelectedIndexChanged="DropDownList_Comptes_SelectedIndexChanged"></asp:DropDownList>
                </div>
                 <div class="form-group">
                    <label>Solde: </label>
                     <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    <asp:TextBox ID="txt_Solde" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
               
                 <div class="form-group">
                     
                </div>
            </div>
        </div>
    </div>
</asp:Content>
