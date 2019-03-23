<%@ Page Title="" Language="C#" MasterPageFile="~/PrincipalAdministrador.Master" AutoEventWireup="true" CodeBehind="MantenimientoCentrosAcopio.aspx.cs" Inherits="Ecomonedas.Menus.MantenimientoCentrosAcopio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <title>Ecomonedas | Centros de Acopio</title>
    <style>
        .boton {
            float: right;
            margin-right: 10px;
        }

        .tabla {
        }

        .checkInactivos {
            color: #c1c1c1;
            float: right;
        }

        .mGrid {
            width: 100%;
            background-color: #fff; /*tabla*/
            margin: 5px 0 10px 0;
            border: solid 1px #8F8F8F; /*borde*/
            border-collapse: collapse;
            margin-top: 40px;
        }

            .mGrid td {
                padding: 5px;
                border: solid 1px #c1c1c1; /*borde de todo el body*/
                color: #717171; /*body de la tabla*/
            }

            .mGrid th { /*encabezados de la tabla*/
                padding: 6px 26px;
                color: #fff;
                text-align: center;
                background: #A3D921 url(grd_head.png) repeat-x top;
                border-left: solid 1px #8F8F8F; /*borde*/
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
                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                        <ContentTemplate>
                  <div class="row">
                  
                            <div class="col-md-1"></div>
                            <div class="col-md-4" style="margin-top: 40px; margin-bottom: 52px;">

                                <asp:Label ID="lblMensaje" runat="server" Visible="false" Width="100%" Text=""></asp:Label>

                                <h3 style="color: #222222; border-bottom: 1px solid lightgray;">Datos del Centro de Acopio</h3>


                                <div class="form-group">
                                    <asp:Label ID="Label1" runat="server" Text="Nombre"></asp:Label><br />
                                    <asp:TextBox ID="txtNombre" AutoCompleteType="Disabled" runat="server" CssClass="form-control"></asp:TextBox><br />
                                    <asp:RequiredFieldValidator ValidationGroup="guardar" ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNombre" ErrorMessage="Error, debe digitar el nombre del centro de acopio" ForeColor="red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>

                                </div>
                                <div class="form-group">
                                    <asp:Label ID="Label2" runat="server" Text="Provincia"></asp:Label><br />
                                    <asp:DropDownList ID="ddlProvincia" runat="server" CssClass="form-control"></asp:DropDownList><br />
                                    <asp:RequiredFieldValidator ValidationGroup="guardar" ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddlProvincia" ErrorMessage="Error, debe seleccionar la provincia en donde se encuetra el centro de acopio" ForeColor="red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                                </div>

                                <div class="form-group">
                                    <asp:Label ID="Label3" runat="server" Text="Dirección Exacta"></asp:Label><br />
                                    <asp:TextBox ID="txtDireccionExacta" runat="server" TextMode="MultiLine" CssClass="form-control"></asp:TextBox><br />
                                    <asp:RequiredFieldValidator ValidationGroup="guardar" ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtDireccionExacta" ErrorMessage="Error, debe digitar la dirección exacta del centro de acopio" ForeColor="red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                                </div>
                                <div class="form-gruop">
                                    <asp:Label ID="Label4" runat="server" Text="Usuario Administrador"></asp:Label><br />
                                    <asp:DropDownList ID="ddlUsuario" runat="server" CssClass="form-control"></asp:DropDownList><br />
                                    <asp:RequiredFieldValidator ValidationGroup="guardar" ID="RequiredFieldValidator4" runat="server" ControlToValidate="ddlUsuario" ErrorMessage="Error, debe seleccionar un usuario administrador del centro de acopio" ForeColor="red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                                </div>


                                <asp:Label ID="Label7" runat="server" Text="Estado"></asp:Label><br />
                                <div class="form-group">
                                    <asp:RadioButton ID="rbActivo" Checked="true" runat="server" GroupName="estado" Text="Activo" />
                                    <asp:RadioButton ID="rbInactivo" runat="server" GroupName="estado" Text="Inactivo" /><br />
                                </div>
                                <asp:Button ID="btnGuardar" ValidationGroup="guardar" runat="server" Text="Guardar" OnClick="btnGuardar_Click" CssClass="btn btn-success boton" />
                                <asp:Button ID="btnNuevo" Visible="false" runat="server" Text="Nuevo" CssClass="btn btn-success boton" OnClick="btnNuevo_Click" />


                            </div>

                            <%--<div class="col-md-1"></div>--%>

                            <div class="col-md-7" style="margin-top: 40px; margin-bottom: 50px;">

                                <h3 style="color: #222222; border-bottom: 1px solid lightgray; margin-bottom: 20px;">Lista de Centros de Acopio</h3>

                                <div class="form-group">
                                    <asp:CheckBox ID="chkEstado" Text="Mostrar inactivos" Checked="false" AutoPostBack="true" CssClass="checkInactivos" OnCheckedChanged="chkEstado_CheckedChanged" runat="server" />
                                    <%-- <asp:Label runat="server" Text="Filtrar por estado"></asp:Label>--%>
                                </div>
                                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                    <ContentTemplate>
                                        <asp:GridView ID="grCentrosAcopio" runat="server" AutoGenerateSelectButton="true" CssClass="mGrid" OnSelectedIndexChanged="grCentrosAcopio_SelectedIndexChanged" DataKeyNames="ID" AutoGenerateColumns="False">

                                            <Columns>
                                                <asp:BoundField HeaderText="Nombre" DataField="Nombre"></asp:BoundField>
                                                <asp:BoundField HeaderText="Provincia" DataField="Provincia.Descripcion"></asp:BoundField>
                                                <asp:BoundField HeaderText="Direcci&#243;n" DataField="Direccion_Exacta"></asp:BoundField>
                                                <asp:BoundField HeaderText="Usuario Administrador" DataField="Usuario.NombreCompleto"></asp:BoundField>

                                            </Columns>

                                        </asp:GridView>
                                    </ContentTemplate>
                                    <Triggers>
                                        <asp:AsyncPostBackTrigger ControlID="chkEstado" EventName="CheckedChanged" />
                                        <asp:AsyncPostBackTrigger ControlID="grCentrosAcopio" EventName="SelectedIndexChanged" />
                                    </Triggers>

                                </asp:UpdatePanel>
                                <asp:HiddenField ID="hvIdCentro" runat="server" />
                            </div>
                            </div>
                    
                </div>
                </ContentTemplate>
                    </asp:UpdatePanel>
                <div class="col-md-1"></div>


            </div>
    </div>
        </div>
</asp:Content>
