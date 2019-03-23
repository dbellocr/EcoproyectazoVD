<%@ Page Title="" Language="C#" MasterPageFile="~/PrincipalAdminCentroAcopio.Master" AutoEventWireup="true" CodeBehind="MenuPrincipalCA.aspx.cs" Inherits="Ecomonedas.Menus.AdminCentroAcopio.MenuPrincipalCA" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <title>Ecomonedas | Menu Administrador CA</title>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">

        <div class="row">

            <div class="col-md-1"></div>


            <div class="col-md-10" style="background-color: white; border-left: 1px solid #ACACAC; border-right: 1px solid #ACACAC; padding-bottom: 50px;">

                <div style="margin-top: 200px; margin-bottom:215px; color:white;">



                    <table style="width:100%;" >

                        <tr>
                            <th><a class="btn btn-success" href="CanjearMaterialesReciclables.aspx" style="width:75%; height: 60px; padding-top:60px; padding-bottom:60px; padding-right:75px;  text-align-last:start; font-size:22px; font-weight:lighter; background-image:url(/Imagenes/iconos/canjear2.png); background-size:90px; background-repeat:no-repeat; background-position:right;">Canjear Materiales</a></th>
                            <th><a class="btn btn-success" href="ListadoCanjeosMateriales.aspx" style="width: 75%; height: 60px;  padding-top:60px; padding-bottom:60px; padding-right:75px;  text-align-last:start; font-size:22px; font-weight:lighter; background-image:url(/Imagenes/iconos/listado3.png); background-size:100px; background-repeat:no-repeat; background-position:right;">Historial de Canjes</a></th>
                            <th><a class="btn btn-success" href="CambiarContrasenaCA.aspx" style="width: 100%; height: 60px; padding-top:60px; padding-bottom:60px; padding-right:75px;  text-align-last:start; font-size:22px; font-weight:lighter; background-image:url(/Imagenes/iconos/cuenta2.png); background-size:100px; background-repeat:no-repeat; background-position:right;">Mi Cuenta</a></th>
                        </tr>

                    </table>
                    
                    
                    

                    

                </div>

            </div>

            <div class="col-md-1"></div>


        </div>

    </div>

</asp:Content>
