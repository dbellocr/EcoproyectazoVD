<%@ Page Title="" Language="C#" MasterPageFile="~/PrincipalAdministrador.Master" AutoEventWireup="true" CodeBehind="MantenimientoTiposMateriales.aspx.cs" Inherits="Ecomonedas.MantenimientoTiposMateriales" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <title>Tipos de Materiales</title>
    <style>
        .boton {
            float: right;
            margin-right: 10px;
        }

        #lblMensaje {
            margin-bottom: 50px;
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
                padding: 5px;
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

                <div class="row">
                    <div class="col-md-1"></div>
                    <div class="col-md-4" style="margin-top: 40px; margin-bottom: 84px;">


                        <asp:Label ID="lblMensaje" runat="server" Visible="false" Width="100%" Text=""></asp:Label>

                        <h3 style=" color: #222222; border-bottom: 1px solid lightgray;">Datos del Material Reciclable</h3>
                        <div class="form-group">
                            <asp:Label ID="Label1" runat="server" Text="Nombre"></asp:Label><br />
                            <asp:TextBox ValidationGroup="guardar" ID="txtNombre" AutoCompleteType="Disabled" runat="server" CssClass="form-control"></asp:TextBox><br />
                            <asp:RequiredFieldValidator  ValidationGroup="guardar" ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNombre" ErrorMessage="Error, debe digitar el nombre del tipo de material" ForeColor="red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                        </div>


                        <div class="form-group">
                            <asp:Label ID="Label3" CssClass="control-label" runat="server" Text="Precio Equivalente a la Ecomoneda"></asp:Label><br />
                            <div class="form-group">
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">₡</span>
                                    </div>
                                    <asp:TextBox ID="txtPrecio" AutoCompleteType="Disabled" runat="server" CssClass="form-control"></asp:TextBox><br />

                                </div>
                            </div>
                            <asp:RequiredFieldValidator ValidationGroup="guardar" ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPrecio" ErrorMessage="Error, debe digitar el precio equivalente a la ecomoneda" ForeColor="red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ValidationGroup="guardar" ID="RegularExpressionValidator1" ValidationExpression="^\d+$" ControlToValidate="txtPrecio" runat="server" ErrorMessage="Error, el precio de la ecomoneda solo debe tener números sin decimales" Display="Dynamic" ForeColor="Red" SetFocusOnError="true"> </asp:RegularExpressionValidator>

                        </div>



                        <div class="form-group">

                            <asp:Label ID="Label4" runat="server" Text="Color"></asp:Label><br />
                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                <ContentTemplate>
                                    <div class="input-group mb-3">

                                        <asp:DropDownList ID="ddlColor" AutoPostBack="true" OnSelectedIndexChanged="ddlColor_SelectedIndexChanged" Width="80%" runat="server" CssClass="form-control"></asp:DropDownList>

                                        <div class="input-group-append">
                                            <span runat="server" style="background-color: black; display: block;" class="input-group-text" id="spanColor"></span>
                                        </div>
                                </ContentTemplate>
                                <Triggers>
                                    <asp:AsyncPostBackTrigger ControlID="ddlColor" EventName="SelectedIndexChanged" />
                                </Triggers>
                            </asp:UpdatePanel>
                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="Label2" runat="server" Text="Imagen"></asp:Label><br />
                        <asp:FileUpload ID="archivoImagen" runat="server" /><br />

                    </div>
                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="archivoImagen" ErrorMessage="Error, debe seleccionar una imagen para el tipo de material" ForeColor="red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>--%>
                    <asp:CustomValidator ValidationGroup="guardar" ID="CustomValidator1" ValidateEmptyText="true" OnServerValidate="CustomValidator1_ServerValidate" runat="server" ControlToValidate="archivoImagen" ErrorMessage="Error, debe seleccionar una imagen para el tipo de material" ForeColor="red" Display="Dynamic" SetFocusOnError="true"></asp:CustomValidator>


                    <div class="form-group">
                        <asp:Label ID="Label7" runat="server" Text="Estado"></asp:Label><br />
                        <asp:RadioButton ID="rbActivo" Checked="true" GroupName="estado" runat="server" Text="Activo" />
                        <asp:RadioButton ID="rbInactivo" GroupName="estado" runat="server" Text="Inactivo" /><br />
                    </div>
                    <asp:Button ID="btnNuevo" Visible="false" runat="server" Text="Nuevo" CssClass="btn btn-success boton" OnClick="btnNuevo_Click" />
                    <asp:Button ValidationGroup="guardar" ID="btnGuardar" runat="server" Text="Guardar" CssClass="btn btn-success boton" OnClick="btnGuardar_Click" />

                </div>
                <%--<div class="col-md-1"></div>--%>
                <div class="col-md-7" style="margin-top: 40px; margin-bottom: 50px;">

                    <h3 style=" color: #222222; border-bottom: 1px solid lightgray; margin-bottom:20px;">Lista de Materiables Reciclables</h3>

                    <asp:GridView ID="gvMateriales" AutoGenerateSelectButton="true" OnSelectedIndexChanged="gvMateriales_SelectedIndexChanged" DataKeyNames="ID" CssClass="mGrid" AutoGenerateColumns="false" runat="server">
                        <Columns>

                            <asp:BoundField HeaderText="Nombre" DataField="Nombre"></asp:BoundField>
                            <asp:BoundField HeaderText="Precio" DataFormatString="{0:N0} ecomonedas" DataField="Precio"></asp:BoundField>
                            <asp:BoundField HeaderText="Color" DataField="Color.Descripcion"></asp:BoundField>
                            <asp:TemplateField HeaderText="Imagen">
                                <ItemTemplate>
                                    <asp:Image ID="imgMaterial" ImageAlign="Middle" ImageUrl='<%# Eval("Imagen_Path", "~/Imagenes/TipoMateriales/{0}") %>' runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                    <asp:HiddenField ID="hvIdMaterial" runat="server" />
                </div>
            </div>
        </div>

        <div class="col-md-1"></div>


    </div>



</asp:Content>
