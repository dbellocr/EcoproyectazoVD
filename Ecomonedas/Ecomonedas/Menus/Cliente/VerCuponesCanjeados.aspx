<%@ Page Title="" Language="C#" MasterPageFile="~/PrincipalCliente.Master" AutoEventWireup="true" CodeBehind="VerCuponesCanjeados.aspx.cs" Inherits="Ecomonedas.Menus.Cliente.VerCuponesCanjeados" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <title>Mis Cupones Canjeados</title>

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

                            <h3 style="border-bottom: 1px solid lightgray; padding-bottom: 10px;">Historial de Cupones Canjeados</h3>


                            <asp:GridView ID="gvCanjeoMateriales" runat="server" HeaderStyle-CssClass="table table-primary" RowStyle-CssClass="table table-default"></asp:GridView>

                        </div>

                        <div class="col-md-1"></div>

                    </div>

                </div>
            </div>

        </div>

    </div>

</asp:Content>
