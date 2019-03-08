<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Ecomonedas.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <title>Inicio</title>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="container-fluid">

        <div class="row">

            <div class="col-md-2"></div>


            <div class="col-md-8" style="background-color: white; border-left: 1px solid #ACACAC; border-right: 1px solid #ACACAC; padding-bottom: 50px;">


                <div style="width: 85%; margin: auto;">
                    <%--Espacio para el Slide--%>

                    <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
                        <div class="carousel-inner" style="height:300px; margin-top:40px;">
                            <div class="carousel-item active">
                                <img class="d-block w-100" src="/imagenes/recicla.jpg" alt="First slide">
                            </div>
                            <div class="carousel-item">
                                <img class="d-block w-100" src="/imagenes/reciclaje.jpg" alt="Second slide">
                            </div>
                            <div class="carousel-item">
                                <img class="d-block w-100" src="/imagenes/desarrolloSostenible.png" alt="Third slide">
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
                    <p style="margin-bottom: 20px; border-bottom: 1px solid #a0a0a0; ">
                        Conoce nuestros centros de reciclaje
                    </p>

                    <a href="CentrosAcopio.aspx">
                        <img height="250" width="85%" src="/imagenes/reciclaje.jpg" /></a>

                </div>

                <div style="width: 100%; text-align: center;">
                    <%--Espacio para el catalogo de los productos o de una breve explicación con los diferentes colores de la clasificacion de los mismos--%>

                    <div class="titulos-Principal">

                        <a style="color: green">eco</a><a style="color: #676767;">Catálogo</a>

                    </div>
                    <p style="margin-bottom: 20px; border-bottom: 1px solid #a0a0a0;">
                        Este es nuestra lista de productos que puedes canjear con ecomonedas
                    </p>

                    <div>
                        <%--Espacio para el Slide--%>


                        <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
                        <div class="carousel-inner" style="height:300px; margin-top:40px;">
                            <div class="carousel-item active">
                                <img class="d-block w-100" src="/imagenes/ejem1.png" alt="First slide">
                            </div>
                            <div class="carousel-item">
                                <img class="d-block w-100" src="/imagenes/ejem2.png" alt="Second slide">
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

                        <a class="btn btn-success" style="width: 50%;" href="/EcoProductos.aspx">ir por los ecoProductos</a>

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
