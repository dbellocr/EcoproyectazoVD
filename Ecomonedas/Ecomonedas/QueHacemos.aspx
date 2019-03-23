<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="QueHacemos.aspx.cs" Inherits="Ecomonedas.QueHacemos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Ecomonedas | ¿Que hacemos?</title>
    <style>

        h3{
            text-align:center;
            color:#539E23;
        }

        body{
            text-align:justify;
        }
        .fondo{
            
            background-image: url("/imagenes/fondo1.png");
            background-size:cover;
            background-repeat:no-repeat;
            background-position:center;
        }
        .link-consulta:link{

                color:#539E23;
        }
        .link-consulta:hover{

                color:#1F7B31;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid" >

        <div class="row">

           <%-- <div class="col-md-1"></div>--%>


            <div class="col-md-12 fondo " style="background-color: white; border-left: 1px solid #ACACAC; border-right: 1px solid #ACACAC; padding-bottom: 75px;">

                <div class="row" style="margin-bottom:30px; margin-top:115px;">

                    <div class="col-md-1"></div>

                    <div class="col-md-5">
                         
                        <h3>¿Qué es lo que hacemos?</h3>
                        Somos una empresa 100% costarricense que nace en el 2019 debido a la problemática ambiental que enfrenta nuestro país y la falta de cultura de reciclaje en la población. Nuestro sistema consiste en el cambio de materiales reciclables por una moneda virtual llamada ecomonedas. 
                        Las ecomonedas son una moneda virtual pueden ser utilizados para adquirir  cupones de canje, los cuales pueden ser canjeados por descuentos en productos en diferentes comercios. 
                        Consulte aquí los productos que pueden ser adquiridos mediante ecomonedas.
                        

                    </div>

                    <div class="col-md-1"></div>

                    <div class="col-md-4">

                        
                        <h3>¿Dónde canjear los materiales?</h3>
                        Cada persona debe registrarse en nuestro sitio web , una vez creada su cuenta puede dirigirse a su centro de acopio más cercano con material reciclable y recibir ecomonedas a cambio. 
                      Consulte aquí nuestros centros de acopio.

                    </div>
                    <div class="col-md-1"></div>
                </div>

                <div class="row">

                    <div class="col-md-1"></div>

                    <div class="col-md-5">
                       

                         <h3>Misión</h3>
                        Brindar un servicio innovador a nuestros clientes y a su vez fomentar la cultura de reciclaje en la población a través de incentivos llamados ecomonedas.
                       
                    </div>

                    <div class="col-md-1"></div>

                    <div class="col-md-4">
                        
                        <h3>Visión</h3>
                        Ser una empresa con cobertura a nivel nacional, líder en la industria del manejo de reciclaje. Además que toda la población tanto, niños, jóvenes y adultos puedan hacer  conciencia sobre la necesidad del reciclaje de materiales. 
                        
                    </div>

                    <div class="col-md-1"></div>

                </div>

            </div>

            <%--<div class="col-md-1"></div>--%>


        </div>

    </div>

</asp:Content>
