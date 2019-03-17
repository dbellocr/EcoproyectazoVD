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

                <h2 runat="server" style="text-align: center; color: #222222; border-bottom: 1px solid lightgray; width: 70%; margin: auto; margin-top: 40px;">Canjeo de Materiales Reciclables</h2>

                <div class="row" style="margin-top: 50px;">

                    <div class="col-md-2"></div>

                    <div class="col-md-8">


                        <div class="form-group">
                            <asp:Label ID="lblCorreo" runat="server" Text="Correo" CssClass="etiqueta"></asp:Label>
                            <div class="form-group">
                                <div class="input-group mb-3">
                                    <input id="txtCorreo1" placeholder="Debe Confirmar al usuario con el botón buscar" runat="server" type="text" style="width: 60%;" class="form-control" autocomplete="off" />

                                    <div class="input-group-append">
                                        <asp:Button ID="btnBuscar" OnClick="btnBuscar_Click" runat="server" CssClass="boton btn btn-primary" Text="Buscar" />
                                    </div>
                                </div>
                                <asp:RequiredFieldValidator ValidationGroup="guardar" ID="RequiredFieldValidator5" runat="server" CssClass="validaciones" ControlToValidate="txtCorreo1" ErrorMessage="Error, debe digitar su correo" ForeColor="red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                                <asp:Label ID="lblMensajeNoEncontrado" runat="server" Text="" ForeColor="Red" Visible="false"></asp:Label>

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

                    <h3 id="tituloCanejo" runat="Server" style="text-align: center; color: #222222; border-bottom: 1px solid lightgray; width: 70%; margin: auto; margin-top: 40px;">Registre la cantidad de Materiales Reciclables</h3>

                    <div class="col-md-12" style="margin-top: 30px; text-align: center;">


                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                <asp:Repeater ID="repeaterMateriales" runat="server">

                                    <HeaderTemplate>
                                        <div class="card-group card-group-toggle" data-toggle="buttons" style="width: 73%; margin: auto;">
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <asp:UpdatePanel class="card-group card-group-toggle" style=" margin: auto;" data-toggle="buttons" runat="server">
                                            <ContentTemplate>

                                                <div   style="margin:auto; width:128px;" >



                                                    <div class="card text-white mb-3" style='<%# "background-color:" + Eval("ID_Color") + "; max-width: 100%;" %>'>
                                                        <div class="card-header" style="width: 100%;"><%# Eval("Nombre") %> </div>
                                                        <div class="card-body" style="background-image: url('/Imagenes/TipoMateriales/<%# Eval("Imagen_Path") %>'); background-position: center; background-repeat: no-repeat; height: 110px;">
                                                        </div>
                                                        <div class="card-footer text-muted" style="text-align: center;">
                                                            <asp:TextBox ID="txtCantidad" AutoPostBack="true" OnTextChanged="txtCantidad_TextChanged" Text="0" runat="server" CssClass="form-control"></asp:TextBox>
                                                        </div>
                                                    </div>


                                                </div>
                                                <asp:HiddenField ID="hvIDMaterial" Value='<%# Eval("ID") %>' runat="server" />

                                            </ContentTemplate>
                                            <Triggers>
                                                <asp:AsyncPostBackTrigger ControlID="txtCantidad" EventName="TextChanged" />
                                            </Triggers>
                                        </asp:UpdatePanel>

                                    </ItemTemplate>
                                    <FooterTemplate>
                                        </div>
                                   
                                    </FooterTemplate>
                                </asp:Repeater>
                            </ContentTemplate>


                        </asp:UpdatePanel>
                    </div>


                    <div style="margin: auto; text-align: center;">
                        <asp:Button ID="btnPreliminar" OnClick="btnPreliminar_Click" runat="server" Text="Preliminar" CssClass="btn btn-success" />
                    </div>

                </div>

                <div class="row" runat="server" visible="false" id="divTabla" style="margin-top: 40px;">



                    <div class="col-md-1"></div>
                    <div class="col-md-10">
                        <h3 runat="server" id="tituloMateriales" style="text-align: center; color: #222222; border-bottom: 1px solid white; width: 70%; margin: auto; margin-top: 40px;">Materiales a Canjear</h3>

                        <div class="card mb-3">
                            <div class="card-body">
                                <asp:GridView ID="gvMaterialesPreliminar" CssClass="table table-hover" HeaderStyle-CssClass="table table-success" runat="server" AutoGenerateColumns="False">
                                    <Columns>
                                        <asp:BoundField DataField="Tipo_Material.Nombre" HeaderText="Material"></asp:BoundField>
                                        <asp:BoundField DataField="Cantidad" HeaderText="Cantidad"></asp:BoundField>
                                        <asp:TemplateField HeaderText="Ecomonedas obtenidas por el material">
                                            <ItemTemplate>
                                                <asp:Label ID="lblTotalObtenido" runat="server" Text='<%# ((Convert.ToInt32(Eval("Cantidad")))* (Convert.ToInt32(Eval("Tipo_Material.Precio")))) %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                    </Columns>

                                </asp:GridView>
                            </div>
                            <div class="card-footer text-muted" style="float: right;">
                                <asp:Label ID="Label2" runat="server" Text="Total de ecomonedas obtenidas: "></asp:Label>
                                <asp:Label ID="lblTotalObtenido" runat="server" Text=""></asp:Label>
                            </div>
                        </div>

                    </div>
                    <div class="col-md-1"></div>

                </div>

                <div style="margin: auto; text-align: center;">
                    <asp:Button ID="btnCanje" Visible="false" runat="server" Text="Formalizar" CssClass="btn btn-success" />
                    <asp:Button ID="btnNuevoCanjeo" OnClick="btnNuevoCanjeo_Click" Visible="false" runat="server" Text="Nuevo Canjeo" CssClass="btn btn-success" />

                </div>



            </div>


            <div class="col-md-1"></div>
            <%--cierre del row principal--%>
        </div>
    </div>
    <%--cierre de container--%>
</asp:Content>
