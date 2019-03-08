<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="EcoProductos.aspx.cs" Inherits="Ecomonedas.EcoProductos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

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
        .card{
            border:1px solid #A3D921;
        }
        .card:hover {
            box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
        }

    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="container-fluid">

        <div class="row">

            <div class="col-md-1"></div>
            <div class="col-md-10" style="background-color: white; border-left: 1px solid #ACACAC; border-right: 1px solid #ACACAC; padding-bottom: 50px;">


                <h3 style="text-align: center; color: #222222; border-bottom: 1px solid lightgray; width: 70%; margin: auto; margin-top: 40px;"><a style="color:##222222">Estos son nuestros </a><a style="color:green">eco</a><a style="color:#222222;">Productos</a></h3>

                <div class="row">

                    <div class="col-md-1"></div>
                    <div class="col-md-10" style="margin-top: 40px">


                        <div class="card mb-10" style="max-width: 25%;">
                                <h3 class="card-header">Nombre del Producto</h3>
                                <img style="height: 200px; width: 100%; display: block;" src="data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%22318%22%20height%3D%22180%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%20318%20180%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_158bd1d28ef%20text%20%7B%20fill%3Argba(255%2C255%2C255%2C.75)%3Bfont-weight%3Anormal%3Bfont-family%3AHelvetica%2C%20monospace%3Bfont-size%3A16pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_158bd1d28ef%22%3E%3Crect%20width%3D%22318%22%20height%3D%22180%22%20fill%3D%22%23777%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%22129.359375%22%20y%3D%2297.35%22%3EImage%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E" alt="Card image">

                                <ul class="list-group list-group-flush">
                                    <li class="list-group-item" style="text-align: center">Valor del Producto</li>
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
                    <div class="col-md-1"></div>

                </div>


            </div>
            <div class="col-md-1"></div>

        </div>

    </div>

</asp:Content>
