<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cadastrar.aspx.cs" Inherits="NoPaper.Cadastrar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Cadastre-se</title>
    <link rel="canonical" href="https://getbootstrap.com/docs/4.4/examples/sign-in/">

    <!-- Bootstrap core CSS -->
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
    <link href="CSS/style.css" rel="stylesheet" />
</head>
<body class="text-center">
    <form id="form1" runat="server" class="form-signin">

        <img class="mb-4" src="https://getbootstrap.com/docs/4.4/assets/brand/bootstrap-solid.svg" alt="" width="72" height="72">
        <h1 class="h3 mb-3 font-weight-normal">Cadastre-se</h1>

        <asp:TextBox ID="txtNome" runat="server" CssClass="form-control" placeholder="Nome"></asp:TextBox>
        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Email"></asp:TextBox>
        <asp:TextBox ID="txtSenha" runat="server" CssClass="form-control" TextMode="Password" placeholder="Senha"></asp:TextBox>
        <asp:TextBox ID="txtRepetirSenha" runat="server" CssClass="form-control" TextMode="Password" placeholder="Repetir Senha"></asp:TextBox>
        <asp:Label ID="lbResult" runat="server" Visible="false" CssClass="acesso-negado cadastrado"></asp:Label>
        <div id="myModal" class="modal" tabindex="-1">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Cadastro Concluído</h5>
                    </div>
                    <div class="modal-body">
                        <p>Usuário cadastrado com sucesso!</p>
                    </div>
                    <div class="modal-footer">
                        <a href="Cadastrar.aspx"><button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Fechar</button></a> 
                        <a href="Login.aspx"><button type="button" class="btn btn-success" data-bs-dismiss="modal">Login</button></a> 
                    </div>
                </div>
            </div>
        </div>

        <br />
        <p>
            Já tem uma conta?
            <br />
            <a href="Login.aspx">Logar</a>
        </p>
        <asp:Button ID="btnCadastrar" runat="server" Text="Cadastrar" CssClass="btn btn-small btn-dark btn-block" OnClick="btnCadastrar_Click" />
        <p class="mt-5 mb-3 text-muted">Vitor Sarter &copy; 2023</p>



        <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
        <script src="https://getbootstrap.com/docs/4.4/dist/js/bootstrap.bundle.min.js"></script>
        <script>
            function MostrarModal() {
                var myModal = new bootstrap.Modal(document.getElementById('myModal'), {
                    keyboard: false
                });
                myModal.show();
            }
        </script>
    </form>
</body>
</html>
