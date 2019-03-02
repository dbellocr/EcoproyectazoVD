﻿<%@ Page Title="" Language="C#" MasterPageFile="~/PrincipalAdministrador.Master" AutoEventWireup="true" CodeBehind="MenuPrincipal.aspx.cs" Inherits="Ecomonedas.Menus.MenuPrincipal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <title>Menu Administrador</title>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">

        <div class="row">

            <div class="col-md-1"></div>


            <div class="col-md-10" style="background-color: white; border-left: 1px solid #ACACAC; border-right: 1px solid #ACACAC; padding-bottom: 50px;">

                <div style="margin-top: 135px; text-align: center; color:white;">


                    <a class="btn btn-success" href="MantenimientoCentrosAcopio.aspx" style="width: 25%; height: 50px; margin-right:50px; padding-top:50px; padding-bottom:40px; padding-right:40px;  text-align-last:start; font-size:22px; font-weight:lighter; background-image:url(/Imagenes/iconos/centro1.png); background-size:30%; background-repeat:no-repeat; background-position:right;">Centros de Acopio</a>
                    <a class="btn btn-success" href="MantenimientoTiposMateriales.aspx" style="width: 25%; height: 50px; margin-right:50px; padding-top:50px; padding-bottom:40px; padding-right:40px;  text-align-last:start; font-size:22px; font-weight:lighter; background-image:url(/Imagenes/iconos/materiales1.png); background-size:contain; background-repeat:no-repeat; background-position:right;">Tipo de Materiales</a>
                    <a class="btn btn-success" href="MantenimientoUsuarios.aspx" style="width: 25%; height: 50px; padding-top:50px; padding-bottom:40px; padding-right:40px;  text-align-last:start; font-size:22px; font-weight:lighter; background-image:url(/Imagenes/iconos/usuarios1.png); background-size:contain; background-repeat:no-repeat; background-position:right;">Usuarios</a>
                    

                </div>

                <div style="margin-top: 50px; margin-bottom:180px; text-align: center; color:white;">

                    <a class="btn btn-success" href="MantenimientoCupones.aspx" style="width: 25%; height: 50px; margin-right:50px; padding-top:50px; padding-bottom:40px; padding-right:40px;  text-align-last:start; font-size:22px; font-weight:lighter; background-image:url(/Imagenes/iconos/cupones1.png); background-size:contain; background-repeat:no-repeat; background-position:right;">Cupones</a>
                    <a class="btn btn-success" href="CambiarContrasena.aspx" style="width: 25%; height: 50px; padding-top:50px; padding-bottom:40px; padding-right:40px;  text-align-last:start; font-size:22px; font-weight:lighter; background-image:url(/Imagenes/iconos/cuenta1.png); background-size:contain; background-repeat:no-repeat; background-position:right;">Mi Cuenta</a>

                </div>

            </div>

            <div class="col-md-1"></div>


        </div>

    </div>


</asp:Content>