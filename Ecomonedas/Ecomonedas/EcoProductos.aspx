<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="EcoProductos.aspx.cs" Inherits="Ecomonedas.EcoProductos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>EcoProductos</title>
    <style>
        .boton {
            width: 80%;
            background-color: #A3D921;
            color: white;
        }

            .boton:hover {
                background-color: #90C123;
                color: white;
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

        .card {
            border: 1px solid #A3D921;
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


                <h3 style="text-align: center; color: #222222; border-bottom: 1px solid lightgray; width: 70%; margin: auto; margin-top: 40px;"><a style="color: ##222222">Estos son nuestros </a><a style="color: green">eco</a><a style="color: #222222;">Productos</a></h3>

                <div class="row">

                    <div class="col-md-1"></div>
                    <div class="col-md-10" style="margin-top: 40px">


                        <asp:ListView ID="listaCupones" runat="server" GroupItemCount="3">

                            <EmptyDataTemplate>
                                <p>No hay datos</p>
                            </EmptyDataTemplate>
                        
                            <GroupTemplate>
                                <div class="row">
                                    <asp:PlaceHolder ID="itemPlaceHolder" runat="server"></asp:PlaceHolder>
                                </div>
                            </GroupTemplate>
                            <ItemTemplate>
                                <div class="col-lg-4">
                                    <div class="card mb-10" style="max-width: 100%;">
                                        <h3 class="card-header"><%# Eval("Nombre") %></h3>
                                        <img style="height: 200px; width: 100%; display: block;" src="/Imagenes/Cupones/<%# Eval("ImagenPath") %>" alt="<%# Eval("Nombre") %>">

                                        <ul class="list-group list-group-flush">
                                            <li class="list-group-item" style="text-align: center">Valor del Producto</li>
                                            <li class="list-group-item" style="text-align: center; display: inline;">

                                                <div class="">


                                                    <div class="valor1">
                                                        <asp:Label ID="lblPrecioReal" runat="server" Text='  <%# Eval("Cantidad_Ecomonedas", "₡{0:N0}") %>'></asp:Label>
                                                    </div>

                                                    <div class="valor2">
                                                        <img src="/Imagenes/moneda.png" width="35" />&nbsp<asp:Label ID="lblPrecioEco" runat="server" Text='<%#  Convert.ToInt32(Eval("Cantidad_Ecomonedas"))*10 %>'></asp:Label>
                                                    </div>
                                                </div>

                                            </li>
                                        </ul>

                                        <div class="card-footer text-muted" style="text-align: center;">
                                            <asp:Button ID="btnCanjear" Text="Ver Producto" runat="server" CssClass="btn boton" />
                                        </div>
                                    </div>
                            </ItemTemplate>


                        </asp:ListView>

                    </div>

                      <div class="col-md-1"></div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
