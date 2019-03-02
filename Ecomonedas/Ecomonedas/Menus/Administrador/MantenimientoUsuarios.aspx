﻿<%@ Page Title="" Language="C#" MasterPageFile="~/PrincipalAdministrador.Master" AutoEventWireup="true" CodeBehind="MantenimientoUsuarios.aspx.cs" Inherits="Ecomonedas.Menus.MantenimientoUsuarios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <title>Usuarios</title>
    <style>
        .boton {
            float: right;
        }

        .validaciones {
            background-color: #F8D7DA;
            color: red;
            padding: 5px;
            border-radius: 3px;
            border: 1px solid red;
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
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" CssClass="validaciones" ControlToValidate="txtNombre" ErrorMessage="Error, debe digitar el nombre del usuario" ForeColor="red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>

                        </div>
                        <div class="form-group">
                            <asp:Label ID="Label5" runat="server" Text="Primer Apellido"></asp:Label><br />
                            <asp:TextBox ID="txtPrimerApellido" AutoCompleteType="Disabled" runat="server" CssClass="form-control"></asp:TextBox><br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" CssClass="validaciones" ControlToValidate="txtPrimerApellido" ErrorMessage="Error, debe digitar el nombre del primer apellido del usuario" ForeColor="red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>

                        </div>

                        <div class="form-group">
                            <asp:Label ID="Label6" runat="server" Text="Segundo Apellido"></asp:Label><br />
                            <asp:TextBox ID="txtSegundoApellido" AutoCompleteType="Disabled" runat="server" CssClass="form-control"></asp:TextBox><br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" CssClass="validaciones" ControlToValidate="txtSegundoApellido" ErrorMessage="Error, debe digitar el segundo apellido del usuario" ForeColor="red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>


                        </div>

                        <div class="form-group">
                            <asp:Label ID="Label3" runat="server" Text="Correo Electrónico"></asp:Label><br />
                            <asp:TextBox ID="txtCorreo" runat="server" AutoCompleteType="Disabled" CssClass="form-control"></asp:TextBox><br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" CssClass="validaciones" ControlToValidate="txtCorreo" ErrorMessage="Error, debe digitar el correo electrónico del usuario" ForeColor="red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Error, debe ingresar un correo electrónico válido" ValidationExpression="^[_a-z0-9-]+(.[_a-z0-9-]+)*@[a-z0-9-]+(.[a-z0-9-]+)*(.[a-z]{2,4})$" ControlToValidate="txtCorreo" ForeColor="red" SetFocusOnError="true" Display="Dynamic"></asp:RegularExpressionValidator>

                        </div>

                        <div class="form-group">
                            <asp:Label ID="Label2" runat="server" Text="Dirección"></asp:Label><br />
                            <asp:TextBox ID="txtDireccion" AutoCompleteType="Disabled" runat="server" CssClass="form-control"></asp:TextBox><br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" CssClass="validaciones" ControlToValidate="txtDireccion" ErrorMessage="Error, debe digitar la dirección del usuario" ForeColor="red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>

                        </div>

                        <div class="form-group">
                            <asp:Label ID="Label4" runat="server" Text="Teléfono"></asp:Label><br />
                            <asp:TextBox ID="txtTelefono" AutoCompleteType="Disabled" runat="server" CssClass="form-control"></asp:TextBox><br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" CssClass="validaciones" ControlToValidate="txtTelefono" ErrorMessage="Error, debe digitar el teléfono del usuario" ForeColor="red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ValidationExpression="^\d+$" ControlToValidate="txtTelefono" runat="server" ErrorMessage="Error, el teléfono ingresado es inválido" Display="Dynamic" ForeColor="Red" SetFocusOnError="true"> </asp:RegularExpressionValidator>


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
