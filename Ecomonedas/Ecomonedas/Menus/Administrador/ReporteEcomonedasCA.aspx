<%@ Page Title="" Language="C#" MasterPageFile="~/PrincipalAdministrador.Master" AutoEventWireup="true" CodeBehind="ReporteEcomonedasCA.aspx.cs" Inherits="Ecomonedas.Menus.Administrador.ReporteEcomonedasCA" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <title>Ecomonedas | Reporte de Ecomonedas producidas por Centro de Acopio</title>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">

        <div class="row">

            <div class="col-md-1"></div>


            <div class="col-md-10" style="background-color: white; border-left: 1px solid #ACACAC; border-right: 1px solid #ACACAC; padding-bottom: 310px;">


                <h3 style="color: #222222; border-bottom: 1px solid lightgray; margin-bottom: 30px; margin-top: 40px; text-align: center;">Reporte</h3>

                <div class="row" style="margin-top: 30px;">


                    <div class="col-md-1"></div>
                    <div class="col-md-3">

                        
                        <asp:Label ID="lblFechaInicio" runat="server" Text="Digite la ficha inicial"></asp:Label>
                        <div class="form-group" style="margin: auto; text-align: center;">
                            <asp:TextBox runat="server" ID="txtFechaInicio" TextMode="Date" Width="90%" CssClass="form-control"></asp:TextBox>
                        </div>
                        <br />
                        <br />
                        <asp:Label ID="Label1" runat="server" Text="Digite la ficha final" CssClass="etiq"></asp:Label>
                        <div class="form-group" style="margin: auto; text-align: center;">
                            <asp:TextBox runat="server" ID="txtFechaFinal" TextMode="Date" Width="90%" CssClass="form-control"></asp:TextBox>
                        </div>
                        <br />
                        <br />
                        <asp:Button runat="server" ID="btnFechas" Text="Generar" CssClass="btn btn-success"/>


                    </div>
                    <div class="col-md-7">

                        <table class="table table-hover">
                            <thead>
                                <tr>
                                    <th scope="col">Type</th>
                                    <th scope="col">Column heading</th>
                                    <th scope="col">Column heading</th>
                                    <th scope="col">Column heading</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr class="table-active">
                                    <th scope="row">Active</th>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                </tr>
                                <tr>
                                    <th scope="row">Default</th>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                </tr>
                                <tr class="table-primary">
                                    <th scope="row">Primary</th>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                </tr>
                                <tr class="table-secondary">
                                    <th scope="row">Secondary</th>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                </tr>
                                <tr class="table-success">
                                    <th scope="row">Success</th>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                </tr>
                                <tr class="table-danger">
                                    <th scope="row">Danger</th>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                </tr>
                                <tr class="table-warning">
                                    <th scope="row">Warning</th>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                </tr>
                                <tr class="table-info">
                                    <th scope="row">Info</th>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                </tr>
                                <tr class="table-light">
                                    <th scope="row">Light</th>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                </tr>
                                <tr class="table-dark">
                                    <th scope="row">Dark</th>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                </tr>
                            </tbody>
                        </table>

                    </div>
                    <div class="col-md-1"></div>

                </div>

            </div>

            <div class="col-md-1"></div>

        </div>

    </div>


</asp:Content>
