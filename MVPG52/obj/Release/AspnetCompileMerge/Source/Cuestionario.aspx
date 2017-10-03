<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cuestionario.aspx.cs" Inherits="MVPG52.Cuestionario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style type="text/css">
        label {
            color: black;
        }

        img {
            width: 100%;
        }

        button {
            width: 100px;
            height: 100px;
        }

        .parallax-container {
            height: 300px;
        }

        icons {
        }

        .material-icons {
            color: red;
            font-size: 50px;
            text-align: left;
        }

        // Class for when element is above threshold .pin-top {
            position: relative;
        }

        // Class for when element is below threshold .pin-bottom {
            position: relative;
        }

        // Class for when element is pinned .pinned {
            position: fixed;
        }
    </style>
    <br />
    <br />
    <div class="col-lg-12  nav nav-pills  ">
        <!--barra de cuestionario-->
        <ul class="nav nav-tabs">
            <li class="active "><a data-toggle="tab" href="#menu0" class="card-panel #2196f3 blue white-text">Médico</a></li>
            <li><a data-toggle="tab" href="#menu1" class="card-panel #689f38 light-green darken-2 white-text">Dental</a></li>
            <li><a data-toggle="tab" href="#menu2" class="card-panel #f57c00 orange darken-2 white-text">Psicológico </a></li>
        </ul>

        <div class="tab-content">
            <div id="menu0" class="tab-pane fade in active">
                <%-- Aviso de cuestionario terminado --%>
                <asp:Panel ID="PanelAvisoMedico" runat="server" Visible="false">
                    <div class="jumbotron">
                        <h1 class="center-align">Sección terminada</h1>
                        <br />
                        <br />
                        <p class="center-align"><a data-toggle="tab" class="card-panel #2196f3 blue white-text " href="#menu1" role="button">Siguiente</a></p>
                    </div>
                </asp:Panel>
                <%-- Banner de cuestionario medico --%>
                <asp:Panel ID="PanelMedico" runat="server" Visible="true">
                    <div id="red1" class="#fafafa grey lighten-5   z-depth-4" style="height: auto">
                        <nav class="" data-target="red" style="top: auto; z-index: auto">
                            <div class="nav-wrapper #2196f3 blue">
                                <div class="container center-align">
                                    <h1 class="">Cuestionario Médico</h1>
                                    <ul id="nav-mobile2" class="right hide-on-med-and-down">
                                    </ul>
                                </div>
                            </div>
                        </nav>
                        <br />
                        <br />
                        <%-- Pregunta 1 Doctor --%>
                        <div class="col s10">
                            <h3>1.-Alimentación diaria</h3>
                            <br />
                            <p>
                                <asp:RadioButton ID="pre1Res1" runat="server" Text="1 comida." GroupName="pm1" />
                            </p>
                            <p>
                                <asp:RadioButton ID="pre1Res2" runat="server" Text="2 comidas." GroupName="pm1" />
                            </p>
                            <p>
                                <asp:RadioButton ID="pre1Res3" runat="server" Text="3 comidas." GroupName="pm1" />
                            </p>
                            <p>
                                <asp:RadioButton ID="pre1Res4" runat="server" Text="4 o más." GroupName="pm1" />
                            </p>
                        </div>
                        <%-- Pregunta 2 Doctor --%>
                        <div class="row">
                            <div class="col s10">
                                <h3>2.-¿Cuantas veces a la semana realizas ejercicio?</h3>
                                <br />
                                <p>
                                    <asp:RadioButton ID="pre2Res1" runat="server" Text="3 o más veces por semana." GroupName="pm2" />
                                </p>
                                <p>
                                    <asp:RadioButton ID="pre2Res2" runat="server" Text="Una vez a la semana." GroupName="pm2" />
                                </p>
                                <p>
                                    <asp:RadioButton ID="pre2Res3" runat="server" Text="Una vez cada 15 dias." GroupName="pm2" />
                                </p>
                                <p>
                                    <asp:RadioButton ID="pre2Res4" runat="server" Text="Una vez al mes." GroupName="pm2" />
                                </p>
                                <p>
                                    <asp:RadioButton ID="pre2Res5" runat="server" Text="Nunca." GroupName="pm2" />
                                </p>
                            </div>
                        </div>
                        <%-- Pregunta 3 Doctor --%>
                        <div class="row">
                            <div class="col s4">
                                <h3>3.-¿Cual es su grupo sanguineo?</h3>
                                <br />
                                <asp:DropDownList ID="pre3" runat="server">
                                    <asp:ListItem Selected="False">Seleccione</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <%-- Pregunta 4 Doctor --%>
                        <div class="row">
                            <div class="col s10">
                                <h3>4.-¿Con que frecuencia consumes bebidas alcohólicas?</h3>
                                <br />
                                <p>
                                    <asp:RadioButton ID="pre4Res1" runat="server" Text="2 o más veces por semana." GroupName="pm4" />
                                </p>
                                <p>
                                    <asp:RadioButton ID="pre4Res2" runat="server" Text="Una vez a la semana." GroupName="pm4" />
                                </p>
                                <p>
                                    <asp:RadioButton ID="pre4Res3" runat="server" Text="Una vez al mes." GroupName="pm4" />
                                </p>
                                <p>
                                    <asp:RadioButton ID="pre4Res4" runat="server" Text="Nunca." GroupName="pm4" />
                                </p>
                            </div>
                        </div>
                        <%-- Pregunta 5 Doctor --%>
                        <div class="row">
                            <div class="col s6">
                                <h3>5.-¿Con que frecuencia fumas tabaco?</h3>
                                <br />
                                <p>
                                    <asp:RadioButton ID="pre5Res1" runat="server" Text="Diario." GroupName="pm5" />
                                </p>
                                <p>
                                    <asp:RadioButton ID="pre5Res2" runat="server" Text="Una vez a la semana." GroupName="pm5" />
                                </p>
                                <p>
                                    <asp:RadioButton ID="pre5Res3" runat="server" Text="Una vez al mes." GroupName="pm5" />
                                </p>
                                <p>
                                    <asp:RadioButton ID="pre5Res4" runat="server" Text="Nunca." GroupName="pm5" />
                                </p>
                            </div>
                        </div>
                        <%-- Pregunta 6 Doctor --%>
                        <div class="row">
                            <div class="col s16">
                                <h3>6.-¿Consumes alguna droga ilegal (marihuana , cocaina, ácidos(LCD),inhalantes,etc)?</h3>
                                <br />
                                <p>
                                    <asp:RadioButton ID="pre6Res1" runat="server" Text="Diario." GroupName="pm6" />
                                </p>
                                <p>
                                    <asp:RadioButton ID="pre6Res2" runat="server" Text="Una vez a la semana." GroupName="pm6" />
                                </p>
                                <p>
                                    <asp:RadioButton ID="pre6Res3" runat="server" Text="Una vez al mes." GroupName="pm6" />
                                </p>
                                <p>
                                    <asp:RadioButton ID="pre6Res4" runat="server" Text="Nunca." GroupName="pm6" />
                                </p>
                            </div>
                        </div>
                        <%-- Pregunta 7 Doctor --%>
                        <div class="col s4">
                            <h3>7.-¿Tienes alguna alergia?</h3>
                            <div class="switch col s4">
                                <label>
                                    No
      <asp:CheckBox ID="pre7Res1" runat="server" AutoPostBack="true" OnCheckedChanged="pre7Res1_CheckedChanged" />
                                    <span class="lever"></span>
                                    Si
                                </label>

                            </div>
                            <asp:Panel ID="PanelPM7" runat="server" Visible="false">
                                <div>
                                    <asp:DropDownList ID="DropDownListPM7" runat="server"></asp:DropDownList>
                                </div>
                            </asp:Panel>
                        </div>
                        <%-- Pregunta 8 Doctor (la de las enfermedades )--%>
                        <div class="col s6">
                            <h3>8.-¿Padeces alguna enfermedad?</h3>
                            <div class="switch col s4">
                                <label>
                                    No
      <asp:CheckBox ID="pre8Res1" runat="server" AutoPostBack="true" OnCheckedChanged="pre8Res1_CheckedChanged" />
                                    <span class="lever"></span>
                                    Si
                                </label>
                            </div>
                            <asp:Panel ID="PanelPM8" runat="server" Visible="false">
                                <div class="input-field col s6">
                                    <asp:DropDownList ID="DropDownListPM8" runat="server"></asp:DropDownList>
                                </div>
                            </asp:Panel>
                        </div>

                        <%-- Pregunta 9 Doctor --%>
                        <div class="row">
                            <div class="col s10">

                                <h3>9.-¿Con que frecuencia te bañas?</h3>
                                <br />
                                <p>
                                    <asp:RadioButton ID="pre9Res1" runat="server" Text="Diario." GroupName="pm9" />
                                </p>
                                <p>
                                    <asp:RadioButton ID="pre9Res2" runat="server" Text="Cada tercer día." GroupName="pm9" />
                                </p>
                                <p>
                                    <asp:RadioButton ID="pre9Res3" runat="server" Text="Una vez a la semana." GroupName="pm9" />
                                </p>
                                <p>
                                    <asp:RadioButton ID="pre9Res4" runat="server" Text="Una vez al mes." GroupName="pm9" />
                                </p>
                            </div>
                        </div>
                        <%-- Pregunta 10 Doctor --%>
                        <div class="row">
                            <div class="col s6">
                                <h3>10.-¿Qué tipo de baño hay donde vives?</h3>
                                <br />
                                <p>
                                    <asp:RadioButton ID="pre10Res1" runat="server" Text="Baño con drenaje." GroupName="pm10" />
                                </p>
                                <p>
                                    <asp:RadioButton ID="pre10Res2" runat="server" Text="Letrina." GroupName="pm10" />
                                </p>
                                <p>
                                    <asp:RadioButton ID="pre10Res3" runat="server" Text="Fosa Séptica." GroupName="pm10" />
                                </p>
                                <p>
                                    <asp:RadioButton ID="pre10Res4" runat="server" Text="Ras de suelo." GroupName="pm10" />
                                </p>
                            </div>
                        </div>
                        <%-- Pregunta 11 Doctor --%>
                        <div>
                            <div class="row">
                                <div class="col s10">
                                    <h3>11.-¿Vives en lugares con enfermedades como el Dengue, Paludismo, etc.?</h3>
                                </div>
                            </div>
                            <div class="row">
                                <div class="switch col s4">
                                    <label>
                                        No
                <asp:CheckBox ID="pre11Res1" runat="server" />
                                        <span class="lever"></span>
                                        Si
                                    </label>
                                </div>
                            </div>

                        </div>
                        <%-- Pregunta 12 Doctor --%>
                        <div>
                            <div class="row">
                                <div class="col s6">
                                    <h3>12.-Estás en algún tratamiento hormonal. </h3>
                                </div>
                            </div>
                            <div class="row">
                                <div class="switch col s4">
                                    <label>
                                        No
                <asp:CheckBox ID="pre12Res1" runat="server" />
                                        <span class="lever"></span>
                                        Si
                                    </label>
                                </div>
                            </div>
                        </div>
                        <%-- Pregunta 13 Doctor --%>
                        <div>
                            <div class="row">
                                <div class="col s6">
                                    <h3>13.-¿Tomas anticonceptivos? </h3>
                                </div>
                            </div>
                            <div class="row">
                                <div class="switch col s4">
                                    <label>
                                        No
                <asp:CheckBox ID="pre13Res1" runat="server" />
                                        <span class="lever"></span>
                                        Si
                                    </label>
                                </div>
                            </div>
                        </div>
                        <%-- Pregunta 14 Doctor --%>
                        <div>
                            <div class="row">
                                <div class="col s6">
                                    <h3>14.-¿Alguna ves te practicaron una cirugía?</h3>
                                </div>
                            </div>
                            <div class="row">
                                <div class="switch col s4">
                                    <label>
                                        No
                    <asp:CheckBox ID="pre14Res1" runat="server" />
                                        <span class="lever"></span>
                                        Si
                                    </label>
                                </div>
                            </div>
                        </div>
                        <%-- Pregunta 15 Doctor --%>
                        <div>
                            <div class="row">
                                <div class="col s10">
                                    <h3>15.-¿Alguna vez te han practicado una transfunción de sangre?
                                    </h3>
                                </div>
                            </div>
                            <div class="row">
                                <div class="switch col s4">
                                    <label>
                                        No
                <asp:CheckBox ID="pre15Res1" runat="server" />
                                        <span class="lever"></span>
                                        Si
                                    </label>
                                </div>
                            </div>
                        </div>
                        <%-- Pregunta 16 Doctor --%>
                        <div>
                            <div class="row">
                                <div class="col s12">
                                    <h3>16.-¿Estás en contacto directo con pacientes diagnosticados con VIH o Tuberculosis? </h3>
                                </div>
                            </div>
                            <div class="row">
                                <div class="switch col s4">
                                    <label>
                                        No
                <asp:CheckBox ID="pre16Res1" runat="server" />
                                        <span class="lever"></span>
                                        Si
                                    </label>
                                </div>
                            </div>
                        </div>
                        <%-- Pregunta 17 Doctor --%>
                        <div>
                            <div class="row">
                                <div class="col s6">
                                    <h3>17.-¿Cuál es tu altura en centímetros? </h3>
                                </div>
                            </div>

                            <div class="input-field col s6" runat="server">
                                <asp:TextBox ID="pre17Res1" runat="server"></asp:TextBox>
                                <label class="active" for="pre17Res1">Altura(cm)</label>

                            </div>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Solo numeros" ControlToValidate="pre17Res1" ValidationExpression="^(-)?\d+(\.\d\d)?$"></asp:RegularExpressionValidator>
                        </div>
                        <%-- Pregunta 18 Doctor --%>
                        <div>
                            <div class="row">
                                <div class="col s6">
                                    <h3>18.-¿Cuál es tu peso en kilogramos? </h3>
                                </div>
                            </div>
                            <div class="input-field col s6" runat="server" id="txtPeso">
                                <asp:TextBox ID="pre18Res1" runat="server"></asp:TextBox>
                                <label class="active" for="pm18">Peso(kg)</label>
                            </div>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Solo numeros" ControlToValidate="pre18Res1" ValidationExpression="^(-)?\d+(\.\d\d)?$"></asp:RegularExpressionValidator>
                        </div>
                        <%-- Pregunta 19 Doctor --%>
                        <%---------------------------falta la 19 es el calculo imc --%>
                        <%-- Pregunta 20 Doctor --%>
                        <asp:Panel ID="PanelPreguntasMujer" runat="server">
                            <div>
                                <div class="row">
                                    <div class="col s6">
                                        <h3>19.-¿Tu regla es regular? </h3>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="switch col s4">
                                        <label>
                                            No
                    <asp:CheckBox ID="pre20Res1" runat="server" />
                                            <span class="lever"></span>
                                            Si
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <%-- Pregunta 21 Doctor --%>
                            <div>
                                <div class="row">
                                    <div class="col s6">
                                        <h3>20.-¿Estás embarazada? </h3>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="switch col s4">
                                        <label>
                                            No
                <asp:CheckBox ID="pre21Res1" runat="server" />
                                            <span class="lever"></span>
                                            Si
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <%-- Pregunta 22 Doctor --%>
                            <div>
                                <div class="row">
                                    <div class="col s6">
                                        <h3>21.-¿Estás lactando (dando pecho)? </h3>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="switch col s4" id="switch" runat="server">
                                        <label>
                                            No
                    <asp:CheckBox ID="pre22Res1" runat="server" />
                                            <span class="lever"></span>
                                            Si
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </asp:Panel>
                        <%-- Pregunta 23 Doctor --%>
                        <div>
                            <div class="row">
                                <div class="col s10">
                                    <h3>22.-¿Tus abuelos padecieron algunas de estas enfermedades? </h3>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col s6">
                                    <p>
                                        <asp:CheckBox ID="pre23Res1" runat="server" Text="Diabetes Mellitu." />
                                    </p>
                                    <p>
                                        <asp:CheckBox ID="pre23Res2" runat="server" Text="Hipertensión Arterial." />
                                    </p>
                                    <p>
                                        <asp:CheckBox ID="pre23Res3" runat="server" Text="Cardiopatias." />
                                    </p>
                                    <p>
                                        <asp:CheckBox ID="pre23Res4" runat="server" Text="Cancer." />
                                    </p>
                                    <p>
                                        <asp:CheckBox ID="pre23Res5" runat="server" Text="Epilepsia." />
                                    </p>
                                    <p>
                                        <asp:CheckBox ID="pre23Res6" runat="server" Text="Enfermedades autoinmunes." />
                                    </p>
                                    <p>
                                        <asp:CheckBox ID="pre23Res7" runat="server" Text="Psiquiatricas." />
                                    </p>
                                    <p>
                                        <asp:CheckBox ID="pre23Res8" runat="server" Text="Sanguineas." />
                                    </p>
                                    <p>
                                        <asp:CheckBox ID="pre23Res9" runat="server" Text="Ninguna." OnCheckedChanged="pre23Res9_CheckedChanged" AutoPostBack="true" />
                                    </p>
                                </div>
                            </div>
                        </div>
                        <%-- Pregunta 24 Doctor --%>
                        <div>
                            <div class="row">
                                <div class="col s10">
                                    <h3>23.-¿Tus padres padecieron algunas de estas enfermedades?</h3>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col s10">
                                    <p>
                                        <asp:CheckBox ID="pre24Res1" runat="server" Text="Diabetes Mellitu." />
                                    </p>
                                    <p>
                                        <asp:CheckBox ID="pre24Res2" runat="server" Text="Hipertensión Arterial." />
                                    </p>
                                    <p>
                                        <asp:CheckBox ID="pre24Res3" runat="server" Text="Cardiopatias." />
                                    </p>
                                    <p>
                                        <asp:CheckBox ID="pre24Res4" runat="server" Text="Cancer." />
                                    </p>
                                    <p>
                                        <asp:CheckBox ID="pre24Res5" runat="server" Text="Epilepsia." />
                                    </p>
                                    <p>
                                        <asp:CheckBox ID="pre24Res6" runat="server" Text="Enfermedades autoinmunes." />
                                    </p>
                                    <p>
                                        <asp:CheckBox ID="pre24Res7" runat="server" Text="Psiquiatricas." />
                                    </p>
                                    <p>
                                        <asp:CheckBox ID="pre24Res8" runat="server" Text="Sanguineas." />
                                    </p>
                                    <p>
                                        <asp:CheckBox ID="pre24Res9" runat="server" Text="Ninguna." AutoPostBack="true" OnCheckedChanged="pre24Res9_CheckedChanged1" />
                                    </p>
                                </div>
                            </div>
                        </div>
                        <%-- Pregunta 25 Doctor --%>
                        <div>
                            <div class="row">
                                <div class="col s10">
                                    <h3>24.-¿Tus hermanos,primos o tios padecieron algunas de estas enfermedades?</h3>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col s6">
                                    <p>
                                        <asp:CheckBox ID="pre25Res1" runat="server" Text="Diabetes Mellitu." />
                                    </p>
                                    <p>
                                        <asp:CheckBox ID="pre25Res2" runat="server" Text="Hipertensión Arterial." />
                                    </p>
                                    <p>
                                        <asp:CheckBox ID="pre25Res3" runat="server" Text="Cardiopatias." />
                                    </p>
                                    <p>
                                        <asp:CheckBox ID="pre25Res4" runat="server" Text="Cancer." />
                                    </p>
                                    <p>
                                        <asp:CheckBox ID="pre25Res5" runat="server" Text="Epilepsia." />
                                    </p>
                                    <p>
                                        <asp:CheckBox ID="pre25Res6" runat="server" Text="Enfermedades autoinmunes." />
                                    </p>
                                    <p>
                                        <asp:CheckBox ID="pre25Res7" runat="server" Text="Psiquiatricas." />
                                    </p>
                                    <p>
                                        <asp:CheckBox ID="pre25Res8" runat="server" Text="Sanguineas." />
                                    </p>
                                    <p>
                                        <asp:CheckBox ID="pre25Res9" runat="server" Text="Ninguna." AutoPostBack="true" OnCheckedChanged="pre25Res9_CheckedChanged" />
                                    </p>
                                </div>
                            </div>
                        </div>
                        <%-- Boton siguiente--%>
                        <div class="center">
                            <asp:Button ID="ButtonAgregarMedico" runat="server" Text="Guardar" CssClass="card-panel #2196f3 blue white-text " OnClick="ButtonAgregarMedico_Click" />
                        </div>
                    </div>

                </asp:Panel>
                <%-- Banner de cuestionario medico Fin --%>
            </div>

            <div id="menu1" class="tab-pane fade">
                <%-- Banner de cuestionario Dentista y preguntas --%>
                <asp:Panel ID="PanelAvisoDental" runat="server" Visible="false">
                    <div class="jumbotron">
                        <h1 class="center-align">Sección terminada</h1>
                        <br />
                        <br />
                        <p class="center-align"><a data-toggle="tab" class="card-panel #689f38 light-green darken-2 white-text " href="#menu2" role="button">Siguiente</a></p>
                    </div>
                </asp:Panel>
                <asp:Panel ID="PanelDentista" runat="server" Visible="true">
                    <div id="red" class="#fafafa grey lighten-5" style="height: 100%">
                        <nav class="" data-target="red" style="top: 0px; z-index: 3">
                            <div class="nav-wrapper #7cb342 light-green darken-1  z-depth-4">
                                <div class="container">
                                    <a class="brand-logo">Cuestionario Dental</a>
                                    <ul id="nav-mobile" class="right hide-on-med-and-down">
                                    </ul>
                                </div>
                            </div>
                        </nav>
                        <br />
                        <br />
                        <%-- Pregunta 1 Dentista --%>
                        <div class="row">
                            <div class="col s10">
                                <h3>1.-¿Cuando fue la última vez que fuiste al dentista?</h3>
                                <br />
                                <p>
                                    <asp:RadioButton ID="pre1ResD1" runat="server" Text="Menos de 6 meses." GroupName="pd1" />
                                </p>
                                <p>
                                    <asp:RadioButton ID="pre1ResD2" runat="server" Text="Menos de un año." GroupName="pd1" />
                                </p>
                                <p>
                                    <asp:RadioButton ID="pre1ResD3" runat="server" Text="Un año o más." GroupName="pd1" />
                                </p>
                                <p>
                                    <asp:RadioButton ID="pre1ResD4" runat="server" Text="Nunca." GroupName="pd1" />
                                </p>
                            </div>
                        </div>
                        <%-- Pregunta 2 Dentista --%>
                        <div>
                            <div class="row">
                                <div class="col s8">
                                    <h3>2.-¿Motivo de tu última visita dental?</h3>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col s6">
                                    <p>
                                        <asp:CheckBox ID="pre2ResD1" runat="server" Text=" Diagnostico ." />
                                    </p>
                                    <p>
                                        <asp:CheckBox ID="pre2ResD2" runat="server" Text="Caries." />
                                    </p>
                                    <p>
                                        <asp:CheckBox ID="pre2ResD3" runat="server" Text="Profilaxis (limpieza) ." />
                                    </p>
                                    <p>
                                        <asp:CheckBox ID="pre2ResD4" runat="server" Text="Dolor de muelas (muelas del juicio)." />
                                    </p>
                                    <p>
                                        <asp:CheckBox ID="pre2ResD5" runat="server" Text="Gingivitis (sangrado ) ." />
                                    </p>
                                    <p>
                                        <asp:CheckBox ID="pre2ResD6" runat="server" Text="Tratamientos de ortodoncia (braquetes)." />
                                    </p>
                                    <p>
                                        <asp:CheckBox ID="pre2ResD7" runat="server" Text="Endodoncia." />
                                    </p>
                                    <p>
                                        <asp:CheckBox ID="pre2ResD8" runat="server" Text="Ninguna." OnCheckedChanged="pre2ResD8_CheckedChanged" AutoPostBack="true" />
                                    </p>
                                </div>
                            </div>
                        </div>
                        <%-- Pregunta 3 Dentista --%>
                        <div class="row">
                            <div class="col s8">
                                <h3>3.-¿Cómo califica su boca?</h3>
                                <br />
                                <p>
                                    <asp:RadioButton ID="pre3ResD1" runat="server" Text="Muy buena." GroupName="pd3" />
                                </p>
                                <p>
                                    <asp:RadioButton ID="pre3ResD2" runat="server" Text="Buena." GroupName="pd3" />
                                </p>
                                <p>
                                    <asp:RadioButton ID="pre3ResD3" runat="server" Text="Mala." GroupName="pd3" />
                                </p>
                                <p>
                                    <asp:RadioButton ID="pre3ResD4" runat="server" Text="Muy mala." GroupName="pd3" />
                                </p>
                            </div>
                        </div>
                        <%-- Pregunta 4 Dentista --%>
                        <div class="row">
                            <div class="col s8">
                                <h3>4.-¿Cuántas veces al día cepilla sus dientes?</h3>
                                <br />
                                <p>
                                    <asp:RadioButton ID="pre4ResD1" runat="server" Text="3" GroupName="pd4" />

                                </p>
                                <p>
                                    <asp:RadioButton ID="pre4ResD2" runat="server" Text="2" GroupName="pd4" />

                                </p>
                                <p>
                                    <asp:RadioButton ID="pre4ResD3" runat="server" Text="1" GroupName="pd4" />

                                </p>
                                <p>
                                    <asp:RadioButton ID="pre4ResD4" runat="server" Text="Ninguna." GroupName="pd4" />

                                </p>
                            </div>
                        </div>
                        <%-- Pregunta 5 Dentista --%>
                        <div>
                            <div class="row">
                                <div class="col s12">
                                    <h3>5.-¿Te truena la mandibula cuando abres mucho la boca?</h3>
                                </div>
                            </div>
                            <div class="row">
                                <div class="switch col s4" id="Div1" runat="server">
                                    <label>
                                        No
                    <asp:CheckBox ID="pre5ResD1" runat="server" />
                                        <span class="lever"></span>
                                        Si
                                    </label>
                                </div>
                            </div>
                        </div>
                        <%-- Pregunta 6 Dentista --%>
                        <div>
                            <div class="row">
                                <div class="col s12">
                                    <h3>6.-¿Te sangran las encias cuando te cepillas los dientes?
                                    </h3>
                                </div>
                            </div>
                            <div class="row">
                                <div class="switch col s4" id="Div3" runat="server">
                                    <label>
                                        No
                    <asp:CheckBox ID="pre6ResD1" runat="server" />
                                        <span class="lever"></span>
                                        Si
                                    </label>
                                </div>
                            </div>
                        </div>
                        <%-- Pregunta 7 Dentista --%>
                        <div>
                            <div class="row">
                                <div class="col s12">
                                    <h3>7.-¿Tienes dificultad para abrir la boca en algunas ocasiones? </h3>
                                </div>
                            </div>
                            <div class="row">
                                <div class="switch col s4" id="Div4" runat="server">
                                    <label>
                                        No
                    <asp:CheckBox ID="pre7ResD1" runat="server" />
                                        <span class="lever"></span>
                                        Si
                                    </label>
                                </div>
                            </div>
                        </div>
                        <%-- Pregunta 8 Dentista --%>
                        <div>
                            <div class="row">
                                <div class="col s12">
                                    <h3>8.-¿Se ha quedado alguna vez con la boca abierta sin poder cerrarla? </h3>
                                </div>
                            </div>
                            <div class="row">

                                <div class="switch col s4" id="Div5" runat="server">
                                    <label>
                                        No
                        <asp:CheckBox ID="pre8ResD1" runat="server" />
                                        <span class="lever"></span>
                                        Si
                                    </label>
                                </div>
                            </div>
                        </div>
                        <%-- Pregunta 9 Dentista --%>
                        <div>
                            <div class="row">
                                <div class="col s12">
                                    <h3>9.-¿Has tenido perforaciones en la boca (percings)? </h3>
                                </div>
                            </div>
                            <div class="row">
                                <div class="switch col s4" id="Div6" runat="server">
                                    <label>
                                        No
                    <asp:CheckBox ID="pre9ResD1" runat="server" />
                                        <span class="lever"></span>
                                        Si
                                    </label>
                                </div>
                            </div>
                        </div>
                        <%-- Pregunta 10 Dentista --%>
                        <div class="row">
                            <div class="col s12">
                                <h3>10.-¿Has presentado mal aliento? </h3>
                            </div>
                        </div>
                        <div class="row">
                            <div class="switch col s4">
                                <label>
                                    No
   <asp:CheckBox ID="pre10ResD1" runat="server" />
                                    <span class="lever"></span>
                                    Si
                                </label>
                            </div>
                        </div>
                        <%-- Pregunta 11 Dentista --%>
                        <div>
                            <div class="row">
                                <div class="col s12">
                                    <h3>11.-¿Tienes el hábito de morderte las uñas. apretar o tallarte los dientes o morder objetos?</h3>
                                </div>
                            </div>
                            <div class="row">
                                <div class="switch col s4">
                                    <label>
                                        No
      <asp:CheckBox ID="pre11ResD1" runat="server" />
                                        <span class="lever"></span>
                                        Si
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="center">
                            <asp:Button ID="ButtonAgregarDental" runat="server" Text="Guardar" CssClass="card-panel #689f38 light-green darken-2 white-text  " OnClick="ButtonAgregarDental_Click" />
                        </div>
                    </div>

                </asp:Panel>
            </div>

            <div id="menu2" class="tab-pane fade">
                <%-- Banner de cuestionario Psicologo --%>
                <asp:Panel ID="PanelAvisoPsicologo" runat="server" Visible="false">
                    <div class="jumbotron">
                        <h1 class="center-align">Sección terminada</h1>
                        <br />
                        <br />
                        <p class="center-align"><a data-toggle="tab" class="card-panel #f57c00 orange darken-2 white-text  z-depth-4" href="#menu2" role="button">Siguiente</a></p>
                    </div>
                </asp:Panel>
                <asp:Panel ID="PanelPsicologo" runat="server" Visible="true">
                    <div id="green" class="block white">
                        <nav class="" data-target="green" style="top: 0px; z-index: 3">
                            <div class="nav-wrapper #f57f17 yellow darken-4">
                                <div class="container">
                                    <a class="brand-logo">Cuestionario Psicológico</a>
                                    <ul id="nav-mobile3" class="right hide-on-med-and-down">
                                    </ul>
                                </div>
                            </div>
                        </nav>
                        <%-- Pregunta 1 Psicologo --%>
                        <div class="row">
                            <div class="col s12">
                                <h3>1.-¿La Universidad Politécnica de Tulancingo fue tu primera opción? </h3>
                            </div>
                        </div>
                        <div class="row">
                            <div class="switch col s4" runat="server">
                                <label>
                                    No
      <asp:CheckBox ID="pre11ResP1" runat="server" />
                                    <span class="lever"></span>
                                    Si
                                </label>
                            </div>
                        </div>
                        <%-- Pregunta 2 Psicologo --%>
                        <div class="row">
                            <div class="col s12">
                                <h3>2.-¿La carrera que elegiste fue tu primera opción? </h3>
                            </div>
                        </div>
                        <div class="row">
                            <div class="switch col s4" runat="server">
                                <label>
                                    No
                    <asp:CheckBox ID="pre2p" runat="server" />
                                    <span class="lever"></span>
                                    Si
                                </label>
                            </div>
                        </div>
                        <%-- Pregunta 3 Psicologo --%>
                        <div class="row">
                            <div class="col s12">
                                <h3>3.-¿Qué tan satisfecho estás con la elección de tu carrera?</h3>
                                <br />
                                <p>
                                    <asp:RadioButton ID="res3p1" runat="server" Text="Muy satisfecho." GroupName="pp1" />
                                </p>
                                <p>
                                    <asp:RadioButton ID="res3p2" runat="server" Text="Satisfecho." GroupName="pp1" />
                                </p>
                                <p>
                                    <asp:RadioButton ID="res3p3" runat="server" Text="Poco satisfecho." GroupName="pp1" />
                                </p>
                                <p>
                                    <asp:RadioButton ID="res3p4" runat="server" Text="Insatisfecho." GroupName="pp1" />
                                </p>
                            </div>
                        </div>
                        <%-- Pregunta 4 Psicologo --%>
                        <div class="row">
                            <div class="col s12">
                                <h3>4.-¿Sabes cuál es tu perfil vocacional? </h3>
                            </div>
                        </div>
                        <div class="row">
                            <div class="switch col s4" runat="server">
                                <label>
                                    No
                <asp:CheckBox ID="res4p" runat="server" />
                                    <span class="lever"></span>
                                    Si
                                </label>
                            </div>
                        </div>
                        <%-- Pregunta 5 Psicologo --%>
                        <div class="row">
                            <div class="col s12">
                                <h3>5.-¿Cómo es tu relación con tus abuelos?</h3>
                                <br />
                                <p>
                                    <asp:RadioButton ID="res5p1" runat="server" Text="Buena." GroupName="pp5" />
                                </p>
                                <p>
                                    <asp:RadioButton ID="res5p2" runat="server" Text="Regular." GroupName="pp5" />
                                </p>
                                <p>
                                    <asp:RadioButton ID="res5p3" runat="server" Text="Mala." GroupName="pp5" />
                                </p>
                                <p>
                                    <asp:RadioButton ID="res5p4" runat="server" Text="Sin relación." GroupName="pp5" />
                                </p>
                            </div>
                        </div>
                        <%-- Pregunta 6 Psicologo --%>
                        <div class="row">
                            <div class="col s12">
                                <h3>6.-¿Cómo es tu relación con tu mamá?</h3>
                                <br />
                                <p>
                                    <asp:RadioButton ID="res6p1" runat="server" Text="Buena." GroupName="pp6" />
                                </p>
                                <p>
                                    <asp:RadioButton ID="res6p2" runat="server" Text="Regular." GroupName="pp6" />
                                </p>
                                <p>
                                    <asp:RadioButton ID="res6p3" runat="server" Text="Mala." GroupName="pp6" />
                                </p>
                                <p>
                                    <asp:RadioButton ID="res6p4" runat="server" Text="Sin relación." GroupName="pp6" />
                                </p>
                            </div>
                        </div>
                        <%-- Pregunta 7 Psicologo --%>
                        <div class="row">
                            <div class="col s12">
                                <h3>7.-¿Cómo es tu relación con tu papá?</h3>
                                <br />
                                <p>
                                    <asp:RadioButton ID="res7p1" runat="server" Text="Buena." GroupName="pp7" />
                                </p>
                                <p>
                                    <asp:RadioButton ID="res7p2" runat="server" Text="Regular." GroupName="pp7" />
                                </p>
                                <p>
                                    <asp:RadioButton ID="res7p3" runat="server" Text="Mala." GroupName="pp7" />
                                </p>
                                <p>
                                    <asp:RadioButton ID="res7p4" runat="server" Text="Sin relación." GroupName="pp7" />
                                </p>
                            </div>
                        </div>
                        <%-- Pregunta 8 Psicologo --%>
                        <div class="row">
                            <div class="col s12">
                                <h3>8.-¿Cómo es tu relación con tus hermanos?</h3>
                                <br />
                                <p>
                                    <asp:RadioButton ID="res8p1" runat="server" Text="Buena." GroupName="pp8" />
                                </p>
                                <p>
                                    <asp:RadioButton ID="res8p2" runat="server" Text="Regular." GroupName="pp8" />
                                </p>
                                <p>
                                    <asp:RadioButton ID="res8p3" runat="server" Text="Mala." GroupName="pp8" />
                                </p>
                                <p>
                                    <asp:RadioButton ID="res8p4" runat="server" Text="Sin relación." GroupName="pp8" />
                                </p>
                            </div>
                        </div>
                        <%-- Pregunta 9 Psicologo --%>
                        <div class="row">
                            <div class="col s10">
                                <h3>9.-¿Cuál es el acontecimiento más relevante de tu infancia(0-9 años)?</h3>
                                <br />
                                <p>
                                    <asp:CheckBox ID="res9p1" runat="server" Text=" Divorcio de los padres ." />
                                </p>
                                <p>
                                    <asp:CheckBox ID="res9p2" runat="server" Text="Nacimiento de un hermano ." />
                                </p>
                                <p>
                                    <asp:CheckBox ID="res9p3" runat="server" Text="Fallecimiento de uno de tus  abuelo ." />
                                </p>
                                <p>
                                    <asp:CheckBox ID="res9p4" runat="server" Text="Fallecimiento de uno de tus padres ." />
                                </p>
                                <p>
                                    <asp:CheckBox ID="res9p5" runat="server" Text="Fallecimiento de uno de tus hermanos ." />
                                </p>
                                <p>
                                    <asp:CheckBox ID="res9p6" runat="server" Text="Fallecimiento de un familiar ." />
                                </p>
                                <p>
                                    <asp:CheckBox ID="res9p7" runat="server" Text="Ausencia del padre ." />
                                </p>
                                <p>
                                    <asp:CheckBox ID="res9p8" runat="server" Text="Ausencia de la madre ." />
                                </p>
                                <p>
                                    <asp:CheckBox ID="res9p9" runat="server" Text="Cambio de domicilio ." />
                                </p>
                                <p>
                                    <asp:CheckBox ID="res9p10" runat="server" Text="Violencia familiar." />
                                </p>
                                <p>
                                    <asp:CheckBox ID="res9p11" runat="server" Text="Abuso sexual ." />
                                </p>
                                <p>
                                    <asp:CheckBox ID="res9p12" runat="server" Text="Víctima de bullying ." />
                                </p>
                                <p>
                                    <asp:CheckBox ID="res9p13" runat="server" Text="Ninguno ." />
                                </p>
                                <p>
                                    <asp:CheckBox ID="res9p14" runat="server" Text="Otro." OnCheckedChanged="res9p14_CheckedChanged" AutoPostBack="true" />
                                </p>
                                <div>
                                    <asp:Panel ID="Panelres9p14" runat="server" Visible="false">
                                        <p>
                                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                            <label class="active" for="pm18">Descripción.</label>
                                        </p>
                                    </asp:Panel>
                                </div>
                            </div>
                        </div>
                        <%-- Pregunta 10 Psicologo --%>
                        <div class="row">
                            <div class="col s12">
                                <h3>10.-¿Cuál es el acontecimiento más relevante de tu adolecncia (10-19 años)?</h3>
                                <br />
                                <p>
                                    <asp:CheckBox ID="res10p1" runat="server" Text=" Divorcio de los padres ." />
                                </p>
                                <p>
                                    <asp:CheckBox ID="res10p2" runat="server" Text="Nacimiento de un hermano ." />
                                </p>
                                <p>
                                    <asp:CheckBox ID="res10p3" runat="server" Text="Fallecimiento de uno de tus  abuelo ." />
                                </p>
                                <p>
                                    <asp:CheckBox ID="res10p4" runat="server" Text="Fallecimiento de uno de tus padres ." />
                                </p>
                                <p>
                                    <asp:CheckBox ID="res10p5" runat="server" Text="Fallecimiento de uno de tus hermanos ." />
                                </p>
                                <p>
                                    <asp:CheckBox ID="res10p6" runat="server" Text="Fallecimiento de un familiar ." />
                                </p>
                                <p>
                                    <asp:CheckBox ID="res10p7" runat="server" Text="Ausencia del padre ." />
                                </p>
                                <p>
                                    <asp:CheckBox ID="res10p8" runat="server" Text="Ausencia de la madre ." />
                                </p>
                                <p>
                                    <asp:CheckBox ID="res10p9" runat="server" Text="Cambio de domicilio ." />
                                </p>
                                <p>
                                    <asp:CheckBox ID="res10p10" runat="server" Text="Violencia familiar." />
                                </p>
                                <p>
                                    <asp:CheckBox ID="res10p11" runat="server" Text="Abuso sexual ." />
                                </p>
                                <p>
                                    <asp:CheckBox ID="res10p12" runat="server" Text="Víctima de bullying ." />
                                </p>
                                <p>
                                    <asp:CheckBox ID="res10p13" runat="server" Text="Ninguno ." />
                                </p>
                                <p>
                                    <asp:CheckBox ID="res10p14" runat="server" Text="Otro." OnCheckedChanged="res10p14_CheckedChanged" AutoPostBack="true" />
                                </p>
                                <div>
                                    <asp:Panel ID="Panelres10p14" runat="server" Visible="false">
                                        <p>
                                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                            <label class="active" for="pm18">Descripción.</label>
                                        </p>
                                    </asp:Panel>
                                </div>
                            </div>
                        </div>
                        <%-- Pregunta 11 Psicologo --%>
                        <div class="row">
                            <div class="col s12">
                                <h3>11.-¿Cómo consideras que es tu autoestima?</h3>
                                <br />
                                <p>
                                    <asp:RadioButton ID="res11p1" runat="server" Text="Muy Buena." GroupName="pp11" />
                                </p>
                                <p>
                                    <asp:RadioButton ID="res11p2" runat="server" Text="Buena." GroupName="pp11" />
                                </p>
                                <p>
                                    <asp:RadioButton ID="res11p3" runat="server" Text="Mala." GroupName="pp11" />
                                </p>
                                <p>
                                    <asp:RadioButton ID="res11p4" runat="server" Text="Muy mala." GroupName="pp11" />
                                </p>
                            </div>

                        </div>
                        <%-- Pregunta 12 Psicologo --%>
                        <div class="row">
                            <div class="col s12">
                                <h3>12.-¿Cómo consideras tu capacidad para relacionarte con otras personas?</h3>
                                <br />
                                <p>
                                    <asp:RadioButton ID="res12p1" runat="server" Text="Muy Buena." GroupName="pp12" />
                                </p>
                                <p>
                                    <asp:RadioButton ID="res12p2" runat="server" Text="Buena." GroupName="pp12" />
                                </p>
                                <p>
                                    <asp:RadioButton ID="res12p3" runat="server" Text="Mala." GroupName="pp12" />
                                </p>
                                <p>
                                    <asp:RadioButton ID="res12p4" runat="server" Text="Muy mala." GroupName="pp12" />

                                </p>
                            </div>

                        </div>
                        <%-- Pregunta 13 Psicologo --%>
                        <div class="row">
                            <div class="col s12">
                                <h3>13.-¿Tienes proyecto de vida? </h3>
                            </div>
                        </div>
                        <div class="row">
                            <div class="switch col s4" runat="server">
                                <label>
                                    No
     <asp:CheckBox ID="res13p1" runat="server" />
                                    <span class="lever"></span>
                                    Si
                                </label>
                            </div>
                        </div>
                        <%-- Pregunta 14 Psicologo --%>
                        <div class="row">
                            <div class="col s12">
                                <h3>14.-¿Te gustaría recibir atención psicológica?</h3>
                            </div>
                        </div>
                        <div class="row">
                            <div class="switch col s4" runat="server">
                                <label>
                                    No
     <asp:CheckBox ID="res14p1" runat="server" />
                                    <span class="lever"></span>
                                    Si
                                </label>
                            </div>
                        </div>
                        <%-- Pregunta 15 Psicologo --%>
                        <div class="row">
                            <div class="col s12">
                                <h3>15.-¿Qué número de hijo eres?</h3>
                                <br />
                                <p>
                                    <asp:RadioButton ID="res15p1" runat="server" Text="Mayor." GroupName="pp15" />
                                </p>
                                <p>
                                    <asp:RadioButton ID="res15p2" runat="server" Text="Intermedio." GroupName="pp15" />
                                </p>
                                <p>
                                    <asp:RadioButton ID="res15p3" runat="server" Text="Menor." GroupName="pp15" />
                                </p>
                                <p>
                                    <asp:RadioButton ID="res15p4" runat="server" Text="Único." GroupName="pp15" />
                                </p>
                            </div>
                        </div>
                        <%-- Pregunta 16 Psicologo --%>
                        <div class="row">
                            <div class="col s12">
                                <h3>16.-¿Con quién vives actualmente?</h3>
                                <br />
                                <p>
                                    <asp:RadioButton ID="res16p1" runat="server" Text="Papás." GroupName="pp16" />
                                </p>
                                <p>
                                    <asp:RadioButton ID="res16p2" runat="server" Text="Familiares o Amigos." GroupName="pp16" />
                                </p>
                                <p>
                                    <asp:RadioButton ID="res16p3" runat="server" Text="Casa de huespedes." GroupName="pp16" />
                                </p>
                                <p>
                                    <asp:RadioButton ID="res16p4" runat="server" Text="Sólo." GroupName="pp16" />
                                </p>
                            </div>

                        </div>
                        <%-- Pregunta 17 Psicologo --%>
                        <div class="row">
                            <div class="col s12">
                                <h3>17.-¿Cuál es tu preferencia sexual?</h3>
                                <br />
                                <p>
                                    <asp:RadioButton ID="res17p1" runat="server" Text="Hetero Sexual." GroupName="pp17" />
                                </p>
                                <p>
                                    <asp:RadioButton ID="res17p2" runat="server" Text="Homosexual." GroupName="pp17" />
                                </p>
                                <p>
                                    <asp:RadioButton ID="res17p3" runat="server" Text="Bisexual." GroupName="pp17" />
                                </p>
                                <p>
                                    <asp:RadioButton ID="res17p4" runat="server" Text="Otro." GroupName="pp17" />
                                </p>
                            </div>
                        </div>
                        <%-- Pregunta 18 Psicologo --%>
                        <div class="row">
                            <div class="col s12">
                                <h3>18.-¿Has asistido  a terapia psicológica anteriormente?</h3>
                            </div>
                        </div>
                        <div class="row">
                            <div class="switch col s4" runat="server">
                                <label>
                                    No
      <asp:CheckBox ID="res18p1" runat="server" />
                                    <span class="lever"></span>
                                    Si
                                </label>
                            </div>
                        </div>
                        <%-- Pregunta 19 Psicologo --%>
                        <div class="row">
                            <div class="col s12">
                                <h3>19.-¿Cuantas horas duermes diariamente?</h3>
                                <br />
                                <p>
                                    <asp:RadioButton ID="res19p1" runat="server" Text="Menos de 2 horas." GroupName="pp19" />
                                </p>
                                <p>
                                    <asp:RadioButton ID="res19p2" runat="server" Text="De 2 a 5 horas." GroupName="pp19" />
                                </p>
                                <p>
                                    <asp:RadioButton ID="res19p3" runat="server" Text="De 5 a 8 horas." GroupName="pp19" />
                                </p>
                                <p>
                                    <asp:RadioButton ID="res19p4" runat="server" Text="Más de 8 horas." GroupName="pp19" />
                                </p>
                            </div>
                        </div>
                        <div class="center">

                            <br />
                            <br />
                        </div>
                        <div class="center">
                            <asp:Button ID="ButtonAgregarPsicologo" runat="server" Text="Guardar" CssClass="card-panel #f57c00 orange darken-2 white-text  " OnClick="ButtonAgregarPsicologo_Click" />
                        </div>
                    </div>
                </asp:Panel>
            </div>
        </div>
    </div>


    <%-- Scripts --%>
    <script src="Scripts/jquery-1.10.2.min.js"></script>
    <script src="Scripts/materialize.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            //código que queremos ejecutar
            $('.pushpin-demo-nav').each(function () {
                var $this = $(this);
                var $target = $('#' + $(this).attr('data-target'));
                $this.pushpin({
                    top: $target.offset().top,
                    bottom: $target.offset().top + $target.outerHeight() - $this.height()
                });
            });
            $('.target').pushpin({
                top: 0,
                bottom: 1000,
                offset: 0
            });
            $('.carousel').carousel();
            $('select').material_select();
            $('.parallax').parallax();
            $('.tooltipped').tooltip({ delay: 10 });
            $(".button-collapse").sideNav();
            $('.button-collapse').sideNav({
                menuWidth: 350, // Default is 300
                edge: 'left', // Choose the horizontal origin
                closeOnClick: true, // Closes side-nav on <a> clicks, useful for Angular/Meteor
                draggable: true, width: 40, height: 30
                // Choose whether you can drag to open on touch screens
            });
            $('.modal').modal();
        });


    </script>




</asp:Content>

