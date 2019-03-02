<%@ Page Title="" Language="C#" MasterPageFile="~/PrincipalAdminCentroAcopio.Master" AutoEventWireup="true" CodeBehind="CanjearMaterialesReciclables.aspx.cs" Inherits="Ecomonedas.Menus.AdminCentroAcopio.CanjearMaterialesReciclables" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <title>Canjear Materiales Reciclables</title>
    <style>
        .boton {
            float: right;
        }
        .lista{
            
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

                        <h3>Canjeo de Materiales</h3>

                        <asp:Label ID="Label5" runat="server" Text="Correo Electrónico"></asp:Label><br />
                        <asp:TextBox ID="txtCedula" runat="server" CssClass="form-control"></asp:TextBox><br />


                        <asp:Label ID="Label1" runat="server" Text="Nombre del Cliente"></asp:Label><br />
                        <asp:TextBox ID="txtNombre" AutoCompleteType="Disabled" runat="server" CssClass="form-control"></asp:TextBox><br />

                        <asp:Label ID="Label3" runat="server" Text="Seleccione los materiales a canjear"></asp:Label><br />
                        <asp:Label ID="Label6" runat="server" Text=" (presione control para seleccionar más de un elemento)"></asp:Label>
                        <asp:ListBox ID="lstMateriales" OnSelectedIndexChanged="lstMateriales_SelectedIndexChanged" AutoPostBack="true" runat="server" CssClass="form-control lista" SelectionMode="Multiple" ForeColor="Purple" Font-Size="X-Large"></asp:ListBox>
                        <br />

                        <asp:Label ID="Label2" runat="server" Text="Cantidad de Ecomonedas obtenidas"></asp:Label><br />
                        <asp:TextBox ID="txtTotal" Enabled="false" runat="server" CssClass="form-control"></asp:TextBox><br />

                        <asp:Button ID="btnGuardar" runat="server" Text="Guardar" CssClass="btn btn-success boton" />

                    </div>
                    <div class="col-md-1"></div>
                    <div class="col-md-6" style="margin-top: 40px; margin-bottom: 50px;">

                        <h3>Mi historial de Canjeos</h3>

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
