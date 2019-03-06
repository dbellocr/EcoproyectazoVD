<%@ Page Title="" Language="C#" MasterPageFile="~/PrincipalCliente.Master" AutoEventWireup="true" CodeBehind="ConfigurarCuenta.aspx.cs" Inherits="Ecomonedas.Menus.Cliente.ConfigurarCuenta" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <title>Configurar mi Cuenta</title>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">

        <div class="row">

            <div class="col-md-2">
            </div>
            <div class="col-md-10">

                <div style="border: 1px solid #EFEFF0; background-color: white; padding-bottom: 220px; width: 100%; margin-top: 15px; box-shadow: 2px 2px 10px 10px #F3F3F4">

                    <div class="row">

                        <div class="col-md-1"></div>

                        <div class="col-md-5" style="margin-top: 40px;">

                            <h3>Mis datos</h3>

                            <asp:Label ID="lblNombre" runat="server" Text="Digite su nombre completo" CssClass="etiqueta"></asp:Label>
                            <br />
                            <input id="Text2" placeholder="Nombre" runat="server" type="text" style="width: 32%; margin: auto; margin-top: 10px; display: inline;" class="form-control" />
                            <input id="Text3" placeholder="Primer Apellido" runat="server" type="text" style="width: 32%; margin: auto; display: inline;" class="form-control" />
                            <input id="Text4" placeholder="Segundo Apellido" runat="server" type="text" style="width: 34%; margin: auto; display: inline;" class="form-control" />
                            <br />
                            <br />
                            <asp:Label ID="Label1" runat="server" Text="Dirección"></asp:Label>
                            <br />
                            <textarea id="txtDireccion" placeholder="Dirección" runat="server" class="form-control" style="width: 100%; margin-top: 10px;"></textarea>
                            <br />
                            <asp:Label ID="Label2" runat="server" Text="Teléfono"></asp:Label>
                            <br />
                            <input id="txtTelefono" type="text" placeholder="Teléfono" runat="server" style="width: 40%;" class="form-control" />
                            <br />
                            <asp:Label ID="lblCorreo" runat="server" Text="Correo" CssClass="etiqueta"></asp:Label>
                                    <br />
                                    <input id="txtCorreo1" placeholder="Correo Electrónico" runat="server" type="text" style="width: 60%;" class="form-control" />
                                    <br />


                        </div>

                        <div class="col-md-1"></div>

                        <div class="col-md-5" style="margin-top: 40px;">

                                    <h3>Cambiar Contraseña</h3>
                                    
                                    <asp:Label ID="Label3" runat="server" Text="Contraseña" CssClass="etiqueta"></asp:Label>
                                    <br />
                                    <input id="txtContrasenna" placeholder="Contraseña" runat="server" type="text" style="width: 60%;" class="form-control" />
                                    <br />

                                    <asp:Label ID="Label5" runat="server" Text="Confirmar Contraseña" CssClass="etiqueta"></asp:Label>
                                    <br />
                                    <input id="Text5" placeholder="Confirmar Contraseña" runat="server" type="text" style="width: 60%;" class="form-control" /><br />
                                    <asp:Button ID="btnConfirmar" Text="Guardar Contraseña" runat="server" CssClass="btn btn-primary text-white" />

                        </div>


                    </div>

                </div>
            </div>

        </div>

    </div>



</asp:Content>
