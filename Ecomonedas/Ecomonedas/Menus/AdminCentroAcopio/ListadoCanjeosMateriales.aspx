<%@ Page Title="" Language="C#" MasterPageFile="~/PrincipalAdminCentroAcopio.Master" AutoEventWireup="true" CodeBehind="ListadoCanjeosMateriales.aspx.cs" Inherits="Ecomonedas.Menus.AdminCentroAcopio.ListadoCanjeosMateriales" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <title>Listado de Canjeos de Materiales</title>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


     <div class="container-fluid">

        <div class="row">

            <div class="col-md-1"></div>


            <div class="col-md-10" style="background-color: white; border-left: 1px solid #ACACAC; border-right: 1px solid #ACACAC; padding-bottom: 310px;">
                <div class="row">
                    <div class="col-md-1"></div>
                    <div class="col-md-10" style="margin-top: 40px; margin-bottom: 52px;">

                        <h3 style=" color: #222222; border-bottom: 1px solid lightgray; margin-bottom:30px;">Lista de Canjeos de Materiales Reciclables</h3>

                        <asp:GridView ID="gvCanjes" runat="server" RowStyle-CssClass="table table-default" HeaderStyle-CssClass="table table-success"  AutoGenerateColumns="False">
                            <Columns>
                            </Columns>
                        </asp:GridView>
                        <asp:HiddenField ID="hvIdCanjeos" runat="server" />
                    </div>
                </div>
            </div>

            <div class="col-md-1"></div>


        </div>

    </div>


</asp:Content>
