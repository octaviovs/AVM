<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="HistorialClinico.aspx.cs" Inherits="MVPG52.HistorialClinico" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .row .col.s6 {
            left: 0;
        }

        input:not([type]):disabled, input:not([type])[readonly="readonly"], input[type=text]:disabled, input[type=text][readonly="readonly"], input[type=password]:disabled, input[type=password][readonly="readonly"], input[type=email]:disabled, input[type=email][readonly="readonly"], input[type=url]:disabled, input[type=url][readonly="readonly"], input[type=time]:disabled, input[type=time][readonly="readonly"], input[type=date]:disabled, input[type=date][readonly="readonly"], input[type=datetime]:disabled, input[type=datetime][readonly="readonly"], input[type=datetime-local]:disabled, input[type=datetime-local][readonly="readonly"], input[type=tel]:disabled, input[type=tel][readonly="readonly"], input[type=number]:disabled, input[type=number][readonly="readonly"], input[type=search]:disabled, input[type=search][readonly="readonly"], textarea.materialize-textarea:disabled, textarea.materialize-textarea[readonly="readonly"] {
            color: black;
        }
    </style>

  
  

           <div class="jumbotron  card-panel  accent-1#ffffff white">
         <nav class="" data-target="red" style="top: auto; z-index: auto">
            <div class="nav-wrapper #7cb342 light-green darken-1">
                <div class="container center-align">
                    <h3 class="">Historial Clínico</h3>
                    <ul id="nav-mobile2" class="right hide-on-med-and-down">
                    </ul>
                </div>
            </div>
        </nav>
        <br />
        <div class="row ">
            <h4>Para buscar una historial clínico ingrese en la caja de texto la matrícula.</h4>
            <div class="col s2">
                <asp:Label ID="Label1" runat="server" Text="Matrícula :" Font-Size="Medium"></asp:Label>
            </div>
            <div class="col s2">
                <asp:TextBox ID="txtId" runat="server"></asp:TextBox>
            </div>
            <div class="col s2">
                <asp:Button ID="Button1" runat="server" Text="Buscar" OnClick="Button1_Click"  AutoPostBack="true"/>
            </div>
            <div class="col s6 " style="color:red">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtId" ErrorMessage="Ingrese matrícula" > </asp:RequiredFieldValidator>
            </div>
        </div>
        <asp:Panel ID="PanelCuestionario" runat="server" Visible="true">
            <div id="HistorialMedico" class="tab-pane fade in active">
                <div>
                    <ul class="nav nav-tabs">
                        <li class="active"><a data-toggle="tab" href="#Medico" class="card-panel #2196f3 blue white-text">Médico</a></li>
                        <li><a data-toggle="tab" href="#Dental" class="card-panel #ff6f00 amber darken-4 white-text">Dental</a></li>
                        <li><a data-toggle="tab" href="#Psicologo" class="card-panel #d81b60 pink darken-1 white-text">Psicológico</a></li>
                    </ul>
                    <asp:Panel ID="PanelPreguntas" runat="server" Visible="false">
                    <div class="tab-content ">
                        <div id="Medico" class="tab-pane fade in active">
                            <%-- Banner de cuestionario Dentista y preguntas --%>
                            <%-- P1 M --%>
                            <div class="row ">
                                <h5>1.-Alimentación diaria </h5>
                                <div class=" col s6 ">
                                    <asp:TextBox ID="m1" runat="server" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <%-- P2 M --%>
                            <div class="row">
                                <h5>2.-Veces que realiza ejercicio por semana</h5>
                                <div class="input-field col s6" style="top: 0">
                                    <asp:TextBox ID="m2" runat="server" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <%-- P3 M --%>
                            <div class="row">
                                <h5>3.-Tipo de sangre</h5>
                                <div class="input-field col s6" style="top: 0">
                                    <asp:TextBox ID="m3" runat="server" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <%-- P4 M --%>
                            <div class="row">
                                <h5>4.-Frecuencia de consumo de bebidas alcóholicas</h5>
                                <div class="input-field col s6" style="top: 0">
                                    <asp:TextBox ID="m4" runat="server" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <%-- P5 M --%>
                            <div class="row">
                                <h5>5.-Frecuencia de consumo de tabaco</h5>
                                <div class="input-field col s6" style="top: 0">
                                    <asp:TextBox ID="m5" runat="server" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <%-- P6 M --%>
                            <div class="row">
                                <h5>6.-Consumo de drogas ilegales</h5>
                                <div class="input-field col s6" style="top: 0">
                                    <asp:TextBox ID="m6" runat="server" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <%-- P7 M --%>
                            <div class="row">
                                <h5>7.-Padecimiento de alergias</h5>
                                <div class="input-field col s6" style="top: 0">
                                    <asp:TextBox ID="m7" runat="server" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <%-- P8 M --%>
                            <div class="row">
                                <h5>8.-Enfermedades que padece</h5>
                                <div class="input-field col s6" style="top: 0">
                                    <asp:TextBox ID="m8" runat="server" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <%-- P9 M --%>
                            <div class="row">
                                <h5>9.-Frecuencia con que se baña</h5>
                                <div class="input-field col s6" style="top: 0">
                                    <asp:TextBox ID="m9" runat="server" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <%-- P10 M --%>
                            <div class="row">
                                <h5>10.-Tipo de baño que hay donde vive</h5>
                                <div class="input-field col s6" style="top: 0">
                                    <asp:TextBox ID="m10" runat="server" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <%-- P11 M --%>
                            <div class="row">
                                <h5>11.-Vive en lugares con enfermedades como el Dengue,Paludismo,etc</h5>
                                <div class="input-field col s6" style="top: 0">
                                    <asp:TextBox ID="m11" runat="server" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <%-- P12 M --%>
                            <div class="row">
                                <h5>12.-Está en tratamientos hormonales</h5>
                                <div class="input-field col s6" style="top: 0">
                                    <asp:TextBox ID="m12" runat="server" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <%-- P13 M --%>
                            <div class="row">
                                <h5>13.-Toma anticonceptivos</h5>
                                <div class="input-field col s6" style="top: 0">
                                    <asp:TextBox ID="m13" runat="server" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <%-- P14 M --%>
                            <div class="row">
                                <h5>14.-¿Alguna vez le practicaron cirugía?</h5>
                                <div class="input-field col s6" style="top: 0">
                                    <asp:TextBox ID="m14" runat="server" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <%-- P15 M --%>
                            <div class="row">
                                <h5>15.-¿Le han practicado una transfusión sanguínea?</h5>
                                <div class="input-field col s6" style="top: 0">
                                    <asp:TextBox ID="m15" runat="server" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <%-- P16 M --%>
                            <div class="row">
                                <h5>16.-¿Está en contacto directo con pacientes diagnosticados con VIH o Tuberculosis?</h5>
                                <div class="input-field col s6" style="top: 0">
                                    <asp:TextBox ID="m16" runat="server" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <%-- P17 M --%>
                            <div class="row">
                                <h5>17.-Estatura(cm)</h5>
                                <div class="input-field col s6" style="top: 0">
                                    <asp:TextBox ID="m17" runat="server" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <%-- P18 M --%>
                            <div class="row">
                                <h5>18.-Peso(kg)</h5>
                                <div class="input-field col s6" style="top: 0">
                                    <asp:TextBox ID="m18" runat="server" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <%-- P19 M --%>
                            <div class="row">
                                <h5>19.-Cálculo IMC</h5>
                                <div class="input-field col s6" style="top: 0">
                                    <asp:TextBox ID="m19" runat="server" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <%-- P20 M --%>
                            <div class="row">
                                <h5>20.-¿Su regla es regular?</h5>
                                <div class="input-field col s6" style="top: 0">
                                    <asp:TextBox ID="m20" runat="server" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <%-- P21 M --%>
                            <div class="row">
                                <h5>21.-¿Está embarazada?</h5>
                                <div class="input-field col s6" style="top: 0">
                                    <asp:TextBox ID="m21" runat="server" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                           

                            <%-- P22 M --%>
                            <div class="row">
                                <h5>22.-¿Está lactando?</h5>
                                <div class="col s6 ">
                                    <asp:TextBox ID="m22" runat="server" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <%-- P23 M --%>
                            <div class="row">
                                <h5>23.-Enfermedades que padecieron los abuelos</h5>
                                <div class=" col s12">
                                    <asp:TextBox ID="m23" TextMode="MultiLine" runat="server" ReadOnly="True" CssClass="materialize-textarea"></asp:TextBox>
                                </div>
                            </div>
                            <%-- P24 M --%>
                            <div class="row">
                                <h5>24.-Enfermedades que padecieron los padres</h5>
                                <div class=" col s12">
                                    <asp:TextBox ID="m24" TextMode="MultiLine" runat="server" ReadOnly="True" CssClass="materialize-textarea"></asp:TextBox>
                                </div>
                            </div>
                            <%-- P25 M --%>
                            <div class="row">
                                <h5>25.-Enfermedades que padecieron los hermanos primos y tíos</h5>
                                <div class=" col s6">
                                    <asp:TextBox ID="m25" TextMode="MultiLine" runat="server" ReadOnly="True" CssClass="materialize-textarea"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div id="Dental" class="tab-pane fade">
                            <%-- Banner de cuestionario Dentista y preguntas --%>

                            <%-- P1 D --%>
                            <div class="row">
                                <h5>1.-Última vez que acudió al dentista</h5>
                                <div class="input-field col s6" style="top: 0">
                                    <asp:TextBox ID="d1" runat="server" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <%-- P2 D --%>
                            <div class="row">
                                <h5>2.-Motivo de su última consulta dental</h5>
                                <div class=" col s12">
                                    <asp:TextBox ID="d2" TextMode="MultiLine" runat="server" ReadOnly="True" CssClass="materialize-textarea"></asp:TextBox>
                                </div>
                            </div>
                            <%-- P3 D --%>
                            <div class="row">
                                <h5>3.-¿Cómo calificó su boca?</h5>
                                <div class="input-field col s6" style="top: 0">
                                    <asp:TextBox ID="d3" runat="server" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>

                            <%-- P4 D --%>
                            <div class="row">
                                <h5>4.-¿Cuantas veces al día cepilla sus dientes?</h5>
                                <div class="input-field col s6" style="top: 0">
                                    <asp:TextBox ID="d4" runat="server" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <%-- P5 D --%>
                            <div class="row">
                                <h5>5.-¿Le truena la mandíbula cuando abre mucho la boca?</h5>
                                <div class="input-field col s6" style="top: 0">
                                    <asp:TextBox ID="d5" runat="server" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <%-- P6 D --%>
                            <div class="row">
                                <h5>6.-¿Le sangran las encias cuando se cepilla los dientes?</h5>
                                <div class="input-field col s6" style="top: 0">
                                    <asp:TextBox ID="d6" runat="server" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <%-- P7 D --%>
                            <div class="row">
                                <h5>7.-¿Tiene dificultad para abrir la boca en algunas ocasiones?</h5>
                                <div class="input-field col s6" style="top: 0">
                                    <asp:TextBox ID="d7" runat="server" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <%-- P8 D --%>
                            <div class="row">
                                <h5>8.-¿Se ha quedado alguna vez con la boca abierta y ha tenido incapacidad para cerrarla?</h5>
                                <div class="input-field col s6" style="top: 0">
                                    <asp:TextBox ID="d8" runat="server" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <%-- P9 D --%>
                            <div class="row">
                                <h5>9.-¿Has tenido perforaciones en la boca (piercings)?</h5>
                                <div class=" col s12">
                                    <asp:TextBox ID="d9" runat="server" ReadOnly="True" CssClass="materialize-textarea"></asp:TextBox>
                                </div>
                            </div>

                            <%-- P10 D --%>
                            <div class="row">
                                <h5>10.-¿Ha presentado mal aliento?</h5>
                                <div class=" col s12">
                                    <asp:TextBox ID="d10" runat="server" ReadOnly="True" CssClass="materialize-textarea"></asp:TextBox>
                                </div>
                            </div>
                            <%-- P11 D --%>
                            <div class="row">
                                <h5>11.-¿Tienes el hábito de morderte las uñas, tallarte  o morder objetos?</h5>
                                <div class="input-field col s6" style="top: 0">
                                    <asp:TextBox ID="d11" runat="server" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div id="Psicologo" class="tab-pane fade">
                            <%-- Banner de cuestionario Dentista y preguntas --%>

                            <%-- P1 P --%>
                            <div class="row">
                                <h5>1.-¿La Universidad Politécnica de Tulancingo fue su primera opción?</h5>
                                <div class="input-field col s6" style="top: 0">
                                    <asp:TextBox ID="p1" runat="server" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <%-- P2 P --%>
                            <div class="row">
                                <h5>2.-¿La carrera que eligió fue su primera opción?</h5>
                                <div class="input-field col s6" style="top: 0">
                                    <asp:TextBox ID="p2" runat="server" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <%-- P3 P --%>
                            <div class="row">
                                <h5>3.-¿Qué tan satisfecho está con la elección de carrera?</h5>
                                <div class="input-field col s6" style="top: 0">
                                    <asp:TextBox ID="p3" runat="server" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <%-- P4 P --%>
                            <div class="row">
                                <h5>4.-¿Sabe cuál es su perfil vocacional?</h5>
                                <div class="input-field col s6" style="top: 0">
                                    <asp:TextBox ID="p4" runat="server" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>

                            <%-- P5 P --%>
                            <div class="row">
                                <h5>5.-¿Cómo es la relación con sus abuelos?</h5>
                                <div class="input-field col s6" style="top: 0">
                                    <asp:TextBox ID="p5" runat="server" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <%-- P6 P --%>
                            <div class="row">
                                <h5>6.-¿Cómo es la relación con su mamá?</h5>
                                <div class="input-field col s6" style="top: 0">
                                    <asp:TextBox ID="p6" runat="server" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>

                            <%-- P7 P --%>
                            <div class="row">
                                <h5>7.-¿Cómo es la relación con su papá?</h5>
                                <div class="input-field col s6" style="top: 0">
                                    <asp:TextBox ID="p7" runat="server" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <%-- P8 P --%>
                            <div class="row">
                                <h5>8.-¿Cómo es la relación con sus hermanos?</h5>
                                <div class="input-field col s6" style="top: 0">
                                    <asp:TextBox ID="p8" runat="server" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <%-- P9 P --%>
                            <div class="row">
                                <h5>9.-¿Cuál es el acontecimiento más relevante de su infancia?</h5>
                                <div class=" col s12">
                                    <asp:TextBox ID="p9" TextMode="MultiLine" runat="server" ReadOnly="True" CssClass="materialize-textarea"></asp:TextBox>
                                </div>
                            </div>
                            <%-- P10 P --%>
                            <div class="row">
                                <h5>10.-¿Cuál es el acontecimiento más relevante de su adolesencia?</h5>
                                <div class=" col s12">
                                    <asp:TextBox ID="p10" TextMode="MultiLine" runat="server" ReadOnly="True" CssClass="materialize-textarea"></asp:TextBox>
                                </div>
                            </div>

                            <%-- P11 P --%>
                            <div class="row">
                                <h5>11.-¿Cómo es su autoestima?</h5>
                                <div class="input-field col s6" style="top: 0">
                                    <asp:TextBox ID="p11" runat="server" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <%-- P12 P --%>
                            <div class="row">
                                <h5>12.-¿Cómo considera su capacidad para relacionarse con otras personas?</h5>
                                <div class="input-field col s6" style="top: 0">
                                    <asp:TextBox ID="p12" runat="server" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <%-- P13 P --%>
                            <div class="row">
                                <h5>13.-¿Tiene algún proyecto de vida?</h5>
                                <div class="input-field col s6" style="top: 0">
                                    <asp:TextBox ID="p13" runat="server" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <%-- P14 P --%>
                            <div class="row">
                                <h5>14.-¿Le gustaría recibir orientación psicológica?</h5>
                                <div class="input-field col s6" style="top: 0">
                                    <asp:TextBox ID="p14" runat="server" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>

                            <%-- P15 P --%>
                            <div class="row">
                                <h5>15.-¿Número de hijo que es?</h5>
                                <div class="input-field col s6" style="top: 0">
                                    <asp:TextBox ID="p15" runat="server" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <%-- P16 P --%>
                            <div class="row">
                                <h5>16.-¿Con quién vive actualmente?</h5>
                                <div class="input-field col s6" style="top: 0">
                                    <asp:TextBox ID="p16" runat="server" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <%-- P17 P --%>
                            <div class="row">
                                <h5>17.-¿Cuales son sus preferencias sexuales?</h5>
                                <div class="input-field col s6" style="top: 0">
                                    <asp:TextBox ID="p17" runat="server" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <%-- P18 P --%>
                            <div class="row">
                                <h5>18.-¿Ha asistido a terapia psicológica?</h5>
                                <div class="input-field col s6" style="top: 0">
                                    <asp:TextBox ID="p18" runat="server" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <%-- P19 P --%>
                            <div class="row">
                                <h5>19.-¿Cuantas horas duermes diariamente?</h5>
                                <div class="input-field col s6" style="top: 0">
                                    <asp:TextBox ID="p19" runat="server" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                    </asp:Panel>
                </div>
            </div>
        </asp:Panel>
        <asp:Panel ID="PanelCuestionarioMensaje" runat="server" Visible="false" ForeColor="Red">
              <h2 class="center-align">No encontrado</h2>
        </asp:Panel>
               </div>
   

</asp:Content>
