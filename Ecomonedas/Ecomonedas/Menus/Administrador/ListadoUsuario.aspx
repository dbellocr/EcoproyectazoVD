<%@ Page Title="" Language="C#" MasterPageFile="~/PrincipalAdministrador.Master" AutoEventWireup="true" CodeBehind="ListadoUsuario.aspx.cs" Inherits="Ecomonedas.Menus.Administrador.ListadoUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <title>Listado de Usuarios</title>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="container-fluid">

        <div class="row">

            <div class="col-md-1"></div>


            <div class="col-md-10" style="background-color: white; border-left: 1px solid #ACACAC; border-right: 1px solid #ACACAC; padding-bottom: 310px;">
                <div class="row">
                    <div class="col-md-1"></div>
                    <div class="col-md-10" style="margin-top: 40px; margin-bottom: 52px;">

                        <h3 style=" color: #222222; border-bottom: 1px solid lightgray; margin-bottom:30px;">Lista de Usuarios</h3>

                        <asp:GridView ID="gvUsuarios" runat="server" RowStyle-CssClass="table table-default" HeaderStyle-CssClass="table table-success"  AutoGenerateColumns="False">
                            <Columns>
                                <asp:BoundField HeaderText="Correo Electr&#243;nico" DataField="Correo_Electronico"></asp:BoundField>
                                <asp:BoundField HeaderText="Nombre" DataField="Nombre"></asp:BoundField>
                                <asp:BoundField HeaderText="Primer Apellido" DataField="Apellido_Paterno"></asp:BoundField>
                                <asp:BoundField HeaderText="Segundo Apellido" DataField="Apellido_Materno"></asp:BoundField>
                                <asp:BoundField DataField="Direcci&#243;n" HeaderText="Direcci&#243;n"></asp:BoundField>
                                <asp:BoundField DataField="Telefono" HeaderText="Tel&#233;fono"></asp:BoundField>
                                <asp:BoundField DataField="Rol.Descripcion" HeaderText="Rol"></asp:BoundField>
                            </Columns>
                        </asp:GridView>
                        <asp:HiddenField ID="hvIdUsuario" runat="server" />
                    </div>
                </div>
            </div>

            <div class="col-md-1"></div>


        </div>

    </div>

</asp:Content>
