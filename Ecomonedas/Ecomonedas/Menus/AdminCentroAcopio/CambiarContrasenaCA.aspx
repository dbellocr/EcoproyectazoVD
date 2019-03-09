<%@ Page Title="" Language="C#" MasterPageFile="~/PrincipalAdminCentroAcopio.Master" AutoEventWireup="true" CodeBehind="CambiarContrasenaCA.aspx.cs" Inherits="Ecomonedas.Menus.AdminCentroAcopio.CambiarContrasenaCA" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <title>Mi Cuenta</title>
    <style>
        .boton {
            float: right;
        }

        .campo {
            margin: auto;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">

        <div class="row">

            <div class="col-md-1"></div>


            <div class="col-md-10" style="background-color: white; border-left: 1px solid #ACACAC; border-right: 1px solid #ACACAC; padding-bottom: 50px;">
                <div class="row">
                    <div class="col-md-1"></div>
                    <div class="col-md-10" style="margin-top: 40px; margin-bottom: 164px; text-align: center;">

                        <h2 style=" color: #222222; border-bottom: 1px solid lightgray; width:60%; margin:auto;">Configuración de la cuenta</h2>
                        <br />

                        <div class="form-group">

                            <asp:Label ID="Label1" runat="server" Text="Ingrese su nueva contraseña"></asp:Label>
                            <asp:TextBox ID="txtCambiarContraseña" runat="server" TextMode="Password" CssClass="form-control campo" Width="40%"></asp:TextBox>
                            <asp:RequiredFieldValidator ValidationGroup="guardar" ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCambiarContraseña" ErrorMessage="Error, debe digitar una contraseña" ForeColor="red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                            <br />
                            <br />

                        </div>


                        <div class="form-group">

                            <asp:Label ID="Label2" runat="server" Text="Confirmar nueva contraseña"></asp:Label>
                            <asp:TextBox ID="txtConfirmarContraseña" runat="server" TextMode="Password" CssClass="form-control campo" Width="40%"></asp:TextBox>
                            <asp:RequiredFieldValidator ValidationGroup="guardar" ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtConfirmarContraseña" ErrorMessage="Error, debe confirmar su contraseña" ForeColor="red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                            <br />

                        </div>
                        <asp:Button ID="btnCambiarContrasena" ValidationGroup="guardar" runat="server" Text="Cambiar Contraseña" CssClass="btn btn-success" />

                    </div>
                </div>
            </div>

            <div class="col-md-1"></div>


        </div>

    </div>

</asp:Content>
