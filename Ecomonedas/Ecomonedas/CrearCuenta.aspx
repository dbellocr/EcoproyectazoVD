<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CrearCuenta.aspx.cs" Inherits="Ecomonedas.CrearCuenta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Crear Cuenta</title>
    <link rel="shortcut icon" href="/imagenes/iconos/LogoProvi1.ico" />
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
            text-align: left;
            margin-bottom: 10px;
        }

        #btnRegistrarse {
            margin: auto;
            text-align: center;
            margin-top: 20px;
        }

        input {
            margin-top: 10px;
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

                <div class="col-md-1"></div>

                <div class="col-md-10">

                    <div style="margin-top: 40px; width: 100%; background-color: white; border-left: 1px solid #ACACAC; border-right: 1px solid #ACACAC; border-bottom: 1px solid #ACACAC; padding-bottom: 50px;">


                        <div class="form-group">
                            <div style="background-color: #4A9723; width: 100%; padding: 40px; color: white; margin-bottom: 20px; text-align: center;">

                                <h2>Bienvenido a <a style="color: #A3D921; font-weight: bold; text-align: center;">Eco</a>monedas</h2>

                                <a style="text-align: center; margin: auto;">Aquí puedes crear tu propia cuenta</a>


                            </div>

                            <div class="row">
                                <div class="col-md-1"></div>
                                <div class="col-md-6">


                                    <asp:Label ID="lblNombre" runat="server" Text="Digite su nombre completo" CssClass="etiqueta"></asp:Label>
                                    <br />
                                    <input id="txtNombre" autocomplete="off" placeholder="Nombre" runat="server" type="text" style="width: 30%; margin: auto; margin-top: 10px; display: inline;" class="form-control" />

                                    <input id="txtPrimerApellido" autocomplete="off" placeholder="Primer Apellido" runat="server" type="text" style="width: 30%; margin: auto; display: inline;" class="form-control" />

                                    <input id="txtSegundoApellido" autocomplete="off" placeholder="Segundo Apellido" runat="server" type="text" style="width: 30%; margin: auto; display: inline;" class="form-control" />
                                    <br />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" CssClass="validaciones" ControlToValidate="txtNombre" ErrorMessage="Error, debe digitar su nombre" ForeColor="red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                                    <br />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" CssClass="validaciones" ControlToValidate="txtPrimerApellido" ErrorMessage="Error, debe digitar su primer apellido" ForeColor="red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                                    <br />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" CssClass="validaciones" ControlToValidate="txtSegundoApellido" ErrorMessage="Error, debe digitar su segundo apellido" ForeColor="red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>

                                    <br />
                                    <asp:Label ID="Label1" runat="server" Text="Dirección"></asp:Label>
                                    <br />

                                    <textarea id="txtDireccion" autocomplete="off" placeholder="Dirección" runat="server" class="form-control" style="width: 50%; margin-top: 10px;"></textarea>

                                    
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" CssClass="validaciones" ControlToValidate="txtDireccion" ErrorMessage="Error, debe digitar su dirección" ForeColor="red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                                    <br />

                                    <asp:Label ID="Label2" runat="server" Text="Teléfono"></asp:Label>
                                    <br />
                                    <input id="txtTelefono" autocomplete="off" type="text" placeholder="Teléfono" runat="server" style="width: 40%;" class="form-control" />

                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" CssClass="validaciones" ControlToValidate="txtTelefono" ErrorMessage="Error, debe digitar su número de teléfono" ForeColor="red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>


                                </div>
                                <div class="col-md-1"></div>
                                <div class="col-md-4">
                                    <asp:Label ID="lblCorreo" runat="server" Text="Correo" CssClass="etiqueta"></asp:Label>
                                    <br />
                                    <input id="txtCorreo1" placeholder="Correo Electrónico" runat="server" type="text" style="width:75%;" class="form-control" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" CssClass="validaciones" ControlToValidate="txtCorreo1" ErrorMessage="Error, debe digitar su correo" ForeColor="red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>

                                    <br />


                                    <asp:Label ID="Label3" runat="server" Text="Contraseña" CssClass="etiqueta"></asp:Label>
                                    <br />
                                    <input type="password" id="txtContrasenna" placeholder="Contraseña" runat="server" style="width: 60%;" class="form-control" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" CssClass="validaciones" ControlToValidate="txtContrasenna" ErrorMessage="Error, debe digitar su contraseña" ForeColor="red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>

                                    <br />

                                    <asp:Label ID="Label5" runat="server" Text="Confirmar Contraseña" CssClass="etiqueta"></asp:Label>
                                    <br />
                                    <input id="txtConfirmarContrasenna" type="password" placeholder="Confirmar Contraseña" runat="server" style="width: 60%;" class="form-control" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" CssClass="validaciones" ControlToValidate="txtConfirmarContrasenna" ErrorMessage="Error, debe confirmar su contraseña" ForeColor="red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>

                                    <asp:Label ID="lblMensaje" CssClass="alert alert-danger" Visible="False" runat="server" Text=""></asp:Label>
                                    <br />


                                </div>

                                <asp:Button CssClass="btn btn-success boton" ID="btnRegistrarse" runat="server" Text="Registrarme" OnClick="btnRegistrarse_Click" Width="30%" />

                            </div>

                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-1"></div>

        </div>


    </form>
</body>
</html>
