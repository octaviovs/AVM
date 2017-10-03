<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="HistorialCitas.aspx.cs" Inherits="MVPG52.HistorialCitas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron card-panel teal white ">

        <nav class="" data-target="red" style="top: auto; z-index: auto">
            <div class="nav-wrapper #311b92 deep-purple darken-1">
                <div class="container center-align">
                    <h3 class="">Historial de Citas</h3>
                    <ul id="nav-mobile2" class="right hide-on-med-and-down">
                    </ul>
                </div>
            </div>
        </nav>
 
        <br />

        <div class="row ">
         
            <h4>Para buscar una historial de citas ingrese en la caja de texto la matrícula.</h4>
            <div class="col s2">
                <asp:TextBox ID="txtMatricula" runat="server"></asp:TextBox>
            </div>
            <div class="col s2">
                <asp:Button ID="ButtonBUscar" runat="server" Text="Buscar" OnClick="ButtonBUscar_Click" CssClass=" " />
            </div>
            <div class="col s6 " style="color: red">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtMatricula" runat="server" ErrorMessage="Ingrese una matrícula"></asp:RequiredFieldValidator>
            </div>

        </div>

        <ul class="nav nav-tabs ">
            <li class="active"><a data-toggle="tab" href="#Historial" class="card-panel #2196f3 blue white-text">Historial</a></li>
            <li><a data-toggle="tab" href="#Detalles" class="card-panel #ff6f00 amber darken-4 white-text">Detalles</a></li>
        </ul>
        <div class="tab-content">
            <div id="Historial" class="tab-pane fade in active">
                <asp:Panel ID="PanelMensaje" runat="server" Visible="false">
                    <h2 style="color:red">
                        No encontrado
                    </h2>
                </asp:Panel>
                <asp:GridView ID="GridViewHistorialCitas" runat="server" OnRowCommand="GridView2_RowCommand" CssClass="highlight centered responsive-table table table-striped table table-hover">
                    <Columns>
                        <asp:TemplateField ShowHeader="False" HeaderText="Cancelar">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButtonDetalle" runat="server" CommandName="Ver">
                                    <span class=" label label-info">Detalle</span>
                                </asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField ShowHeader="False" HeaderText=" ">
                            <ItemTemplate>
                                <asp:Label ID="Label1" Visible="false" runat="server" Text='<%# Eval("Id")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
            <div id="Detalles" class="tab-pane fade">
                <div class="container">
                    <a>Datos del médico</a>
                    <div class="row">
                        <div class="col s2">
                            <asp:Label ID="Label2" runat="server" Text="Nombre:" Font-Size="Medium"></asp:Label>
                        </div>
                        <div class="col s4">
                            <asp:Label ID="labelNombreMedico" runat="server" Text="Nombre" Font-Size="Medium"></asp:Label>
                        </div>
                        <div class="col s2">
                            <asp:Label ID="Label5" runat="server" Text="Matrícula:" Font-Size="Medium"></asp:Label>
                        </div>
                        <div class="col s2">
                            <asp:Label ID="labelIdMedico" runat="server" Text="Matrícula" Font-Size="Medium"></asp:Label>
                        </div>
                        <div class="col s2">
                            <asp:Label ID="LabelEspecialidad" runat="server" Text="Especialidad" Font-Size="Medium"></asp:Label>
                        </div>
                    </div>

                    <a>Datos del alumno</a>
                    <div class="row">
                        <div class="col s2">
                            <asp:Label ID="Label1" runat="server" Text="Alumno :" Font-Size="Medium"></asp:Label>
                        </div>
                        <div class="col s4">
                            <asp:Label ID="LabelNombreAlumno" runat="server" Text="Nombre" Font-Size="Medium"></asp:Label>
                        </div>
                        <div class="col s2">
                            <asp:Label ID="Label3" runat="server" Text="Matrícula:" Font-Size="Medium"></asp:Label>
                        </div>
                        <div class="col s2">
                            <asp:Label ID="LabelMatriculaAlumno" runat="server" Text="Matrícula" Font-Size="Medium"></asp:Label>
                        </div>
                        <div class="col s2 ">
                            <asp:Label ID="LabelIdCita" runat="server" Text="Id:" Font-Size="Medium" Visible="false"></asp:Label>
                        </div>
                    </div>
                    <a>Fecha</a>
                    <div class="row">
                        <div class="col s2">
                            <asp:Label ID="LabelFecha" runat="server" Text="Fecha" Font-Size="Medium"></asp:Label>
                        </div>
                        <div class="col s4">
                            <asp:Label ID="labelHora" runat="server" Text="hora" Font-Size="Medium"></asp:Label>
                        </div>

                    </div>
                    <a>Resumen del antecedente</a>
                    <div style="color:black">
                        <asp:TextBox ID="ResumenAntecedente" runat="server" TextMode="MultiLine" CssClass="materialize-textarea" ReadOnly="True" Font-Size="Medium" ForeColor="Black"></asp:TextBox>
                    </div>
                    <a>Datos fisicos</a>
                    <%-- Talla y peso --%>
                    <div class="row">
                        <div class="input-field col s4 push-s8" style="top: 0; left: 0px">
                            <asp:TextBox ID="Talla" runat="server" ReadOnly="True" Font-Size="Medium" ForeColor="Black"></asp:TextBox>
                            <label for="Talla">Talla</label>
                        </div>

                        <div class="input-field col s4 pull-s8" style="top: 0; left: 0px">
                            <asp:TextBox ID="Peso" runat="server" ReadOnly="True" Font-Size="Medium" ForeColor="Black"></asp:TextBox>
                            <label for="Peso">Peso</label>
                        </div>
                        <div class="input-field col s4 pull-s8" style="top: 0; left: 0px">
                            <asp:TextBox ID="Presion" runat="server" ReadOnly="True" Font-Size="Medium" ForeColor="Black"></asp:TextBox>
                            <label for="Presion">Presión Arterial</label>
                        </div>
                    </div>
                    <a>Resumen Exploración Fisica</a>
                    <div>
                        <asp:TextBox ID="ResumenExploracion" runat="server" TextMode="MultiLine" CssClass="materialize-textarea" ReadOnly="True" Font-Size="Medium" ForeColor="Black"></asp:TextBox>
                    </div>
                    <a>Diagnostico</a>
                    <div>
                        <asp:TextBox ID="TextBoxDiagnostico" runat="server" ReadOnly="True" Font-Size="Medium" ForeColor="Black"></asp:TextBox>
                    </div>
                    <a>Plan de Tratamiento</a>
                    <div>
                        <asp:TextBox ID="PlanTratamiento" runat="server" TextMode="MultiLine" CssClass="materialize-textarea" ReadOnly="True" Font-Size="Medium" ForeColor="Black"></asp:TextBox>
                    </div>

                </div>
            </div>
        </div>
    </div>
</asp:Content>
