<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EffectuerOperation.aspx.cs" Inherits="BEZAI_MOHAMMED_EXAMEN_FINAL_DOTNET_4ISI.EffectuerOperation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="dol-md-12">
            <h2 class="text-center">Effectuer opération</h2>
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
                    <asp:DropDownList ID="DropDownList_Comptes" CssClass="form-control" runat="server"></asp:DropDownList>
                </div>
                 <div class="form-group">
                    <label>Montant à créditer: </label>
                    <asp:TextBox ID="txt_montant_crediter" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="form-group">
                     <asp:Button ID="btn_crediter" CssClass="btn btn-info" runat="server" Text="Créditer" OnClick="btn_crediter_Click"  />
                </div>
                 <div class="form-group">
                    <label>Montant à débiter:  </label>
                    <asp:TextBox ID="txt_montant_debiter" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                 <div class="form-group">
                     <asp:Button ID="btn_debiter" CssClass="btn btn-info" runat="server" Text="Débiter" OnClick="btn_debiter_Click" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
