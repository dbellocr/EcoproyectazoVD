<%@ Page Title="" Language="C#" MasterPageFile="~/PrincipalAdministrador.Master" AutoEventWireup="true" CodeBehind="MantenimientoUsuarios.aspx.cs" Inherits="Ecomonedas.Menus.MantenimientoUsuarios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <title>Usuarios</title>
    <style>
        .boton {
            float: right;
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
                    <div class="col-md-4" style="margin-top: 40px; margin-bottom: 84px;">

                        <h3>Datos del Usuario</h3>

                        <div class="form-group">
                            <asp:Label ID="Label1" runat="server" Text="Nombre"></asp:Label><br />
                            <asp:TextBox ID="txtNombre" AutoCompleteType="Disabled" runat="server" CssClass="form-control"></asp:TextBox><br />
                        </div>
                        <div class="form-group">
                            <asp:Label ID="Label5" runat="server" Text="Primer Apellido"></asp:Label><br />
                            <asp:TextBox ID="txtPrimerApellido" AutoCompleteType="Disabled" runat="server" CssClass="form-control"></asp:TextBox><br />
                        </div>

                        <div class="form-group">
                            <asp:Label ID="Label6" runat="server" Text="Segundo Apellido"></asp:Label><br />
                            <asp:TextBox ID="txtSegundoApellido" AutoCompleteType="Disabled" runat="server" CssClass="form-control"></asp:TextBox><br />
                        </div>

                        <div class="form-group">
                            <asp:Label ID="Label3" runat="server" Text="Correo Electrónico"></asp:Label><br />
                            <asp:TextBox ID="txtCorreo" runat="server" AutoCompleteType="Disabled" CssClass="form-control"></asp:TextBox><br />
                        </div>

                        <div class="form-group">
                            <asp:Label ID="Label2" runat="server" Text="Dirección"></asp:Label><br />
                            <asp:TextBox ID="txtDireccion" AutoCompleteType="Disabled" runat="server" CssClass="form-control"></asp:TextBox><br />
                        </div>

                        <div class="form-group">
                            <asp:Label ID="Label4" runat="server" Text="Teléfono"></asp:Label><br />
                            <asp:TextBox ID="txtTelefono" AutoCompleteType="Disabled" runat="server" CssClass="form-control"></asp:TextBox><br />
                        </div>
                        <asp:Label ID="Label7" runat="server" Text="Estado"></asp:Label><br />
                        <asp:RadioButton ID="rbActivo" GroupName="estado" runat="server" Text="Activo" />
                        <asp:RadioButton ID="rbInactivo" GroupName="estado" runat="server" Text="Inactivo" /><br />






                        <asp:Button ID="btnGuardar" runat="server" Text="Guardar" CssClass="btn btn-success boton" />

                    </div>
                    <div class="col-md-1"></div>
                    <div class="col-md-6" style="margin-top: 40px; margin-bottom: 50px;">

                        <h3>Lista de Usuarios</h3>

                        <asp:GridView ID="grCentrosAcopio" runat="server">
                            <Columns>
                                <asp:BoundField HeaderText="Nombre"></asp:BoundField>
                                <asp:BoundField HeaderText="Provincia"></asp:BoundField>
                                <asp:BoundField HeaderText="Direcci&#243;n"></asp:BoundField>
                                <asp:BoundField HeaderText="Usuario Administrador"></asp:BoundField>
                            </Columns>
                        </asp:GridView>

                    </div>
                </div>
            </div>

            <div class="col-md-1"></div>


        </div>

    </div>
</asp:Content>
