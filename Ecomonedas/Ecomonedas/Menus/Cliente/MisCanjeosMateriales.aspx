<%@ Page Title="" Language="C#" MasterPageFile="~/PrincipalCliente.Master" AutoEventWireup="true" CodeBehind="MisCanjeosMateriales.aspx.cs" Inherits="Ecomonedas.Menus.Cliente.MisCanjeosMateriales" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <title>Mis Canjeos de Materiales</title>

    <style>
        .orange {
            background-color: #FC8252;
        }

        .tab {
            margin: auto;
            width: 100%;
            border: 1px solid black;
         
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">

        <div class="row">

            <div class="col-md-2">
            </div>
            <div class="col-md-10">

                <div style="border: 1px solid #EFEFF0; background-color: white; padding-bottom: 80px; width: 100%; margin-top: 15px; box-shadow: 2px 2px 10px 10px #F3F3F4">

                    <div class="row">

                        <div class="col-md-1"></div>

                        <div class="col-md-10" style="margin-top: 20px;">

                            <h3 style="border-bottom: 1px solid lightgray; padding-bottom: 10px;">Historial de Canjeo de Materiales</h3>


                            <asp:GridView HeaderStyle-BorderColor="Black" EmptyDataText="De momento no has canjeado ningún material, cuando lo hagas tus canjeos aparecerán aquí."  BorderWidth="0px" EmptyDataRowStyle-BorderStyle="None" ID="gvCanjeoMateriales" CssClass="tab" runat="server" HeaderStyle-CssClass="table orange" RowStyle-CssClass="table table-hover" AutoGenerateColumns="False">
               <%--                <EmptyDataRowStyle BorderStyle="None" BorderWidth="0px" />
                                 <EmptyDataTemplate>
                                   <p> De momento no has canjeado ningún material, cuando lo hagas tus canjeos aparecerán aquí</p>
                                </EmptyDataTemplate>--%>
                                <Columns>
                                    <asp:BoundField DataField="Fecha" ControlStyle-CssClass="col1" DataFormatString="{0:dd-M-yyyy}" HeaderText="Fecha"></asp:BoundField>
                                    <asp:BoundField DataField="Centro_Acopio.Nombre" HeaderText="Centro de Acopio donde se realiz&#243; el canjeo"></asp:BoundField>
                                    <asp:BoundField DataField="Cantidad_Total" HeaderText="Total de Ecomonedas obtenidas"></asp:BoundField>
                                </Columns>
                            </asp:GridView>

                        </div>

                        <div class="col-md-1"></div>

                    </div>

                </div>
            </div>

        </div>

    </div>

</asp:Content>
