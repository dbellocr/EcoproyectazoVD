<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PagError.aspx.cs" Inherits="Ecomonedas.PagError" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Pantalla de Error</title>
    <link rel="shortcut icon" href="/imagenes/iconos/LogoProvi2.ico" />
    <script src="Scripts/jquery-3.0.0.js"></script>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.min.js"></script>

    <style>

        .mensj{
            text-align:center;
            margin:auto;
            font-size:34px;
            color:gray;
            font-weight:bold;
            width:100%;
        }

        .regr{
            margin-top:80px;
            font-size:20px;
            color:#787878;
            width:25%;
        }

        .regr:hover{
            color:#FF0000;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">


        <nav class="navbar navbar-expand-lg navbar-light" style="background-color: #8B0000; border-bottom: 3px solid red; color: white; font-size: 18px; width: 100%;">
            <a href="Default.aspx">
                <img style="margin-left: 40px;" src="/imagenes/LogoProvi2.png" width="40" /></a><a style="color: lightgray; font-weight: bold;">Eco</a><a>Monedas</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div id="navbarNavDropdown" class="navbar-collapse collapse" style="color: black;">
                <ul class="navbar-nav mr-auto">
                </ul>
                <ul class="navbar-nav">
                    <li class="nav-item dropdown"></li>
                    <li class="nav-item">
                        <a class="nav-link" href="Default.aspx"></a>
                    </li>
                </ul>
            </div>
        </nav>

        <div class="container-fluid">

            <div class="row">

                <div class="col-md-1"></div>
                <div class="col-md-10">

                    <div class="row">

                        <div class="col-md-12" style="text-align:center; margin-top:40px;">

                            <img src="Imagenes/42901.png"/ style="width:400px; height:200px; margin-bottom:-40px;" />

                        </div>

                    </div>

                    <div class="row">

                        <div class="col-md-12" style="text-align:center;">

                            <p style="font-size:160px; color:dimgray; font-weight:bold; text-align:center; height: 185px;">Error</p>

                            <asp:Label runat="server" ID="txtError" Text="Lo sentimos, la página solicitada no existe" CssClass="mensj"></asp:Label>

                        </div>

                    </div>

                    <div class="row">

                        <div class="col-md-12" style="text-align:center; margin-top:50px;">

                            <asp:Label runat="server" ID="lblVolver" Text="Regresar a la página anterior" CssClass="regr"/>

                        </div>

                    </div>
                </div>
                <div class="col-md-1"></div>

            </div>

        </div>

    </form>
</body>
</html>
