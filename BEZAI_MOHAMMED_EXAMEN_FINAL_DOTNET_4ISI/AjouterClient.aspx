<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AjouterClient.aspx.cs" Inherits="BEZAI_MOHAMMED_EXAMEN_FINAL_DOTNET_4ISI.AjouterClient" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="dol-md-12">
            <h2 class="text-center">Nouveau Client</h2>
        </div>
    </div>
     <div class="row">
        <div class="dol-md-12">
           
            <div class="">
                <div class="form-group">
                    <label>Nom: </label>
                    <asp:TextBox ID="txt_nom" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                 <div class="form-group">
                    <label>login: </label>
                    <asp:TextBox ID="txt_log" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                 <div class="form-group">
                    <label>Mot de passe: </label>
                    <asp:TextBox ID="txt_password" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                 <div class="form-group">
                     <asp:Button ID="btn_ajouter" CssClass="btn btn-info" runat="server" Text="Ajouter" OnClick="btn_ajouter_Click" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
