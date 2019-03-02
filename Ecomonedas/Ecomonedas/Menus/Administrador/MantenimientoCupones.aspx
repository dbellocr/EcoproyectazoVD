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

                        <asp:Label ID="Label1" runat="server" Text="Nombre"></asp:Label><br />
                        <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control"></asp:TextBox><br />


                        <asp:Label ID="Label3" runat="server" Text="Descripcion"></asp:Label><br />
                        <textarea id="txtDescripcion" cols="20" rows="2" class="form-control"></textarea><br />


                        <asp:Label ID="Label4" runat="server" Text="Monedas necesarias"></asp:Label><br />
                        <asp:TextBox ID="txtMonedasNecesarias" runat="server" CssClass="form-control"></asp:TextBox><br />


                        <asp:Label ID="Label2" runat="server" Text="Imagen"></asp:Label><br />
                        <asp:FileUpload ID="archivoImagen" runat="server" /><br />
                        <br />

                        <asp:Label ID="Label7" runat="server" Text="Estado"></asp:Label><br />
                        <asp:RadioButton ID="rbActivo" runat="server" Text="Activo" />
                        <asp:RadioButton ID="rbInactivo" runat="server" Text="Inactivo" /><br />

                        <asp:Button ID="btnGuardar" runat="server" Text="Guardar" CssClass="btn btn-success boton" />

                    </div>
                    <div class="col-md-1"></div>
                    <div class="col-md-6" style="margin-top: 40px; margin-bottom:50px;">

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
