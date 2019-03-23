<%@ Page Title="" Language="C#" MasterPageFile="~/PrincipalAdministrador.Master" AutoEventWireup="true" CodeBehind="ListadoUsuario.aspx.cs" Inherits="Ecomonedas.Menus.Administrador.ListadoUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <title>Ecomonedas | Listado de Usuarios</title>

    <style>

        .mGrid {
            width: 100%;
            background-color: #fff; /*tabla*/
            margin: 5px 0 10px 0;
            border: solid 1px #8F8F8F;/*borde*/
            border-collapse: collapse;
            margin-top:40px;
        }

            .mGrid td {
                padding: 15px;
                border: solid 1px #c1c1c1;/*borde de todo el body*/
                color: #717171; /*body de la tabla*/
            }

            .mGrid th { /*encabezados de la tabla*/
                padding: 15px 26px;
                color: #fff;
                text-align:center;
                background: #A3D921 url(grd_head.png) repeat-x top;
                border-left: solid 1px #8F8F8F;/*borde*/
                font-size: 0.9em;
            }

            .mGrid .alt {
                background: #fcfcfc url(grd_alt.png) repeat-x top;
            }

            .mGrid .pgr {
                background: #424242 url(grd_pgr.png) repeat-x top;
            }

                .mGrid .pgr table {
                    margin: 5px 0;
                }

                .mGrid .pgr td {
                    border-width: 0;
                    padding: 0 6px;
                    border-left: solid 1px lightgray;
                    font-weight: bold;
                    color: #fff;
                    line-height: 12px;
                }

    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="container-fluid">

        <div class="row">

            <div class="col-md-1"></div>


            <div class="col-md-10" style="background-color: white; border-left: 1px solid #ACACAC; border-right: 1px solid #ACACAC; padding-bottom: 200px;">
                <div class="row">
                    <div class="col-md-1"></div>
                    <div class="col-md-10" style="margin-top: 40px; margin-bottom: 52px;">

                        <h3 style=" color: #222222; border-bottom: 1px solid lightgray; margin-bottom:30px;">Lista de Clientes</h3>

                        <asp:GridView ID="gvUsuarios" Width="100%" runat="server" CssClass="mGrid"  AutoGenerateColumns="False">
                            <Columns>
                                <asp:BoundField HeaderText="Correo Electr&#243;nico" DataField="Correo_Electronico"></asp:BoundField>
                                <asp:BoundField HeaderText="Nombre Completo" DataField="NombreCompleto"></asp:BoundField>
                                <asp:BoundField DataField="Direcci&#243;n" HeaderText="Direcci&#243;n"></asp:BoundField>
                                <asp:BoundField DataField="Telefono" HeaderText="Tel&#233;fono"></asp:BoundField>
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
