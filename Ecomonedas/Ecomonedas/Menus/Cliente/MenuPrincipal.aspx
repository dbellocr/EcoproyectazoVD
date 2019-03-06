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

    </style>

    

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">

        <div class="row">

            <div class="col-md-2">
            </div>
            <div class="col-md-10">

                <div style="border: 1px solid #EFEFF0; background-color: white; padding-bottom: 500px; width: 100%; margin-top: 15px; box-shadow: 2px 2px 10px 10px #F3F3F4">

                    <div class="row">

                        <div class="col-md-1"></div>
                        <div class="col-md-10" style="margin-top: 20px;">


                            <div class="row" style="margin: auto; text-align: center;">

                                <div class="column">
                                    <div class="card text-white bg-primary " style="max-width: 15rem; margin-right: 40px;">
                                        <div class="card-header">Disponibles</div>
                                        <div class="card-body">
                                            <h4 class="card-title"></h4>
                                            <p class="card-text"></p>
                                        </div>
                                    </div>
                                </div>
                                <div class="column">
                                    <div class="card text-white bg-success " style="max-width: 15rem; margin-right: 40px;">
                                        <div class="card-header">Canjeadas</div>
                                        <div class="card-body">
                                            <h4 class="card-title"></h4>
                                            <p class="card-text"></p>
                                        </div>
                                    </div>
                                </div>
                                <div class="column">
                                    <div class="card text-white bg-danger" style="max-width: 15rem; margin-right: 40px;">
                                        <div class="card-header">Total</div>
                                        <div class="card-body">
                                            <h4 class="card-title"></h4>
                                            <p class="card-text"></p>
                                        </div>
                                    </div>
                                </div>
                                <div class="column">
                                    <div class="card text-white bg-warning " style="max-width: 15rem; margin-right: 40px;">
                                        <div class="card-header">Header</div>
                                        <div class="card-body">
                                            <h4 class="card-title"></h4>
                                            <p class="card-text"></p>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>


                        <div class="col-md-1"></div>


                    </div>

                    <div class="row">

                        <div class="col-md-1"></div>
                        <div class="col-md-10" style="margin-top: 40px;">hola</div>
                        <div class="col-md-1"></div>

                    </div>

                </div>

            </div>

        </div>

    </div>
</asp:Content>
