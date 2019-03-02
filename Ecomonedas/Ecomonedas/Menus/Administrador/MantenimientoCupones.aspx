<%@ Page Title="" Language="C#" MasterPageFile="~/PrincipalAdministrador.Master" AutoEventWireup="true" CodeBehind="MantenimientoCupones.aspx.cs" Inherits="Ecomonedas.Menus.Administrador.MantenimientoCupones" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <title>Cupones</title>
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

                        <h3>Datos del Cupón</h3>

                        <div class="form-group">
                            <asp:Label ID="Label1" runat="server" Text="Nombre"></asp:Label><br />
                            <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control"></asp:TextBox><br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNombre" ErrorMessage="Error, debe digitar el nombre del cupón" ForeColor="red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                        </div>

                        <div class="form-group">
                            <asp:Label ID="Label3" runat="server" Text="Descripción"></asp:Label><br />
                            <textarea id="txtDescripcion" runat="server" cols="20" rows="2" class="form-control"></textarea><br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtDescripcion" ErrorMessage="Error, debe digitar una descripción para el cupón" ForeColor="red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                        </div>

                        <div class="form-group">
                            <asp:Label ID="Label4" runat="server" Text="Monedas necesarias"></asp:Label><br />
                            <asp:TextBox ID="txtMonedasNecesarias" runat="server" CssClass="form-control"></asp:TextBox><br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtMonedasNecesarias" ErrorMessage="Error, debe digitar la cantidad de monedas necesarias para el cupón" ForeColor="red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                        </div>

                        <div class="form-group">
                            <asp:Label ID="Label2" runat="server" Text="Imagen"></asp:Label><br />
                            <asp:FileUpload ID="archivoImagen" runat="server" /><br />
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="archivoImagen" ErrorMessage="Error, la imagen es requerida" ForeColor="red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                        </div>

                        <div class="form-group">
                            <asp:Label ID="Label7" runat="server" Text="Estado"></asp:Label><br />
                            <asp:RadioButton ID="rbActivo" runat="server" GroupName="estado" Text="Activo" />
                            <asp:RadioButton ID="rbInactivo" runat="server" GroupName="estado" Text="Inactivo" /><br />
                        </div>

                        <asp:Button ID="btnGuardar" runat="server" Text="Guardar" CssClass="btn btn-success boton" />

                    </div>
                    <div class="col-md-1"></div>
                    <div class="col-md-6" style="margin-top: 40px; margin-bottom: 50px;">

                        <h3>Lista de Cupones</h3>

                        <asp:GridView ID="grCentrosAcopio" runat="server">
                            <Columns>
                                <asp:BoundField HeaderText="Nombre"></asp:BoundField>
                                <asp:BoundField HeaderText="precio"></asp:BoundField>
                                <asp:BoundField HeaderText="Color"></asp:BoundField>
                                <asp:BoundField HeaderText="Imagen"></asp:BoundField>
                            </Columns>
                        </asp:GridView>

                    </div>
                </div>
            </div>

            <div class="col-md-1"></div>


        </div>

    </div>

</asp:Content>
