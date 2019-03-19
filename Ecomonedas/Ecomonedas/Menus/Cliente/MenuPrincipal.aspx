<%@ Page Title="" Language="C#" MasterPageFile="~/PrincipalCliente.Master" AutoEventWireup="true" CodeBehind="MenuPrincipal.aspx.cs" Inherits="Ecomonedas.Menus.Cliente.MenuPrincipal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <title>Cliente</title>

    <style>
        .card:hover {
            box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
        }

        * {
            box-sizing: border-box;
        }

        .column {
            float: left;
            width: 25%;
        }

        .row {
            margin: 0 -5px;
        }

            .row:after {
                content: "";
                display: table;
                clear: both;
            }

        @media screen and (max-width: 600px) {
            .column {
                width: 100%;
                display: block;
                margin-bottom: 20px;
            }
        }

        .card {
            text-align: center;
            background-color: #f1f1f1;
        }

        .can {
            display: inline;
            float: left;
        }

        .cant {
            margin-right: 10px;
            float: right;
            color: white;
            font-size: 45px;
            font-weight: bold;
        }
    </style>



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">

        <div class="row">

            <div class="col-md-2">
            </div>
            <div class="col-md-10">

                <div style="border: 1px solid #EFEFF0; background-color: white; padding-bottom: 100px; margin-bottom:20px; width: 100%; margin-top: 15px; box-shadow: 2px 2px 10px 10px #F3F3F4">

                    <div class="row">

                        <div class="col-md-1"></div>
                        <div class="col-md-10" style="margin-top: 20px;">

                            <h3 style="border-bottom: 1px solid lightgray; padding-bottom: 10px;">Mi Billetera Virtual</h3>

                            <div class="row" style="text-align: center; margin-top: 40px;">

                                <asp:FormView ID="frmCantidadEcomonedas" runat="server">
                                    <ItemTemplate>
                                        <div style="width: 100%; margin: auto; text-align: center;">

                                            <div class="column" style="margin-right: 80px; margin-left: 20px">
                                                <div class="card text-white bg-primary " style="width: 300px; max-height: 125px;">
                                                    <div class="card-header" style="background-color: #007BFF;">Ecomonedas Disponibles</div>

                                                    <div class="can" style="background-color: #006FE7">
                                                        <img src="/Imagenes/moneda.png" class="can" style="margin-top: 12px; margin-left: 20px;" width="35" />
                                                        <asp:Label CssClass="cant" runat="server" ID="txtCantDisponible" Text='<%# string.Format("{0:N0}", Eval("EcoMonedas_Disponibles")) %>'></asp:Label>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="column" style="margin-right: 80px;">
                                                <div class="card text-white bg-success " style="width: 300px; max-height: 125px; margin-right: 25px;">
                                                    <div class="card-header" style="background-color: #27A243;">Ecomonedas Canjeadas</div>
                                                    <div class="can" style="background-color: #24973E;">
                                                        <img src="/Imagenes/moneda.png" class="can" style="margin-top: 12px; margin-left: 20px;" width="35" />
                                                        <asp:Label CssClass="cant" runat="server" ID="txtCantCanjeadas"  Text='<%# string.Format("{0:N0}", Eval("EcoMonedas_Canjeadas")) %>'></asp:Label>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="column">
                                                <div class="card text-white bg-danger" style="width: 300px; max-height: 125px; margin-right: 25px;">
                                                    <div class="card-header" style="background-color: #D53343;">Ecomonedas Total</div>
                                                    <div class="can" style="background-color: #C72F3E;">
                                                        <img src="/Imagenes/moneda.png" class="can" style="margin-top: 12px; margin-left: 20px;" width="35" />
                                                        <asp:Label CssClass="cant" runat="server" ID="txtCantTotal"  Text='<%# string.Format("{0:N0}", Eval("EcoMonedas_Totales")) %>'></asp:Label>
                                                    </div>
                                                </div>
                                            </div>


                                        </div>
                                    </ItemTemplate>
                                </asp:FormView>
                            </div>
                        </div>


                        <div class="col-md-1"></div>


                    </div>

                    <div class="row">

                        <div class="col-md-1"></div>
                        <div class="col-md-10" style="margin-top: 40px;">

                            <h3 style="border-bottom: 1px solid lightgray; padding-bottom: 10px; text-align: center;">Pasos para canjear tus ecomonedas</h3>

                            <div style="margin: auto; text-align: center;">

                                <img src="/Imagenes/Paso1.png" width="25%" style="margin-right: 50px; margin-top: 50px;" />
                                <img src="/Imagenes/Paso2.png" width="25%" style="margin-right: 50px; margin-top: 10px" />
                                <img src="/Imagenes/Paso3.png" width="25%" />

                            </div>


                        </div>
                        <div class="col-md-1"></div>

                    </div>

                </div>

            </div>

        </div>

    </div>
</asp:Content>
