<%@ Page Title="" Language="C#" MasterPageFile="~/Sistema/HomeSistema.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="NoPaper.Sistema.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h1 class="display-5">Sistema de Admin</h1>

        <asp:Button ID="btnSair" runat="server" CssClass="btn btn-small btn-danger" Text="Sair" OnClick="btnSair_Click"/>
    </div>
</asp:Content>
