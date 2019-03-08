<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Ecomonedas.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <title>Inicio</title>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="container-fluid">

        <div class="row">

            <div class="col-md-2"></div>


            <div class="col-md-8" style="background-color: white; border-left: 1px solid #ACACAC; border-right: 1px solid #ACACAC; padding-bottom: 50px;">


                <div>
                    <%--Espacio para el Slide--%>

                    <div class="slider">
                        <ul>
                            <li>
                                <img height="250px" src="/imagenes/reciclaje.jpg" alt=""/>
                            </li>
                            <li>
                                <img height="250px" src="/imagenes/recicla.jpg" alt=""/>
                            </li>
                            <li>
                                <img height="250px" src="/imagenes/reci.jpeg" alt=""/>
                            </li>
                        </ul>
                    </div>

                </div>

                <div style="width:100%; text-align:center; margin-top:40px; margin-bottom:40px;">
                    <%--catalago de productos preferiblemente un slide (parte de cupones)--%>

                    <div class="titulos-Principal">

                        <a style="color:#676767">Centros de Acopio</a>
                        
                    </div>
                    <p style=" margin-bottom:20px; border-bottom:1px solid #a0a0a0;">
                        Este es nuestro ecoCatálogo de marcas que reciben ecolones
                    </p> 

                    <a href="#"><img height="250px" width="90%" src="/imagenes/reciclaje.jpg" /></a>

                </div>

                <div style="width:100%; text-align:center;">
                    <%--Espacio para el catalogo de los productos o de una breve explicación con los diferentes colores de la clasificacion de los mismos--%>

                    <div class="titulos-Principal">

                        <a style="color:green">eco</a><a style="color:#676767;">Catálogo</a>
                        
                    </div>
                    <p style=" margin-bottom:20px; border-bottom:1px solid #a0a0a0;">
                        Este es nuestro ecoCatálogo de marcas que reciben ecolones
                    </p>   
                    
                    <div>
                    <%--Espacio para el Slide--%>

                    <div class="slider">
                        <ul>
                            <li>
                                <img height="300px" src="/imagenes/ejem1.png" alt=""/>
                            </li>
                            <li>
                                <img height="300px" src="/imagenes/ejem2.png" alt=""/>
                            </li>
                        </ul>
                    </div>

                   <button type="button" class="btn btn-success" style="width:80%;">ir por los ecoProductos</button>

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
