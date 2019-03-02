<%@ Page Title="" Language="C#" MasterPageFile="~/PrincipalAdminCentroAcopio.Master" AutoEventWireup="true" CodeBehind="MenuPrincipalCA.aspx.cs" Inherits="Ecomonedas.Menus.AdminCentroAcopio.MenuPrincipalCA" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <title>Menu Administrador</title>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">

        <div class="row">

            <div class="col-md-1"></div>


            <div class="col-md-10" style="background-color: white; border-left: 1px solid #ACACAC; border-right: 1px solid #ACACAC; padding-bottom: 50px;">

                <div style="margin-top: 200px; margin-bottom:217px; text-align: center; color:white;">


                    <a class="btn btn-success" href="CanjearMaterialesReciclables.aspx" style="width: 25%; height: 40px; margin-right:70px; padding-top:60px; padding-bottom:60px; padding-right:75px;  text-align-last:start; font-size:22px; font-weight:lighter; background-image:url(/Imagenes/iconos/canjear1.png); background-size:auto; background-repeat:no-repeat; background-position:right;">Canjear Materiales</a>
                    <a class="btn btn-success" href="CambiarContrasenaCA.aspx" style="width: 25%; height: 40px; padding-top:60px; padding-bottom:60px; padding-right:75px;  text-align-last:start; font-size:22px; font-weight:lighter; background-image:url(/Imagenes/iconos/cuenta1.png); background-size:auto; background-repeat:no-repeat; background-position:right;">Mi Cuenta</a>
                    

                </div>

            </div>

            <div class="col-md-1"></div>


        </div>

    </div>

</asp:Content>
