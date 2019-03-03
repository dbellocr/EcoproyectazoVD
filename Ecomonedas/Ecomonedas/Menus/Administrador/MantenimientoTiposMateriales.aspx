﻿<%@ Page Title="" Language="C#" MasterPageFile="~/PrincipalAdministrador.Master" AutoEventWireup="true" CodeBehind="MantenimientoTiposMateriales.aspx.cs" Inherits="Ecomonedas.MantenimientoTiposMateriales" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <title>Tipos de Materiales</title>
    <style>
        .boton {
            float: right;
        }

        #lblMensaje {
            margin-bottom: 50px;
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
                        <br />

                        <h3>Datos del Material Reciclable</h3>
                        <div class="form-group">
                            <asp:Label ID="Label1" runat="server" Text="Nombre"></asp:Label><br />
                            <asp:TextBox ID="txtNombre" AutoCompleteType="Disabled" runat="server" CssClass="form-control"></asp:TextBox><br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNombre" ErrorMessage="Error, debe digitar el nombre del tipo de material" ForeColor="red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
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
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPrecio" ErrorMessage="Error, debe digitar el precio equivalente a la ecomoneda" ForeColor="red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ValidationExpression="^\d+$" ControlToValidate="txtPrecio" runat="server" ErrorMessage="Error, el precio de la ecomoneda solo debe tener números sin decimales" Display="Dynamic" ForeColor="Red" SetFocusOnError="true"> </asp:RegularExpressionValidator>

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
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="archivoImagen" ErrorMessage="Error, debe seleccionar una imagen para el tipo de material" ForeColor="red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>

                    <div class="form-group">
                        <asp:Label ID="Label7" runat="server" Text="Estado"></asp:Label><br />
                        <asp:RadioButton ID="rbActivo" Checked="true" GroupName="estado" runat="server" Text="Activo" />
                        <asp:RadioButton ID="rbInactivo" GroupName="estado" runat="server" Text="Inactivo" /><br />
                    </div>
                    <asp:Button ID="btnGuardar" runat="server" Text="Guardar" CssClass="btn btn-success boton" OnClick="btnGuardar_Click" />

                </div>
                <div class="col-md-1"></div>
                <div class="col-md-6" style="margin-top: 40px; margin-bottom: 50px;">

                    <h3>Lista de Materiables Reciclables</h3>

                    <asp:GridView ID="gvMateriales" OnRowEditing="gvMateriales_RowUpdating"  AutoGenerateEditButton="true" CssClass="table" HeaderStyle-CssClass="table table-success" AutoGenerateColumns="false" runat="server">
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

                </div>
            </div>
        </div>

        <div class="col-md-1"></div>


    </div>



</asp:Content>
