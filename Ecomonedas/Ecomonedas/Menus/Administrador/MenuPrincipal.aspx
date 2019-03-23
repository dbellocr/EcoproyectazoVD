<%@ Page Title="" Language="C#" MasterPageFile="~/PrincipalAdministrador.Master" AutoEventWireup="true" CodeBehind="MenuPrincipal.aspx.cs" Inherits="Ecomonedas.Menus.MenuPrincipal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <title>Menu Administrador</title>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">

        <div class="row">

            <div class="col-md-1"></div>


            <div class="col-md-10" style="background-color: white; border-left: 1px solid #ACACAC; border-right: 1px solid #ACACAC; padding-bottom: 100px; margin:auto; text-align:center;">

                <table  style="width:100%; height:auto !important; margin-top:89px;">

                    <tr>
                        <th><a class="btn btn-success" href="MantenimientoCentrosAcopio.aspx" style="width: 85%; height: 60px; margin-right: 50px; padding-top: 50px; padding-bottom: 40px; padding-right: 40px; text-align-last: start; font-size: 22px; font-weight: lighter; background-image: url(/Imagenes/iconos/centro2.png); background-size: 30%; background-repeat: no-repeat; background-position: right;">Centros de Acopio</a></th>
                        <th><a class="btn btn-success" href="MantenimientoTiposMateriales.aspx" style="width: 85%; height: 60px; margin-right: 50px; padding-top: 50px; padding-bottom: 40px; padding-right: 40px; text-align-last: start; font-size: 22px; font-weight: lighter; background-image: url(/Imagenes/iconos/materiales2.png); background-size: contain; background-repeat: no-repeat; background-position: right;">Tipo de Materiales</a></th>
                        <th><a class="btn btn-success" href="MantenimientoUsuarios.aspx" style="width: 85%; height: 60px; padding-top: 50px; padding-bottom: 40px; padding-right: 40px; text-align-last: start; font-size: 22px; font-weight: lighter; background-image: url(/Imagenes/iconos/usuarios2.png); background-size: contain; background-repeat: no-repeat; background-position: right;">Administradores CA</a></th>
                    </tr>
                    <tr>
                        <th><a class="btn btn-success" href="ReporteEcomonedasCA.aspx" style="margin-top:60px; width: 85%; height: 60px; margin-right: 50px; padding-top: 50px; padding-bottom: 40px; padding-right: 40px; text-align-last: start; font-size: 22px; font-weight: lighter; background-image: url(/Imagenes/iconos/listado3.png); background-size: contain; background-repeat: no-repeat; background-position: right;">Reporte de CA</a></th>
                        <th><a class="btn btn-success" href="ListadoUsuario.aspx" style="margin-top:60px; width: 85%; height: 60px; margin-right: 50px; padding-top: 50px; padding-bottom: 40px; padding-right: 40px; text-align-last: start; font-size: 22px; font-weight: lighter; background-image: url(/Imagenes/iconos/listado3.png); background-size: contain; background-repeat: no-repeat; background-position: right;">Listado de Clientes</a></th>
                        <th><a class="btn btn-success" href="MantenimientoCupones.aspx" style="margin-top:60px; width: 85%; height: 60px;  padding-top: 50px; padding-bottom: 40px; padding-right: 40px; text-align-last: start; font-size: 22px; font-weight: lighter; background-image: url(/Imagenes/iconos/cupones2.png); background-size: contain; background-repeat: no-repeat; background-position: right;">Cupones</a></th>
                    </tr>
                    <tr>
                        <th><a class="btn btn-success" href="CambiarContrasena.aspx" style="margin-top:60px; width: 85%; margin-right: 50px; height: 60px; padding-top: 50px; padding-bottom: 40px; padding-right: 40px; text-align-last: start; font-size: 22px; font-weight: lighter; background-image: url(/Imagenes/iconos/cuenta2.png); background-size: contain; background-repeat: no-repeat; background-position: right;">Mi Cuenta</a></th>
                    </tr>
                </table>

            </div>

            <div class="col-md-1"></div>


        </div>

    </div>


</asp:Content>
