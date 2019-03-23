<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="CentrosAcopio.aspx.cs" Inherits="Ecomonedas.CentrosAcopio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Ecomonedas | Centros de Acopio</title>
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

        .mGrid {
            width: 100%;
            background-color: #fff; /*tabla*/
            margin: 5px 0 10px 0;
            border: solid 1px #8F8F8F;/*borde*/
            border-collapse: collapse;
            margin-top:40px;
        }

            .mGrid td {
                padding: 15px;
                border: solid 1px #c1c1c1;/*borde de todo el body*/
                color: #717171; /*body de la tabla*/
            }

            .mGrid th { /*encabezados de la tabla*/
                padding: 15px 26px;
                color: #fff;
                text-align:center;
                background: #A3D921 url(grd_head.png) repeat-x top;
                border-left: solid 1px #8F8F8F;/*borde*/
                font-size: 0.9em;
            }

            .mGrid .alt {
                background: #fcfcfc url(grd_alt.png) repeat-x top;
            }

            .mGrid .pgr {
                background: #424242 url(grd_pgr.png) repeat-x top;
            }

                .mGrid .pgr table {
                    margin: 5px 0;
                }

                .mGrid .pgr td {
                    border-width: 0;
                    padding: 0 6px;
                    border-left: solid 1px lightgray;
                    font-weight: bold;
                    color: #fff;
                    line-height: 12px;
                }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">

        <div class="row">

            <div class="col-md-1"></div>


            <div class="col-md-10" style="background-color: white; border-left: 1px solid #ACACAC; border-right: 1px solid #ACACAC; padding-bottom: 50px;">

                <h2 style="text-align: center; color: #222222; border-bottom: 1px solid lightgray; width: 70%; margin: auto; margin-top: 40px;">Tipo de Materiales</h2>
                <h5 style="margin-bottom: 40px; text-align: center; margin-top: 10px;">Estos son los tipos de materiales que puedes traer a nuestros centros de acopio</h5>
                <div class="row">
                    <div class="col-md-12" style="margin-top: 30px; text-align: center;">


                        <asp:Repeater ID="repeaterMateriales" runat="server">

                            <HeaderTemplate>
                                <div class="card-group card-group-toggle" data-toggle="buttons" style="width: 70%; margin: auto;">
                            </HeaderTemplate>
                            <ItemTemplate>
                                <div class="card text-white mb-3" style='<%# "background-color:" + Eval("ID_Color") + "; max-width: 100%;" %>'>

                                    <%--                                <div class="card text-white mb-3"  runat="server" style=" background-color:<%# Eval("ID_Color")%>; max-width: 100%;" id="divAcopio"  >--%>
                                    <div class="card-header" style="width: 100%;"><%# Eval("Nombre") %> </div>
                                    <div class="card-body" style="background-image: url('/Imagenes/TipoMateriales/<%# Eval("Imagen_Path") %>'); background-position: center; background-repeat: no-repeat; height: 110px;">
                                    </div>
                                </div>

                            </ItemTemplate>
                            <FooterTemplate>
                                </div>
                            </FooterTemplate>
                        </asp:Repeater>

                        <br />

                    </div>

                </div>



                <div class="row">
                    <div class="col-md-1"></div>
                    <div class="col-md-10" style="margin-top: 40px;">

                        <h2 style="text-align: center; color: #222222; border-bottom: 1px solid lightgray; width: 85%; margin: auto; margin-top: 40px;">Centro de Acopio</h2>
                        <h5 style="margin-bottom: 40px; text-align: center; margin-top: 10px;">Estos son los centros de acopio a lo largo del país donde puedes canjear tus materiales</h5>

                        <ul class="nav nav-tabs" style="">
                            <li class="nav-item">
                                <a class="nav-link enca" data-toggle="tab" href="#sj">San José</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link enca" data-toggle="tab" href="#ala">Alajuela</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link enca" data-toggle="tab" href="#car">Cartago</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link enca" data-toggle="tab" href="#hr">Heredia</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link enca" data-toggle="tab" href="#gn">Guanacaste</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link enca" data-toggle="tab" href="#pn">Puntarenas</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link enca" data-toggle="tab" href="#ln">Limón</a>
                            </li>
                        </ul>
                        <div id="myTabContent" class="tab-content">
                            <div class="tab-pane fade active show" id="sj">
                                <asp:GridView ID="gvCentrosSanJose" runat="server" CssClass="mGrid" AutoGenerateColumns="False">
                                    <Columns>
                                        <asp:BoundField DataField="Nombre" HeaderText="Nombre"></asp:BoundField>
                                        <asp:BoundField DataField="Direccion_Exacta" HeaderText="Direcci&#243;n Exacta"></asp:BoundField>
                                        <asp:BoundField HeaderText="Administrador" DataField="Usuario.NombreCompleto"></asp:BoundField>
                                        <asp:BoundField HeaderText="Correo Electrónico" DataField="Usuario.Correo_Electronico"></asp:BoundField>
                                        <asp:BoundField HeaderText="Teléfono" DataField="Usuario.Telefono"></asp:BoundField>

                                    </Columns>

                                </asp:GridView>
                            </div>
                            <div class="tab-pane fade" id="ala">

                                <asp:GridView ID="gvCentrosAlajuela" AutoGenerateColumns="False" CssClass="mGrid"  runat="server" >
                                    <Columns>
                                        <asp:BoundField DataField="Nombre" HeaderText="Nombre"></asp:BoundField>
                                        <asp:BoundField DataField="Direccion_Exacta" HeaderText="Direcci&#243;n Exacta"></asp:BoundField>
                                        <asp:BoundField HeaderText="Administrador" DataField="Usuario.NombreCompleto"></asp:BoundField>
                                        <asp:BoundField HeaderText="Correo Electrónico" DataField="Usuario.Correo_Electronico"></asp:BoundField>
                                        <asp:BoundField HeaderText="Teléfono" DataField="Usuario.Telefono"></asp:BoundField>

                                    </Columns>
                                </asp:GridView>
                            </div>
                            <div class="tab-pane fade" id="car">
                                <div>
                                    <asp:GridView ID="gvCentrosCartago" AutoGenerateColumns="False" runat="server" CssClass="mGrid" >
                                        <Columns>
                                            <asp:BoundField DataField="Nombre" HeaderText="Nombre"></asp:BoundField>
                                            <asp:BoundField DataField="Direccion_Exacta" HeaderText="Direcci&#243;n Exacta"></asp:BoundField>
                                            <asp:BoundField HeaderText="Administrador" DataField="Usuario.NombreCompleto"></asp:BoundField>
                                            <asp:BoundField HeaderText="Correo Electrónico" DataField="Usuario.Correo_Electronico"></asp:BoundField>
                                            <asp:BoundField HeaderText="Teléfono" DataField="Usuario.Telefono"></asp:BoundField>

                                        </Columns>
                                    </asp:GridView>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="hr">
                                <asp:GridView ID="gvCentrosHeredia" AutoGenerateColumns="False" runat="server" CssClass="mGrid" >
                                    <Columns>
                                        <asp:BoundField DataField="Nombre" HeaderText="Nombre"></asp:BoundField>
                                        <asp:BoundField DataField="Direccion_Exacta" HeaderText="Direcci&#243;n Exacta"></asp:BoundField>
                                        <asp:BoundField HeaderText="Administrador" DataField="Usuario.NombreCompleto"></asp:BoundField>
                                        <asp:BoundField HeaderText="Correo Electrónico" DataField="Usuario.Correo_Electronico"></asp:BoundField>
                                        <asp:BoundField HeaderText="Teléfono" DataField="Usuario.Telefono"></asp:BoundField>

                                    </Columns>
                                </asp:GridView>
                            </div>
                            <div class="tab-pane fade" id="gn">
                                <asp:GridView ID="gvCentrosGuanacaste" AutoGenerateColumns="False" runat="server" CssClass="mGrid" >
                                    <Columns>
                                        <asp:BoundField DataField="Nombre" HeaderText="Nombre"></asp:BoundField>
                                        <asp:BoundField DataField="Direccion_Exacta" HeaderText="Direcci&#243;n Exacta"></asp:BoundField>
                                        <asp:BoundField HeaderText="Administrador" DataField="Usuario.NombreCompleto"></asp:BoundField>
                                        <asp:BoundField HeaderText="Correo Electrónico" DataField="Usuario.Correo_Electronico"></asp:BoundField>
                                        <asp:BoundField HeaderText="Teléfono" DataField="Usuario.Telefono"></asp:BoundField>

                                    </Columns>
                                </asp:GridView>
                            </div>
                            <div class="tab-pane fade" id="pn">

                                <asp:GridView ID="gvCentrosPuntarenas" AutoGenerateColumns="False" runat="server" CssClass="mGrid" >
                                    <Columns>
                                        <asp:BoundField DataField="Nombre" HeaderText="Nombre"></asp:BoundField>
                                        <asp:BoundField DataField="Direccion_Exacta" HeaderText="Direcci&#243;n Exacta"></asp:BoundField>
                                        <asp:BoundField HeaderText="Administrador" DataField="Usuario.NombreCompleto"></asp:BoundField>
                                        <asp:BoundField HeaderText="Correo Electrónico" DataField="Usuario.Correo_Electronico"></asp:BoundField>
                                        <asp:BoundField HeaderText="Teléfono" DataField="Usuario.Telefono"></asp:BoundField>

                                    </Columns>
                                </asp:GridView>
                            </div>
                            <div class="tab-pane fade" id="ln">
                                <asp:GridView ID="gvCentrosLimon" AutoGenerateColumns="False" runat="server" CssClass="mGrid" >
                                    <Columns>
                                        <asp:BoundField DataField="Nombre" HeaderText="Nombre"></asp:BoundField>
                                        <asp:BoundField DataField="Direccion_Exacta" HeaderText="Direcci&#243;n Exacta"></asp:BoundField>
                                        <asp:BoundField HeaderText="Administrador" DataField="Usuario.NombreCompleto"></asp:BoundField>
                                        <asp:BoundField HeaderText="Correo Electrónico" DataField="Usuario.Correo_Electronico"></asp:BoundField>
                                        <asp:BoundField HeaderText="Teléfono" DataField="Usuario.Telefono"></asp:BoundField>

                                    </Columns>
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
