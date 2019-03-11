<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PantallaError.aspx.cs" Inherits="Ecomonedas.PantallaError" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Pantalla de Error</title>
    <link rel="shortcut icon" href="/imagenes/iconos/LogoProvi1.ico" />
    <script src="Scripts/jquery-3.0.0.js"></script>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">


        <nav class="navbar navbar-expand-lg navbar-light" style="background-color: #fcfcfc; border-bottom: 3px solid red; color: black; font-size: 18px; width: 100%;">
            <a href="Default.aspx">
                <img style="margin-left: 40px;" src="/imagenes/LogoProvi1.png" width="40" /></a><a style="color: darkred; font-weight: bold;">Eco</a><a>Monedas</a>
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
                <div class="col-md-10" style="background-image:url(/Imagenes/ErrorP.png)">

                    

                </div>
                <div class="col-md-1"></div>

            </div>

        </div>

    </form>
</body>
</html>

