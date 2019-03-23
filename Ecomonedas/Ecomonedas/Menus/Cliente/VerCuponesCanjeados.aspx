<%@ Page Title="" Language="C#" MasterPageFile="~/PrincipalCliente.Master" AutoEventWireup="true" CodeBehind="VerCuponesCanjeados.aspx.cs" Inherits="Ecomonedas.Menus.Cliente.VerCuponesCanjeados" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <title>Ecomonedas | Mis Cupones Canjeados</title>

    <style>
        .boton {
            width: 80%;
        }

        .valor1 {
            width: 50%;
            border-right: 1px solid lightgray;
            text-align: center;
            font-size: 22px;
            float: left;
        }

        .valor2 {
            width: 50%;
            font-size: 22px;
            float: right;
        }

        .card:hover {
            box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
        }

        .img {
            background-image: url(/Imagenes/iconos/canjear2.png);
            background-position: center;
            width: 40px;
            background-repeat: no-repeat;
            background-size: contain;
        }

        .card {
            border: 4px solid orange;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">

        <div class="row">

            <div class="col-md-2"></div>

            <div class="col-md-10">

                <div style="border: 1px solid #EFEFF0; background-color: white; padding-bottom: 90px; width: 100%; margin-top: 15px; box-shadow: 2px 2px 10px 10px #F3F3F4">

                    <div class="row">

                        <div class="col-md-1"></div>

                        <div class="col-md-10" style="margin-top: 20px;">

                            <h3 style="border-bottom: 1px solid lightgray; padding-bottom: 10px; text-align: center;">Estos son los cupones que has canjeado</h3>
                            <br />

                            <div class="row">

                                <asp:ListView ID="lvCupones" runat="server">

                                    <EmptyDataTemplate>

                                        <p style="color: black;">Lo sentimos, no tienes cupones disponibles para canjear debido a que la cantidad de ecomonedas que tienes es insuficiente o debido a que ya has canjeado algunos de ellos. Sigue canjeando materiales para obtener más cupones</p>

                                    </EmptyDataTemplate>

                                    <EmptyItemTemplate>
                                        <div class="col-lg-4">
                                        </div>
                                    </EmptyItemTemplate>

                                    <GroupTemplate>

                                        <asp:PlaceHolder ID="itemPlaceholder" runat="server"></asp:PlaceHolder>

                                    </GroupTemplate>

                                    <ItemTemplate>
                                        <div class="col-lg-4">
                                            <div class="card mb-10" style="max-width: 100%; margin-bottom: 30px">

                                                <h3 class="card-header nombreProducto" style="text-align: center"><%# Eval("Cupon.Nombre") %></h3>

                                                <img style="height: 200px; width: 100%; display: block;" src="/Imagenes/Cupones/<%# Eval("Cupon.ImagenPath") %>" alt="<%# Eval("Cupon.Nombre") %>">

                                                <ul class="list-group list-group-flush">
                                                    <li class="list-group-item" style="text-align: center">Valor del Cupón</li>
                                                    <li class="list-group-item" style="text-align: center; display: inline;">

                                                        <div class="">


                                                            <div class="valor1">
                                                                <asp:Label ID="lblPrecioReal" runat="server" Text='  <%# Eval("Cupon.Cantidad_Ecomonedas", "₡{0:N0}") %>'></asp:Label>
                                                            </div>

                                                            <div class="valor2">
                                                                <img src="/Imagenes/moneda.png" width="35" />&nbsp<asp:Label ID="lblPrecioEco" runat="server" Text='<%# String.Format("{0:N0}",  (Convert.ToInt32(Eval("Cupon.Cantidad_Ecomonedas"))*10)) %>'></asp:Label>
                                                            </div>
                                                        </div>

                                                    </li>
                                                </ul>

                                                <div class="card-footer text-muted" style="text-align: center;">

                                                    <a href="#" class="btn">Ya has canjeado este cupón</a>
                                                </div>



                                            </div>
                                        </div>
                                   
                                    </ItemTemplate>


                                </asp:ListView>

                            </div>

                        </div>


                        <div class="col-md-1"></div>

                    </div>

                </div>

            </div>

        </div>

    </div>

</asp:Content>
