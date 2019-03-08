<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="EcoProductos.aspx.cs" Inherits="Ecomonedas.EcoProductos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

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
            text-align: center;
            font-size: 22px;
            float: right;
        }
        .card{
            border:1px solid #A3D921;
        }
        .card:hover {
            box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
        }

    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="container-fluid">

        <div class="row">

            <div class="col-md-1"></div>
            <div class="col-md-10" style="background-color: white; border-left: 1px solid #ACACAC; border-right: 1px solid #ACACAC; padding-bottom: 50px;"></div>
            <div class="col-md-1"></div>

        </div>

    </div>

</asp:Content>
