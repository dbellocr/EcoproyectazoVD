<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CrearCuenta.aspx.cs" Inherits="Ecomonedas.CrearCuenta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Crear Cuenta</title>

    <script src="Scripts/jquery-3.0.0.js"></script>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.min.js"></script>
    <style>
        body {
            font-family: 'Century Gothic';
            background-color: #F3F3F4;
        }
        .etiqueta{
            text-align:left;
            margin-bottom:10px;
        }

        #btnRegistrarse{
            margin:auto;
            text-align:center;
            margin-top:20px;
        }

        input{
            margin-top:10px;
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





                    <div style="margin-top: 40px; width: 100%; background-color: white;  border-left: 1px solid #ACACAC; border-right: 1px solid #ACACAC; border-bottom: 1px solid #ACACAC; padding-bottom: 50px;">


                        <div class="form-group">
                            <div style="background-color: #4A9723; width: 100%; padding: 40px; color: white; margin-bottom: 20px; text-align:center;">

                                <h2>Bienvenido a <a style="color: #A3D921; font-weight: bold; text-align:center;">Eco</a>monedas</h2>

                                <a style="text-align:center; margin:auto;">Aquí puedes crear tu propia cuenta</a>


                            </div>

                            <div class="row">
                                <div class="col-md-1"></div>
                                <div class="col-md-6" >

                                    
                                    <asp:Label ID="lblNombre" runat="server" Text="Digite su nombre completo" CssClass="etiqueta"></asp:Label>
                                    <br />
                                    <input id="Text2" placeholder="Nombre" runat="server" type="text" style="width: 30%; margin: auto; margin-top:10px; display:inline;" class="form-control" />
                                    <input id="Text3" placeholder="Primer Apellido" runat="server" type="text" style="width: 30%; margin: auto; display:inline;" class="form-control" />
                                    <input id="Text4" placeholder="Segundo Apellido" runat="server" type="text" style="width: 30%; margin: auto; display:inline;" class="form-control" />
                                     <br /><br />
                                    <asp:Label ID="Label1" runat="server" Text="Dirección"></asp:Label>
                                    <br />
                                    <textarea id="txtDireccion" placeholder="Dirección" runat="server" class="form-control" style="width:50%; margin-top:10px;"></textarea>
                                    <br />
                                    <asp:Label ID="Label2" runat="server" Text="Teléfono"></asp:Label>
                                    <br />
                                    <input id="txtTelefono" type="text" placeholder="Teléfono" runat="server" style="width: 40%; " class="form-control" />
                                    
                                    
                                   
                                </div>
                                <div class="col-md-1"></div>
                                <div class="col-md-4">
                                    <asp:Label ID="lblCorreo" runat="server" Text="Correo" CssClass="etiqueta"></asp:Label>
                                    <br />
                                    <input id="txtCorreo1" placeholder="Correo Electrónico" runat="server" type="text" style="width: 60%;" class="form-control" />
                                    <br />

                                    
                                    <asp:Label ID="Label3" runat="server" Text="Contraseña" CssClass="etiqueta"></asp:Label>
                                    <br />
                                    <input id="txtContrasenna" placeholder="Contraseña" runat="server" type="text" style="width: 60%;" class="form-control" />
                                    <br />

                                    <asp:Label ID="Label5" runat="server" Text="Confirmar Contraseña" CssClass="etiqueta"></asp:Label>
                                    <br />
                                    <input id="Text5" placeholder="Confirmar Contraseña" runat="server" type="text" style="width: 60%;" class="form-control" />
                                    

                                    <br />
                                    <br />
                                    

                                </div>

                                <asp:Button CssClass="btn btn-success .boton" ID="btnRegistrarse" runat="server" Text="Registrarme" Width="30%" />

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
