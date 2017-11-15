<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Archivos.aspx.cs" Inherits="MVPG52.Archivos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron card-panel #ffffff white">
        <nav class="" data-target="red" style="top: auto; z-index: auto">
            <div class="nav-wrapper #689f38 light-green darken-2">
                <div class="container center-align">
                    <h3 class="">Subir archivos</h3>
                    <ul id="nav-mobile2" class="right hide-on-med-and-down">
                    </ul>
                </div>
            </div>
        </nav>
        <br />
        <ul class="collapsible " data-collapsible="accordion" style="font-size: x-large">
            <li>
                <div class="collapsible-header"><i class="material-icons">person_pin</i>Instrucciones para subir archivo.</div>
                <div class="collapsible-body  jumbotron  card-panel teal white">
                    <p style="font-size: medium">1.-Seleccione un archivo con extencion pdf. </p>
                    <p style="font-size: medium">2.-Debe de ser menos 1mb </p>
                </div>
            </li>
        </ul>
        <br />
        <div class="row">
            <div class="col">
                <h3>Poner nombre</h3>
            </div>
            <div class="col">
               


            </div>
            <div class="col">

                <asp:TextBox ID="TextBoxNombre" runat="server"></asp:TextBox>
            </div>

        </div>
        <div class="row">
            <div class="col-md-8">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </div>
            <div class="col-md-2">
                <asp:Button ID="btnUpload" Text="Subir" runat="server" OnClick="UploadFile" />
            </div>
            <div class="col-md-2">
                <asp:Label ID="lblMessage" ForeColor="Green" runat="server" />
            </div>
        </div>
    </div>



    <script type = "text/javascript">
        function Confirm() {
            var confirm_value = document.createElement("INPUT");
            confirm_value.type = "hidden";
            confirm_value.name = "confirm_value";
            if (confirm("Do you want to save data?")) {
                confirm_value.value = "Yes";
            } else {
                confirm_value.value = "No";
            }
            document.forms[0].appendChild(confirm_value);
        }
    </script>
</asp:Content>
