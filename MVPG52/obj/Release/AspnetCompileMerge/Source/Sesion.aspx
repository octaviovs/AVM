<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sesion.aspx.cs" Inherits="MVPG52.Sesion" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!--Import Google Icon Font-->
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
    <!--Import materialize.css-->
    <link href="Content/materialize.min.css" rel="stylesheet" />
    <link href="Content/materialize.css" rel="stylesheet" />
    <%--<link href="Content/bootstrap.min.css" rel="stylesheet" />--%>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <style type="text/css">
        img {
            width: 100%;
        }

        button {
            width: 100px;
            height: 100px;
        }

        .parallax-container {
            height: 270px;
        }

        icons {
        }

        .material-icons {
            font-size: 50px;
            text-align: left;
        }

        body {
            background-color: #e2e2e2;
        }
    </style>





    <title>Inicio de Sesión</title>

</head>
<body>
    <form id="form1" runat="server">
        <div class="container" style="width: auto">
            <%-- <%--menu--%>

            <%-- Paralax container  --%>
            <div class="parallax-container">
                <div class="parallax">
                    <img src="IMAG\universidad\ban.jpg" class="responsive-img" style="height: auto" />
                </div>
            </div>
            <%-- Carrusel sesion container   --%>
            <div class="section white" style="margin: auto; text-align: center">
                <h3 class="header" style="text-align: center">Bienvenido al Sistema de Servicios Compensatorios UPT </h3>
                <br />
                <p class="grey-text text-darken-3 lighten-3 center">En el siguiente apartado podrás encontrar los servicios como son: servicios médicos, tutoría y asesorías.</p>
                <br />
                <div class="row">
                    <div class="#0277bd light-blue darken-3 col s8 offset-s2  z-depth-5">
                        <div class="carousel ">
                            <a class="carousel-item tooltipped" data-position="top" data-tooltip="Servicios Médicos" href="#modal1">
                                <img src="imag\sesion\botiquin.png" /></a>
                            <a class="carousel-item tooltipped" data-position="top" data-tooltip="Asesorias" href="#modal1">
                                <img src="imag\sesion\conferencias.png" />
                            </a>
                            <a class="carousel-item tooltipped" data-position="top" data-tooltip="Tutorias" href="#modal1">
                                <img src="imag\sesion\charlar.png" /></a>
                        </div>
                    </div>
                </div>
                <br />
                <p class="grey-text text-darken-3 lighten-3 center">---</p>
                <br />
            </div>
            <%-- Carrusel sesion container End  --%>
            <div class="parallax-container" style="animation-delay: 40s">
                <div class="parallax">
                    <img src="IMAG\universidad\FachadaUPT.jpg" />
                </div>
            </div>
            <%--modal--%>
            <div class="container">
                <div class="row">
                    <div id="modal1" class="modal col s5 offset-s2 ">
                        <div class="modal-content #1e88e5 blue darken-1 res" style="color: white; text-align: center">
                            <h3 style="font-size: x-large">Inicio de Sesión</h3>
                        </div>
                        <div class="modal-footer">

                            <div class="row">
                                <div class="col s8 offset-s1">
                                    <br />
                                    <div class="input-field col s12">
                                        <i class="material-icons prefix">person_pin</i>
                                        <asp:TextBox ID="TextBoxNumeroDeControl" runat="server" required="" CssClass="form-control input-lg" value=""></asp:TextBox>
                                        <label for="icon_prefix2" style="font-size: medium">Número de control</label>
                                    </div>
                                </div>
                                <br />
                                <br />
                                <div class="">
                                    <div class="col s8 offset-s1">
                                        <div class="input-field col s12">
                                            <i class="material-icons prefix">vpn_key</i>
                                            <asp:TextBox ID="TextBoxContrasena" runat="server" required="" CssClass="form-control input-lg" TextMode="Password"></asp:TextBox>
                                            <label for="icon_prefix2" style="font-size: 15px">Contraseña</label>
                                        </div>
                                        <br />
                                        <div class="input-field col s8 offset-s1">
                                            <asp:DropDownList ID="DropDownListRoles" runat="server"></asp:DropDownList>
                                        </div>
                                        <br />
                                    </div>
                                </div>
                            </div>


                            <div class="col s6">
                                <asp:Button ID="Button1" runat="server" Text="Iniciar" OnClick="Button1_Click" CssClass="btn btn-lg btn-primary btn-block btn-signin" />
                                <br />
                                <br />
                            </div>
                            

                        </div>
                    </div>
                </div>
            </div>
        </div>






    </form>
    <!--Import jQuery before materialize.js-->
    <script src="Scripts/jquery-1.10.2.min.js"></script>
    <script src="Scripts/materialize.min.js"></script>
    <script>
        $(document).ready(function () {

            //código que queremos ejecutar
            $('.carousel').carousel();
            $('select').material_select();
            $('.parallax').parallax();
            $('.tooltipped').tooltip({ delay: 15 });
            $(".button-collapse").sideNav();
            $('.button-collapse').sideNav({
                menuWidth: 300, // Default is 300
                edge: 'left', // Choose the horizontal origin
                closeOnClick: true, // Closes side-nav on <a> clicks, useful for Angular/Meteor
                draggable: true, width: 40, height: 30
                // Choose whether you can drag to open on touch screens

            });
            $('.modal').modal();


        });

    </script>
    <script type="text/javascript">
        function quitarmensaje() {
            $('.tooltipped').tooltip('remove');

        }
    </script>
</body>
</html>
