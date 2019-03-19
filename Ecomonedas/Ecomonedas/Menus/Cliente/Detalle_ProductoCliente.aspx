<%@ Page Title="" Language="C#" MasterPageFile="~/PrincipalCliente.Master" AutoEventWireup="true" CodeBehind="Detalle_ProductoCliente.aspx.cs" Inherits="Ecomonedas.Menus.Cliente.Detalle_ProductoCliente" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <title>Cupón</title>

    <style>
        .valor1 {
            width: 50%;
            border-right: 1px solid lightgray;
            text-align: center;
            font-size: 22px;
            float: left;
            color: #626262;
        }

        .valor2 {
            width: 50%;
            text-align: center;
            font-size: 22px;
            float: right;
            color: #626262;
        }

        .orange {
            background-color: #FA5818;
        }

            .orange:hover {
                background-color: #E65016;
            }

        .orange1 {
            background-color: #F7F7F7;
            color: gray;
            font-size: 22px;
            border: 1px solid #CECECE;
        }

            .orange1:hover {
                background-color: #CECECE;
                color: #FA5818;
            }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">

        <div class="row">

            <div class="col-md-2"></div>
            <div class="col-md-10" style="border: 1px solid #EFEFF0; background-color: white; width: 100%; margin-top: 15px; box-shadow: 2px 2px 10px 10px #F3F3F4; padding-bottom: 145px;">




                <div class="row">


                    <div class="col-md-12">

                        <asp:FormView ID="fvCupones" runat="server">

                            <HeaderTemplate>
                                <div class=" card card-group" style="margin-top: 50px; border: 1px solid white;">
                            </HeaderTemplate>
                            <ItemTemplate>
                                <div class=" card card-group" style="border: 1px solid white;">



                                    <div class="card mb-3" style="border: 1px solid white;">

                                        <img class="imagen" style="height: 90%; width: 90%; display: block; border: 4px solid #FA5818; border-radius: 4px;" src="/Imagenes/Cupones/<%# Eval("ImagenPath") %>" alt="<%# Eval("Nombre") %>" />

                                    </div>

                                    <div class="card mb-3" style="border-left: 1px solid lightgray;">
                                        <h2 class="card-header" style="color: #FA5818;"><%# Eval("Nombre") %></h2>
                                        <div class="card-body">
                                            <h3 class="card-title" style="color: #626262;">Descripción</h3>
                                            <h4 class="card-subtitle" style="color: #757575; margin-top: 20px;"><%# Eval("Descripcion") %></h4>
                                        </div>
                                        <ul class="list-group list-group-flush">
                                            <li class="list-group-item" style="text-align: center; color: #626262;">
                                                <h5>Precio</h5>
                                            </li>
                                            <li class="list-group-item" style="text-align: center; display: inline;">

                                                <div class="">


                                                    <div class="valor1">
                                                        <asp:Label ID="lblPrecioReal" runat="server" Text='  <%# Eval("Cantidad_Ecomonedas", "₡{0:N0}") %>'></asp:Label>
                                                    </div>

                                                    <div class="valor2">
                                                        <img src="/Imagenes/moneda.png" width="35" />&nbsp<asp:Label ID="lblPrecioEco" runat="server" Text='<%# String.Format("{0:N0}",  (Convert.ToInt32(Eval("Cantidad_Ecomonedas"))*10)) %>'></asp:Label>
                                                    </div>
                                                </div>

                                            </li>
                                        </ul>
                                    </div>

                                </div>


                                </div>
                            </ItemTemplate>
                            <FooterTemplate>
                                </div>
                            </FooterTemplate>
                        </asp:FormView>

                    </div>

                </div>




                <div class="row" style="margin: auto; text-align: center;">

                    <div class="col-md-12" style="margin: auto; text-align: center;">

                        <div style="margin: auto; text-align: center;">

                            <a href="CanjearCupones.aspx" class="btn orange1 text-white;" style="margin: auto; text-align: center; margin-top: 40px">Volver</a>

                        </div>

                    </div>


                </div>


            </div>
        </div>
    </div>


</asp:Content>
