<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Ecomonedas.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <title>Inicio</title>

    <style>
        .boton {
            width: 80%;
            background-color: #63A324;
            color: white;
        }

            .boton:hover {
                background-color: #3D8A24;
                color: white;
            }

        .valor1 {
            width: 50%;
            border-right: 1px solid lightgray;
            text-align: center;
            font-size: 16px;
            float: left;
        }

        .valor2 {
            width: 50%;
            text-align: center;
            font-size: 16px;
            float: right;
        }

        .card {
            border: 1px solid #A3D921;
        }

            .card:hover {
                box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
            }

        .botonAcopio {
            background-color: #A3D921;
        }

            .botonAcopio:hover {
                background-color: #96C81E;
            }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="container-fluid">

        <div class="row">

            <div class="col-md-2"></div>


            <div class="col-md-8" style="background-color: white; border-left: 1px solid #ACACAC; border-right: 1px solid #ACACAC; padding-bottom: 50px;">


                <div style="width: 85%; margin: auto;">
                    <%--Espacio para el Slide--%>

                    <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
                        <div class="carousel-inner" style="height: 300px; margin-top: 40px; border: 2px solid #ECECEC; border-radius: 3px;">
                            <div class="carousel-item active">
                                <img class="d-block w-100" style="" src="/imagenes/Banner3.png" alt="First slide">
                            </div>
                            <div class="carousel-item">
                                <img class="d-block w-100" src="/imagenes/BannerDesarrolloSostenible.png" alt="Second slide">
                            </div>
                            <div class="carousel-item">
                                <img class="d-block w-100" src="/imagenes/EcoBanner.png" alt="Third slide">
                            </div>
                        </div>
                        <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>

                </div>

                <div style="width: 100%; text-align: center; margin-top: 40px; margin-bottom: 40px;">
                    <%--catalago de productos preferiblemente un slide (parte de cupones)--%>

                    <div class="titulos-Principal">

                        <a style="color: #676767">Centros de Acopio</a>

                    </div>
                    <p style="margin-bottom: 20px; border-bottom: 1px solid #a0a0a0;">
                        Conoce nuestros centros de reciclaje
                    </p>

                    <%--<div>
                        <a href="CentrosAcopio.aspx">
                            <img height="300" width="85%" style="border: 2px solid #ECECEC; border-radius: 3px;" src="/imagenes/BannerEco2.png" />
                        </a>
                    </div>--%>

                        <div style="margin: auto; text-align: center; background-image: url(/Imagenes/BannerEco2.png); width: 85%; height: 300px; border: 2px solid #ECECEC; border-radius: 3px;">
                            <a class="btn botonAcopio text-white" href="CentrosAcopio.aspx" style="float: right; margin-right: 26px; width: 32%; margin-top: 250px;">Ver Centros de Acopio
                            </a>
                        </div>

                </div>

                <div style="width: 100%; text-align: center;">
                    <%--Espacio para el catalogo de los productos o de una breve explicación con los diferentes colores de la clasificacion de los mismos--%>

                    <div class="titulos-Principal">

                        <a style="color: green">eco</a><a style="color: #676767;">Catálogo</a>

                    </div>
                    <p style="margin-bottom: 20px; border-bottom: 1px solid #a0a0a0;">
                        Este es nuestra lista de productos que puedes canjear con <a style="color: green">eco</a>monedas
                    </p>

                    <div>
                        <%--Espacio para el Slide--%>




                        <asp:Repeater ID="repeaterCupones" runat="server">


                            <HeaderTemplate>
                                <div class="row">
                            </HeaderTemplate>
                            <ItemTemplate>
                                <div class="col-lg-3">
                                    <div class="card mb-10" style="max-width: 100%; margin-bottom: 30px">
                                        <h3 class="card-header" style="text-align: center; font-size: 18px;"><%# Eval("Nombre") %></h3>
                                        <img style="height: 150px; width: 100%; display: block;" src="/Imagenes/Cupones/<%# Eval("ImagenPath") %>" alt="<%# Eval("Nombre") %>">

                                        <ul class="list-group list-group-flush">
                                            <li class="list-group-item" style="text-align: center">Valor del Producto</li>
                                            <li class="list-group-item" style="text-align: center; display: inline;">

                                                <div class="">


                                                    <div class="valor1">
                                                        <asp:Label ID="lblPrecioReal" runat="server" Text='  <%# Eval("Cantidad_Ecomonedas", "₡{0:N0}") %>'></asp:Label>
                                                    </div>

                                                    <div class="valor2">
                                                        <img src="/Imagenes/moneda.png" width="25" />&nbsp<asp:Label ID="lblPrecioEco" runat="server" Text='<%# String.Format("{0:N0}",  (Convert.ToInt32(Eval("Cantidad_Ecomonedas"))*10)) %>'></asp:Label>
                                                    </div>
                                                </div>

                                            </li>
                                        </ul>

                                        <div class="card-footer text-muted" style="text-align: center;">
                                            <%--<asp:Button ID="btnCanjear"  Text="Ver Producto" runat="server" CssClass="btn btn-success" />--%>
                                        </div>
                                    </div>
                                </div>
                            </ItemTemplate>
                            <FooterTemplate>
                                </div>
                   
                            </FooterTemplate>
                        </asp:Repeater>

                        <a class="btn btn-success" style="width: 50%;" href="/EcoProductos.aspx">Ir por los EcoProductos</a>

                    </div>

                </div>



                <div>
                    <%--alguna mision o video--%>
                </div>


            </div>


            <div class="col-md-2"></div>

        </div>
    </div>

</asp:Content>
