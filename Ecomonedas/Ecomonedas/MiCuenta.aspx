<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MiCuenta.aspx.cs" Inherits="Ecomonedas.MiCuenta" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Login</title>
    <script src="Scripts/jquery-3.0.0.js"></script>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.min.js"></script>
    <style>

        @import "https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700";


        body {
            font-family: 'Poppins', 'Century Gothic';
            background-color: #F3F3F4;
        }

        .etiqueta {
            color: #A3D921;
        }

            .etiqueta:hover {
                font-weight: bold;
                color: #A3D921;
                text-decoration: none;
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <nav class="navbar navbar-expand-lg navbar-light" style="background-color: #fcfcfc; border-bottom: 3px solid #A3D921; color: black; font-size: 18px; width: 100%;">
            <a href="Default.aspx">
                <img style="margin-left: 40px;" src="/imagenes/LogoProvi1.png" width="40px" /></a><a style="color: green; font-weight: bold;">Eco</a><a>Monedas</a>
        </nav>

        <div class="container-fluid">

            <div class="row">

                <div class="col-md-2"></div>

                <div class="col-md-8">





                    <div style="margin-top: 40px; width: 100%; background-color: white; text-align: center; border-left: 1px solid #ACACAC; border-right: 1px solid #ACACAC; border-bottom: 1px solid #ACACAC; padding-bottom: 50px;">


                        <div class="form-group">
                            <div style="background-color: #4A9723; width: 100%; padding: 40px; color: white; margin-bottom: 20px;">

                                <h2>Bienvenido a <a style="color: #A3D921; font-weight: bold;">Eco</a>monedas</h2>

                                <a>¿No tienes una cuenta?   </a><a class="etiqueta" href="CrearCuenta.aspx">Regístrate Ahora</a>


                            </div>

                            <asp:Label ID="lblCorreo" runat="server" Text="Correo Electrónico"></asp:Label>
                            <br />
                            <%--<asp:TextBox ID="txtCorreo" runat="server"  Width="50%" CssClass="correo"></asp:TextBox>--%>
                            <input id="txtCorreo1" runat="server" type="text" style="width: 50%; margin: auto;" class="form-control" />
                             <asp:RequiredFieldValidator ValidationGroup="guardar" ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCorreo1" ErrorMessage="Error, debe digitar su nombre de usuario" ForeColor="red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>

                             <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" CssClass="validaciones" ErrorMessage="Error, debe ingresar un correo electrónico válido" ValidationExpression="^[_a-z0-9-]+(.[_a-z0-9-]+)*@[a-z0-9-]+(.[a-z0-9-]+)*(.[a-z]{2,4})$" ControlToValidate="txtCorreo1" ForeColor="red" SetFocusOnError="true" Display="Dynamic"></asp:RegularExpressionValidator>

                            <br />
                            <br />
                            <asp:Label ID="lblContrasenna" runat="server" Text="Contraseña"></asp:Label>
                            <br />
                            <input id="txtContraseña" type="password" runat="server" style="width: 40%; margin: auto;" class="form-control" />
                            <br />
                            <br />
                            <asp:Button CssClass="btn btn-success" OnClick="btnIniciarSesion_Click" ID="btnIniciarSesion" runat="server" Text="Iniciar Sesión" Width="30%" />
                            <div style="text-align: center; padding:15px">
                                <asp:Label ID="lblMensaje" Visible="false" ForeColor="red" runat="server" Text=""></asp:Label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-2"></div>

        </div>

    </form>
</body>
</html>
