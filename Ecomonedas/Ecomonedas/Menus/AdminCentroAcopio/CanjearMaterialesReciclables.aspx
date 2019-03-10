<%@ Page Title="" Language="C#" MasterPageFile="~/PrincipalAdminCentroAcopio.Master" AutoEventWireup="true" CodeBehind="CanjearMaterialesReciclables.aspx.cs" Inherits="Ecomonedas.Menus.AdminCentroAcopio.CanjearMaterialesReciclables" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <title>Canjear Materiales Reciclables</title>
    <style>
        .boton {
            float: right;
        }

        .lista {
        }

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

        .boton {
            background-color: #A3D921;
            color: white;
            border: 1px solid #A3D921;
        }

            .boton:hover {
                background-color: #89B228;
                border: 1px solid #89B228;
            }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">

        <div class="row">

            <div class="col-md-1"></div>


            <div class="col-md-10" style="background-color: white; border-left: 1px solid #ACACAC; border-right: 1px solid #ACACAC; padding-bottom: 50px;">

                <h2 style="text-align: center; color: #222222; border-bottom: 1px solid lightgray; width: 70%; margin: auto; margin-top: 40px;">Canjeo de Materiales Reciclables</h2>


                <div class="row" style="margin-top: 50px;">

                    <div class="col-md-2"></div>

                    <div class="col-md-8">


                        <div class="form-group">
                            <asp:Label ID="lblCorreo" runat="server" Text="Correo" CssClass="etiqueta"></asp:Label>
                            <div class="form-group">
                                <div class="input-group mb-3">
                                    <input id="txtCorreo1" placeholder="Debe Confirmar al usuario con el botón buscar" runat="server" type="text" style="width: 60%;" class="form-control" autocomplete="off" />

                                    <div class="input-group-append">
                                        <asp:Button ID="btnBuscar" runat="server" CssClass="boton btn btn-primary" Text="Buscar" />
                                    </div>
                                </div>
                                <asp:RequiredFieldValidator ValidationGroup="guardar" ID="RequiredFieldValidator5" runat="server" CssClass="validaciones" ControlToValidate="txtCorreo1" ErrorMessage="Error, debe digitar su correo" ForeColor="red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                            </div>
                        </div>

                        <div class="form-group">
                            <asp:Label ID="Label1" runat="server" Text="Nombre del Cliente"></asp:Label><br />
                            <asp:TextBox ID="txtNombre" AutoCompleteType="Disabled" runat="server" Enabled="false" placeholder="Nombre del Cliente" CssClass="form-control"></asp:TextBox>

                        </div>

                    </div>

                    <div class="col-md-2"></div>

                </div>

                <div class="row">
                    <h3 style="text-align: center; color: #222222; border-bottom: 1px solid lightgray; width: 70%; margin: auto; margin-top: 40px;">Registre la cantidad de Materiales Reciclables</h3>

                    <div class="col-md-12" style="margin-top: 30px; text-align: center;">



                        <asp:Repeater ID="repeaterMateriales" runat="server">

                            <HeaderTemplate>
                                <div class="card-group card-group-toggle" data-toggle="buttons" style="width: 70%; margin: auto;">
                            </HeaderTemplate>
                            <ItemTemplate>
                                <div class="card text-white mb-3" style='<%# "background-color:" + Eval("ID_Color") + "; max-width: 100%;" %>'>
                                    <div class="card-header" style="width: 100%;"><%# Eval("Nombre") %> </div>
                                    <div class="card-body" style="background-image: url('/Imagenes/TipoMateriales/<%# Eval("Imagen_Path") %>'); background-position: center; background-repeat: no-repeat; height: 110px;">
                                    </div>
                                    <div class="card-footer text-muted" style="text-align: center;">
                                        <asp:TextBox ID="txtCantidad" Text="0" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>

                            </ItemTemplate>
                            <FooterTemplate>
                                </div>
                                
                            </FooterTemplate>
                        </asp:Repeater>



                        <%--       <div class="card text-white lat mb-3" style="max-width: 100%;">
                                <div class="card-header" style="width: 100%;">Latas</div>
                                <div class="card-body" style="background-image: url(/Imagenes/TipoMateriales/latas.png); background-position: center; background-repeat: no-repeat; height: 110px;">
                                </div>
                                <div class="card-footer text-muted" style="text-align: center;">
                                    <asp:TextBox ID="txtCantidadLatas" Text="0" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>--%>
                    </div>
                    <br />

                </div>

                <div style="margin: auto; text-align: center;">
                    <asp:Button ID="btnFormalizar" runat="server" Text="Preliminar" CssClass="btn btn-success" />
                </div>

            </div>


            <div class="row" style="margin-top: 40px;">



                <div class="col-md-1"></div>
                <div class="col-md-10">
                    <h3 style="text-align: center; color: #222222; border-bottom: 1px solid white; width: 70%; margin: auto; margin-top: 40px;">Materiales a Canjear</h3>

                    <div class="card mb-3">
                        <div class="card-body">
                            <table class="table table-hover">
                                <thead>
                                    <tr class="table table-success">
                                        <th scope="col">Type</th>
                                        <th scope="col">Column heading</th>
                                        <th scope="col">Column heading</th>
                                        <th scope="col">Column heading</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr class="table-default">
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
                                    <tr class="table-default">
                                        <th scope="row">Primary</th>
                                        <td>Column content</td>
                                        <td>Column content</td>
                                        <td>Column content</td>
                                    </tr>
                                    <tr class="table-default">
                                        <th scope="row">Secondary</th>
                                        <td>Column content</td>
                                        <td>Column content</td>
                                        <td>Column content</td>
                                    </tr>
                                    <tr class="table-default">
                                        <th scope="row">Success</th>
                                        <td>Column content</td>
                                        <td>Column content</td>
                                        <td>Column content</td>
                                    </tr>
                                    <tr class="table-default">
                                        <th scope="row">Danger</th>
                                        <td>Column content</td>
                                        <td>Column content</td>
                                        <td>Column content</td>
                                    </tr>
                                    <tr class="table-default">
                                        <th scope="row">Warning</th>
                                        <td>Column content</td>
                                        <td>Column content</td>
                                        <td>Column content</td>
                                    </tr>
                                    <tr class="table-default">
                                        <th scope="row">Info</th>
                                        <td>Column content</td>
                                        <td>Column content</td>
                                        <td>Column content</td>
                                    </tr>
                                    <tr class="table-default">
                                        <th scope="row">Light</th>
                                        <td>Column content</td>
                                        <td>Column content</td>
                                        <td>Column content</td>
                                    </tr>
                                    <tr class="table-default">
                                        <th scope="row">Dark</th>
                                        <td>Column content</td>
                                        <td>Column content</td>
                                        <td>Column content</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="card-footer text-muted" style="float: right;">
                            <label>Total de ganancias: 50.</label>
                        </div>
                    </div>

                </div>
                <div class="col-md-1"></div>

            </div>

            <div style="margin: auto; text-align: center;">
                <asp:Button ID="btnCanje" runat="server" Text="Formalizar" CssClass="btn btn-success" />
            </div>


        </div>



    <div class="col-md-1"></div>
    </div>
    </div>

</asp:Content>
