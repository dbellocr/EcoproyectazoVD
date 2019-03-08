<%@ Page Title="" Language="C#" MasterPageFile="~/PrincipalCliente.Master" AutoEventWireup="true" CodeBehind="CanjearCupones.aspx.cs" Inherits="Ecomonedas.Menus.Cliente.CanjearCupones" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Canjear Cupones</title>
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
            text-align: center;
            font-size: 22px;
            float: right;
        }

        .card:hover {
            box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
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

                            <h3 style="border-bottom: 1px solid lightgray; padding-bottom: 10px;">Cupones disponibles para canjear (pdf)</h3>
                            <br />

                            <div class="card mb-10" style="max-width: 30%;">
                                <h3 class="card-header">Nombre del Cupón</h3>
                                <img style="height: 200px; width: 100%; display: block;" src="data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%22318%22%20height%3D%22180%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%20318%20180%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_158bd1d28ef%20text%20%7B%20fill%3Argba(255%2C255%2C255%2C.75)%3Bfont-weight%3Anormal%3Bfont-family%3AHelvetica%2C%20monospace%3Bfont-size%3A16pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_158bd1d28ef%22%3E%3Crect%20width%3D%22318%22%20height%3D%22180%22%20fill%3D%22%23777%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%22129.359375%22%20y%3D%2297.35%22%3EImage%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E" alt="Card image">

                                <ul class="list-group list-group-flush">
                                    <li class="list-group-item" style="text-align: center">Valor del Cupón</li>
                                    <li class="list-group-item" style="text-align: center">

                                        <div>

                                            <asp:Label ID="lblPrecioReal" runat="server" CssClass="valor1" Text="‎₡ 100.000"></asp:Label>

                                            <%--<span><img src="/imagenes/Precio.png" width="35" style="float:right; display:inline;"/></span>--%>
                                            <asp:Label ID="lblPrecioEco" runat="server" CssClass="valor2" Text="25"></asp:Label>

                                        </div>

                                    </li>
                                </ul>
                                <div class="card-footer text-muted" style="text-align: center;">
                                    <asp:Button ID="btnCanjear" Text="Canjear" runat="server" CssClass="btn btn-primary boton" />
                                </div>
                            </div>

                        </div>



                    </div>


                    <div class="col-md-1"></div>

                </div>

            </div>
        </div>

    </div>

    </div>

</asp:Content>
