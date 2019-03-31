<%@ Page Title="" Language="C#" MasterPageFile="~/PrincipalAdministrador.Master" AutoEventWireup="true" CodeBehind="ReporteEcomonedasCA.aspx.cs" Inherits="Ecomonedas.Menus.Administrador.ReporteEcomonedasCA" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <title>Ecomonedas | Reporte de Ecomonedas producidas por Centro de Acopio</title>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">

        <div class="row">

            <div class="col-md-1"></div>


            <div class="col-md-10" style="background-color: white; border-left: 1px solid #ACACAC; border-right: 1px solid #ACACAC; padding-bottom: 310px;">


                <h3 style="color: #222222; border-bottom: 1px solid lightgray; margin-bottom: 30px; margin-top: 40px; text-align: center;">Reporte de Ecomonedas producidas por Centro de Acopio</h3>

                <div class="row" style="margin-top: 30px;">


                    <div class="col-md-1"></div>
                    <div class="col-md-3">


                        <asp:Label ID="lblFechaInicio" runat="server" Text="Digite la ficha inicial"></asp:Label>
                        <div class="form-group" style="margin: auto; text-align: center;">
                            <asp:TextBox runat="server" ID="txtFechaInicio" TextMode="Date" Width="90%" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Debe digitar una fecha de inicio" ForeColor="red" ControlToValidate="txtFechaInicio"></asp:RequiredFieldValidator>
                             </div>
                        <br />
                        <br />
                        <asp:Label ID="Label1" runat="server" Text="Digite la ficha final" CssClass="etiq"></asp:Label>
                        <div class="form-group" style="margin: auto; text-align: center;">
                            <asp:TextBox runat="server" ID="txtFechaFinal" TextMode="Date" Width="90%" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Debe digitar una fecha final" ForeColor="red" ControlToValidate="txtFechaFinal"></asp:RequiredFieldValidator>

                        </div>
                        <br />
                        <br />
                        <asp:Button runat="server" ID="btnFechas" OnClick="btnFechas_Click" Text="Generar" CssClass="btn btn-success" />


                    </div>
                    <div class="col-md-7">

                        <rsweb:ReportViewer ID="ReportViewer1" Width="100%" runat="server"></rsweb:ReportViewer>

                    </div>
                    <div class="col-md-1"></div>

                </div>

            </div>

            <div class="col-md-1"></div>

        </div>

    </div>


</asp:Content>
