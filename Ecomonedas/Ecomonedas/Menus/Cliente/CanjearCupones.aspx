﻿<%@ Page Title="" Language="C#" MasterPageFile="~/PrincipalCliente.Master"  EnableEventValidation="false" AutoEventWireup="true" CodeBehind="CanjearCupones.aspx.cs" Inherits="Ecomonedas.Menus.Cliente.CanjearCupones" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Ecomonedas | Canjear Cupones</title>
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
            border: 3px solid orange;
        }

        .nombreProducto:hover {
            color: #FA5818;
        }
    </style>
    <script>

    
        function ocultar() {

            $('#canjeoCupon').modal('hide')
        
            //window.location.href = window.location.href;
            //setTimeout(function () {
            //    window.location.reload(1);
            //}, 5000);


        }

    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">

        <div class="row">

            <div class="col-md-2"></div>

            <div class="col-md-10">

                <div style="border: 1px solid #EFEFF0; background-color: white; width: 100%; margin-top: 15px; box-shadow: 2px 2px 10px 10px #F3F3F4; padding-bottom: 100px;">

                    <div class="row">

                        <div class="col-md-1"></div>

                        <div class="col-md-10" style="margin-top: 20px;">

                            <h3 style="border-bottom: 1px solid lightgray; padding-bottom: 10px;">Cupones disponibles para canjear</h3>
                            <br />


                            <div class="row">

                                <asp:ListView ID="lvCupones"  runat="server">

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
                                                <a href="<%# "Detalle_ProductoCliente.aspx?producto="+ Eval("ID") %>" class="link">
                                                    <h3 class="card-header nombreProducto" style="text-align: center"><%# Eval("Nombre") %></h3>
                                                </a>
                                                <img style="height: 200px; width: 100%; display: block;" src="/Imagenes/Cupones/<%# Eval("ImagenPath") %>" alt="<%# Eval("Nombre") %>">

                                                <ul class="list-group list-group-flush">
                                                    <li class="list-group-item" style="text-align: center">Valor del Cupón</li>
                                                    <li class="list-group-item" style="text-align: center; display: inline;">

                                                        <div class="">


                                                            <div class="valor1">
                                                                <asp:Label ID="lblPrecioReal" runat="server" Text='  <%# Eval("Cantidad_Ecomonedas", "₡{0:N0}") %>'></asp:Label>
                                                            </div>

                                                            <div class="valor2">
                                                                <img src="/Imagenes/moneda.png" width="35" />&nbsp<asp:Label ID="lblPrecioEco" runat="server" Text='<%# String.Format("{0:N0}",  (Convert.ToInt32(Eval("Cantidad_Ecomonedas"))*10)) %>'></asp:Label>
                                                            </div>
                                                        </div>

                                                    </li>
                                                </ul>

                                                <div class="card-footer text-muted" style="text-align: center;">

                                                    <%--<a class="btn boton" data-toggle="modal" data-target="#canjeoCupon">Canjear</>--%>
                                                      <input type="button" runat="server" id="btnCanjeo" data-toggle="modal" data-target="#canjeoCupon" class="btn boton"  value="Canjear" />  
<%--                                                    <asp:Button ID="btnCanjeo" runat="server" data-toggle="modal" data-target="#canjeoCupon" CssClass="btn boton"  Text="Canjear" />--%>
                                                </div>

                                                <div class="modal fade" id="canjeoCupon" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                                    <div class="modal-dialog" role="document">
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                <h5 class="modal-title" id="exampleModalLabel">¿Segur@ que deseas canjear este cupon?</h5>
                                                                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                                                                    <span aria-hidden="true">×</span>
                                                                </button>
                                                            </div>

                                                            <div class="modal-footer">
                                                                <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancelar</button>
                                                                <asp:Button ID="btnDescarga" PostBackUrl="~/Menus/Cliente/CanjearCupones.aspx"  Visible="false" OnClick="btnDescarga_Click" runat="server" Text="" />
                                                                   <asp:Button ID="btnCanjear" PostBackUrl="~/Menus/Cliente/CanjearCupones.aspx"  OnClientClick='ocultar()' CssClass="btn boton" runat="server" OnClick="btnCanjear_Click" Text="Si, deseo canjear este cupón" />
                                                            </div>
                                                        </div>
                                                    </div>



                                                    <asp:HiddenField ID="hFIDCupon" Value='<%# Eval("ID") %>' runat="server" />
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
