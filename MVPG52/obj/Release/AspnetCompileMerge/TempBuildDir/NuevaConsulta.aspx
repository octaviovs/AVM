<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="NuevaConsulta.aspx.cs" Inherits="MVPG52.NuevaConsulta" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <style>
        .row .col.s6 {
            left: 0;
        }

        input:not([type]):disabled, input:not([type])[readonly="readonly"], input[type=text]:disabled, input[type=text][readonly="readonly"], input[type=password]:disabled, input[type=password][readonly="readonly"], input[type=email]:disabled, input[type=email][readonly="readonly"], input[type=url]:disabled, input[type=url][readonly="readonly"], input[type=time]:disabled, input[type=time][readonly="readonly"], input[type=date]:disabled, input[type=date][readonly="readonly"], input[type=datetime]:disabled, input[type=datetime][readonly="readonly"], input[type=datetime-local]:disabled, input[type=datetime-local][readonly="readonly"], input[type=tel]:disabled, input[type=tel][readonly="readonly"], input[type=number]:disabled, input[type=number][readonly="readonly"], input[type=search]:disabled, input[type=search][readonly="readonly"], textarea.materialize-textarea:disabled, textarea.materialize-textarea[readonly="readonly"] {
            color: black;
        }

        input, select, textarea {
            max-width: none;
        }
    </style>

    <div class="jumbotron card-panel teal white ">
        <div class="nav-wrapper card-panel #eceff1 blue-grey lighten-5">
            <div class="container">
                <h2 class="center-align">Cita Médica</h2>
            </div>
        </div>
        <!--Nueva Consulta-->
        <ul class="nav nav-tabs">
            <li class="active"><a data-toggle="tab" href="#HistorialMedico" class="card-panel #2196f3 blue white-text">Hitorial Médico</a></li>
            <li><a data-toggle="tab" href="#HistorialCitas" class="card-panel #ff6f00 amber darken-4 white-text">Historial Citas</a></li>
            <li><a data-toggle="tab" href="#LlenadoConsulta" class="card-panel #d81b60 pink darken-1 white-text">Llenado de la Consulta</a></li>
        </ul>
        <!--Contenido de tabs-->
        <div class="tab-content">
            <!----Pestañana 1-->
            <div id="HistorialMedico" class="tab-pane fade in active">
                <!----SubMenu-->
                <div>
                    <ul class="collapsible " data-collapsible="accordion" style="font-size: medium">
                        <li>
                            <div class="collapsible-header"><i class="material-icons">person_pin</i>Médico</div>
                            <div class="collapsible-body  jumbotron  card-panel teal white">

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
                                    <h5>14.-¿Alguna vez le precticaron cirugía?</h5>
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
                                    <h5>17.-Estatura(metros)</h5>
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
                                    <h5>25.-Enfermedades que padecieron los hermanos. primios y tios</h5>
                                    <div class=" col s6">
                                        <asp:TextBox ID="m25" TextMode="MultiLine" runat="server" ReadOnly="True" CssClass="materialize-textarea"></asp:TextBox>
                                    </div>
                                </div>

                            </div>
                        </li>
                    </ul>
                    <ul class="collapsible " data-collapsible="accordion" style="font-size: medium">
                        <li>
                            <div class="collapsible-header"><i class="material-icons">person_pin</i>Dental</div>
                            <div class="collapsible-body  jumbotron  card-panel teal white">
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
                                    <h5>6.-¿Le sangran las encias cuando se ceilla los dientes?</h5>
                                    <div class="input-field col s6" style="top: 0">
                                        <asp:TextBox ID="d6" runat="server" ReadOnly="True"></asp:TextBox>
                                    </div>
                                </div>
                                <%-- P7 D --%>
                                <div class="row">
                                    <h5>7.-¿Tiene diicultad para abrir la boca en algunas ocasiones?</h5>
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
                                    <h5>9.-¿Se ha quedado alguna vez con la boca abierta y ha tenido incapacidad para cerrarla?</h5>
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
                        </li>
                    </ul>

                    <ul class="collapsible " data-collapsible="accordion" style="font-size: medium">
                        <li>
                            <div class="collapsible-header"><i class="material-icons">person_pin</i>Psicológico</div>
                            <div class="collapsible-body  jumbotron  card-panel teal white">
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
                            <h5>11.-¿Cómo que es su autoestima?</h5>
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
                        </li>
                    </ul>
                </div>

                <!----SubMenu-->
            </div>
            <!----Pestañana 2-->
            <div id="HistorialCitas" class="tab-pane fade">
                <h3>Historial de citas</h3>
                <asp:GridView ID="GridViewHIstorialCitas" runat="server" Font-Size="Small" CssClass="highlight  responsive-table table table-striped table table-hover " AutoGenerateDeleteButton="False" AllowSorting="False"></asp:GridView>

            </div>
            <!----Pestañana 3-->
            <div id="LlenadoConsulta" class="tab-pane fade">

                <div id="green" class="">
                    <a>Nueva Cita</a>
                </div>

                <h4>Datos del alumno</h4>
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
                        <asp:Label ID="LabelMatriculaAlumno" runat="server" Text="Matricula" Font-Size="Medium"></asp:Label>
                    </div>

                </div>
                <h4>Resumen del antecedente</h4>
                <div>
                    <asp:TextBox ID="ResumenAntecedente" runat="server" TextMode="MultiLine" CssClass="materialize-textarea"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="Red" BackColor="Yellow" ErrorMessage="Campo Requerido" ControlToValidate="ResumenAntecedente"></asp:RequiredFieldValidator>
                </div>
                <h4>Datos físicos</h4>
                <%-- Talla y peso --%>
                <div class="row">
                    <div class="input-field col s4 push-s8" style="top: 0; left: 0px">
                        <asp:TextBox ID="Talla" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ForeColor="Red" BackColor="Yellow" ControlToValidate="Talla" runat="server" ErrorMessage="Campo Requerido"></asp:RequiredFieldValidator>
                        <label for="Talla">Talla(cm)</label>
                    </div>

                    <div class="input-field col s4 pull-s8" style="top: 0; left: 0px">
                        <asp:TextBox ID="Peso" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ForeColor="Red" BackColor="Yellow" ControlToValidate="Peso" runat="server" ErrorMessage="Campo Requerido"></asp:RequiredFieldValidator>
                        <label for="Peso">Peso(Kg)</label>
                    </div>
                    <div class="input-field col s4 pull-s8" style="top: 0; left: 0px">
                        <asp:TextBox ID="Presion" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ForeColor="Red" BackColor="Yellow" ControlToValidate="Presion" runat="server" ErrorMessage="Campo Requerido"></asp:RequiredFieldValidator>
                        <label for="Presion">Presión Arterial(mmHg)</label>
                    </div>

                </div>

                <h5>Resumen Exploración Física</h5>
                <div>
                    <asp:TextBox ID="ResumenExploracion" runat="server" TextMode="MultiLine" CssClass="materialize-textarea"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ForeColor="Red" BackColor="Yellow" ControlToValidate="ResumenExploracion" runat="server" ErrorMessage="Campo Requerido"></asp:RequiredFieldValidator>
                </div>
                <h5>Diagnóstico</h5>
                <div>
                    <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
                </div>
                <asp:Panel ID="Panel1" runat="server" Visible="false">
                    <div class="row">
                        <div class="col s6">
                        </div>
                    </div>
                    <asp:TextBox ID="txtOtro" runat="server"></asp:TextBox>
                    <asp:Button ID="ButtonOtro" runat="server" Text="Agregar Nuevo" OnClick="ButtonOtro_Click" />
                </asp:Panel>

                <h5>Plan de Tratamiento</h5>
                <div>
                    <asp:TextBox ID="PlanTratamiento" runat="server" TextMode="MultiLine" CssClass="materialize-textarea"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ForeColor="Red" BackColor="Yellow" ControlToValidate="PlanTratamiento" runat="server" ErrorMessage="Campo Requerido" CssClass="materialize-textarea"></asp:RequiredFieldValidator>
                </div>
                <div class="center-align">
                    <asp:Button ID="Button1" runat="server" Text="Guardar" OnClick="Button1_Click" BackColor="#66FF33" />
                </div>
                <%--<input type="button" value="Imprimir" class="no-print"  href="javascript:;" onclick="ImprimeDiv"  style="float: right"/>--%>
            </div>
        </div>
    </div>
    <!--FIN Contenido de tabs-->


    <script type="text/javascript">

        $('input.autocomplete').autocomplete({
            data: {
                "Apple": null,
                "Microsoft": null,
                "Google": 'http://placehold.it/250x250'
            },
            limit: 20, // The max amount of results that can be shown at once. Default: Infinity.
            onAutocomplete: function (val) {
                // Callback function when value is autcompleted.
            },
            minLength: 1, // The minimum length of the input for the autocomplete to start. Default: 1.
        });
    </script>
</asp:Content>

