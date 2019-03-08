<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="CentrosAcopio.aspx.cs" Inherits="Ecomonedas.CentrosAcopio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
        .alu {
            background-color: #E41E29;
        }

        .lat {
            background-color: black;
        }

        .limp {
            background-color: #736353;
        }

        .pap {
            background-color: #3385CA;
        }

        .pla {
            background-color: #EDCF03;
        }

        .tet {
            background-color: #909090;
        }

        .vid {
            background-color: #1D8F4A;
        }

        .enca {
            color: #676767;
            font-size: 24px;
            font-weight: bold;
        }

            .enca:hover {
                color: forestgreen;
                transition: all 0.5s;
            }

        .card:hover {
            box-shadow: 0px 2px 2px 0px #676767;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">

        <div class="row">

            <div class="col-md-1"></div>


            <div class="col-md-10" style="background-color: white; border-left: 1px solid #ACACAC; border-right: 1px solid #ACACAC; padding-bottom: 50px;">

                <h2 style="text-align: center; color: #222222; border-bottom: 1px solid lightgray; width: 70%; margin: auto; margin-top: 40px;">Tipo de Materiales</h2>
                <h5 style="margin-bottom: 40px; text-align: center; margin-top:10px;">Estos son los tipos de materiales que puedes traer a nuestros centros de acopio</h5>
                <div class="row">
                    <div class="col-md-12" style="margin-top: 30px; text-align: center;">



                        

                        <div class="card-group card-group-toggle" data-toggle="buttons" style="width: 70%; margin: auto;">

                            <div class="card text-white pap mb-3" style="max-width: 100%;">
                                <div class="card-header" style="width: 100%;">Papel</div>
                                <div class="card-body" style="background-image: url(/Imagenes/TipoMateriales/papel.png); background-position: center; background-repeat: no-repeat; height: 110px;">
                                </div>
                            </div>
                            <div class="card text-white vid mb-3" style="max-width: 100%;">
                                <div class="card-header" style="width: 100%;">Vidrio</div>
                                <div class="card-body" style="background-image: url(/Imagenes/TipoMateriales/vidrio.png); background-position: center; background-repeat: no-repeat; height: 110px;">
                                </div>
                            </div>
                            <div class="card text-white pla mb-3" style="max-width: 100%;">
                                <div class="card-header" style="width: 100%;">Plásticos</div>
                                <div class="card-body" style="background-image: url(/Imagenes/TipoMateriales/plasticos.png); background-position: center; background-repeat: no-repeat; height: 110px;">
                                </div>
                            </div>

                            
                            <div class="card text-white alu mb-3" style="max-width: 100%;">
                                <div class="card-header" style="width: 100%;">Aluminio</div>
                                <div class="card-body" style="background-image: url(/Imagenes/TipoMateriales/aluminio.png); background-position: center; background-repeat: no-repeat; height: 110px;">
                                </div>
                            </div>

                            

                            <div class="card text-white limp mb-3" style="max-width: 100%;">
                            <div class="card-header" style="width: 100%;">Químicos</div>
                            <div class="card-body" style="background-image: url(/Imagenes/TipoMateriales/limpieza.png); background-position: center; background-repeat: no-repeat; height: 110px;">
                            </div>
                        </div>

                            
                            
                            <div class="card text-white tet mb-3" style="max-width: 100%;">
                                <div class="card-header" style="width: 100%;">Tetrabrick</div>
                                <div class="card-body" style="background-image: url(/Imagenes/TipoMateriales/tetra.png); background-position: center; background-repeat: no-repeat; height: 110px;">
                                </div>
                            </div>
                            <div class="card text-white lat mb-3" style="max-width: 100%;">
                                <div class="card-header" style="width: 100%;">Latas</div>
                                <div class="card-body" style="background-image: url(/Imagenes/TipoMateriales/latas.png); background-position: center; background-repeat: no-repeat; height: 110px;">
                                </div>
                            </div>
                        </div>
                        <br />

                    </div>

                </div>



                <div class="row">
                    <div class="col-md-1"></div>
                    <div class="col-md-10" style="margin-top: 40px;">

                        <h2 style="text-align: center; color: #222222; border-bottom: 1px solid lightgray; width: 85%; margin: auto; margin-top: 40px;">Centro de Acopio</h2>
                        <h5 style="margin-bottom: 40px; text-align: center; margin-top:10px;">Estos son los centros de acopio a lo largo del país donde puedes canjear tus materiales</h5>

                        <ul class="nav nav-tabs" style="">
                            <li class="nav-item">
                                <a class="nav-link enca" data-toggle="tab" href="#home">San José</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link enca" data-toggle="tab" href="#home">Alajuela</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link enca" data-toggle="tab" href="#home">Cartago</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link enca" data-toggle="tab" href="#home">Heredia</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link enca" data-toggle="tab" href="#home">Guanacaste</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link enca" data-toggle="tab" href="#home">Puntarenas</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link enca" data-toggle="tab" href="#home">Limón</a>
                            </li>
                        </ul>
                        <div id="myTabContent" class="tab-content">
                            <div class="tab-pane fade" id="home">
                                <asp:GridView ID="gvCentros" runat="server" HeaderStyle-CssClass="table table-success" RowStyle-CssClass="table table-default">
                                </asp:GridView>
                            </div>
                        </div>


                    </div>
                    <div class="col-md-1"></div>

                </div>






                <div class="col-md-1"></div>

            </div>
        </div>

    </div>
</asp:Content>
