<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="NoPaper.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Login</title>
    <link rel="canonical" href="https://getbootstrap.com/docs/4.4/examples/sign-in/">
    <link href="https://getbootstrap.com/docs/4.4/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <meta name="theme-color" content="#563d7c">
    <style>
        .bd-placeholder-img {
            font-size: 1.125rem;
            text-anchor: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
        }

        @media (min-width: 768px) {
            .bd-placeholder-img-lg {
                font-size: 3.5rem;
            }
        }
    </style>
    <link href="https://getbootstrap.com/docs/4.4/examples/sign-in/signin.css" rel="stylesheet">
</head>
<body class="text-center">
    <form id="form1" runat="server" class="form-signin">
        <div>
            <img class="mb-4" src="https://getbootstrap.com/docs/4.4/assets/brand/bootstrap-solid.svg" alt="" width="72" height="72">
            <h1 class="h3 mb-3 font-weight-normal">Login</h1>
            <asp:TextBox ID="txtUsuario" runat="server" CssClass="form-control" placeholder="Usuário"></asp:TextBox>
            <asp:TextBox ID="txtSenha" runat="server" CssClass="form-control" placeholder="Senha"></asp:TextBox>
            <asp:Label ID="lbResultado" runat="server" Visible="false"></asp:Label>
            <div>
                <br />  
                <p>Não tem uma conta? <br />
                      <a href="Cadastrar.aspx" >Cadastre-se</a> 
                </p>
            </div>
            <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn btn-small btn-dark btn-block" OnClick="btnLogin_Click" />
            <p class="mt-5 mb-3 text-muted">Vitor Sarter &copy; 2023</p>
        </div>
    </form>
</body>
</html>
