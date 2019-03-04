<%@ Page Title="" Language="C#" MasterPageFile="~/PrincipalAdministrador.Master" AutoEventWireup="true" CodeBehind="MantenimientoCentrosAcopio.aspx.cs" Inherits="Ecomonedas.Menus.MantenimientoCentrosAcopio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <title>Centros de Acopio</title>
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
                    <div class="col-md-4" style="margin-top: 40px; margin-bottom: 52px;">

                        <asp:Label ID="lblMensaje" runat="server" Visible="false" Width="100%" Text=""></asp:Label>
                        <br />

                        <h3>Datos del Centro de Acopio</h3>

                        <div class="form-group">
                            <asp:Label ID="Label1" runat="server" Text="Nombre"></asp:Label><br />
                            <asp:TextBox ID="txtNombre" AutoCompleteType="Disabled" runat="server" CssClass="form-control"></asp:TextBox><br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNombre" ErrorMessage="Error, debe digitar el nombre del centro de acopio" ForeColor="red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>

                        </div>
                        <div class="form-group">
                            <asp:Label ID="Label2" runat="server" Text="Provincia"></asp:Label><br />
                            <asp:DropDownList ID="ddlProvincia" runat="server" CssClass="form-control"></asp:DropDownList><br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddlProvincia" ErrorMessage="Error, debe seleccionar la provincia en donde se encuetra el centro de acopio" ForeColor="red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                        </div>

                        <div class="form-group">
                            <asp:Label ID="Label3" runat="server" Text="Dirección Exacta"></asp:Label><br />
                            <textarea id="txtDireccion" cols="20" rows="2" runat="server" class="form-control"></textarea><br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtDireccion" ErrorMessage="Error, debe digitar la dirección exacta del centro de acopio" ForeColor="red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                        </div>
                        <div class="form-gruop">
                            <asp:Label ID="Label4" runat="server" Text="Usuario Administrador"></asp:Label><br />
                            <asp:DropDownList ID="ddlUsuario" runat="server" CssClass="form-control"></asp:DropDownList><br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ddlUsuario" ErrorMessage="Error, debe seleccionar un usuario administrador del centro de acopio" ForeColor="red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                        </div>


                        <asp:Label ID="Label7" runat="server" Text="Estado"></asp:Label><br />
                        <div class="form-group">
                            <asp:RadioButton ID="rbActivo" runat="server" GroupName="estado" Text="Activo" />
                            <asp:RadioButton ID="rbInactivo" runat="server" GroupName="estado" Text="Inactivo" /><br />
                        </div>
                        <asp:Button ID="btnGuardar" runat="server" Text="Guardar" CssClass="btn btn-success boton" />

                    </div>
                    <div class="col-md-1"></div>
                    <div class="col-md-6" style="margin-top: 40px; margin-bottom: 50px;">

                        <h3>Lista de Centros de Acopio</h3>

                        <asp:GridView ID="grCentrosAcopio" runat="server" AutoGenerateSelectButton="true" OnSelectedIndexChanged="grCentrosAcopio_SelectedIndexChanged" >
                            <Columns>
                                <asp:BoundField HeaderText="Nombre" DataField="Nombre"></asp:BoundField>
                                <asp:BoundField HeaderText="Provincia" DataField="Provincia.Descripcion"></asp:BoundField>
                                <asp:BoundField HeaderText="Direcci&#243;n" DataField="Direccion_Exacta"></asp:BoundField>
                                <asp:BoundField HeaderText="Usuario Administrador" DataField="Usuario.NombreCompleto"></asp:BoundField>
                            </Columns>
                        </asp:GridView>

                    </div>
                </div>
            </div>

            <div class="col-md-1"></div>


        </div>

    </div>

</asp:Content>
