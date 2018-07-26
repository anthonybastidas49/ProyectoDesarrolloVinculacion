<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/plantilla.master" AutoEventWireup="true" CodeFile="indexVinculacion.aspx.cs" Inherits="Vista_indexVinculacion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style14 {
            font-size: x-large;
            text-align: justify;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidoPag" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <link href="../estilos/estiloIndex.css" rel="stylesheet" />
    <table id="menu" style="width:100%">
        <tr id="menuColumna">
            <td id="menu1" style="text-align:center;">
                <a href="loginVinculacion.aspx"><h3  >INGRESAR</h3></a>
            </td>
            <td id="menu2"style="text-align:center;">
               <a   href="informacionVinculacion.aspx"><h3>INFORMACIÓN</h3></a>
            </td>
            <td id="menu3"style="text-align:center;">
                <a href="inforProyectos.aspx"><h3 >PROYECTOS ACTIVOS</h3></a>
            </td>
            <td id="menu4"style="text-align:center;">
               <a href="loginVinculacion.aspx"> <h3 >FORMATOS</h3></a>
            </td>
            <td id="menu5"style="text-align:center;">
               <a href="acercaDE.aspx"> <h3 >ACERCA DE</h3></a>
            </td>
            <td id="menu6"style="text-align:center;">
               <a href="contacto.aspx"> <h3 >CONTACTO</h3></a>
            </td>
        </tr>
    </table>
    <div id="informacion" >
        <h2 class="auto-style14">VINCULACIÓN CON LA SOCIEDAD</h2>
        <p ID="parrafoPrincipal" class="auto-style14" >
            La trayectoria de la Universidad de las Fuerzas Armadas ESPE en el ámbito de vinculación 
            con la sociedad, se remonta a la creación misma de la Escuela de Oficiales Ingenieros (1922) 
            y posteriormente la Escuela Politécnica del Ejército (1977). Mediante el desarrollo de proyectos 
            de asesoría técnica, consultorías, prestación de servicios, capacitación comunitaria,  la Universidad 
            desarrolla proyectos de vinculación en las áreas de conocimiento de sus Departamentos.  Los proyectos 
            de vinculación que se ejecutan son considerados un importante eje en el funcionamiento de la 
            Universidad; junto con la docencia y la investigación, apuntan al desarrollo sostenible de la sociedad,
            generando sinergia entre la universidad, empresas privadas y públicas, y los sectores sociales y 
            productivos.

            La Universidad de las Fuerzas Armadas – ESPE, en el marco de su planeación estratégica institucional, 
            adopta el enfoque de servicio a la sociedad, el mismo que expresa la decisión de la comunidad
            universitaria de hacerse responsable de los impactos en la docencia, la investigación y la vinculación 
            con la sociedad; con miras a cumplir con los objetivos estratégicos institucionales y procurar la 
            innovación y transferencia de tecnología. En este contexto, a través de la vinculación con la sociedad,
            la Universidad brinda a sus estudiantes una educación encaminada al ejercicio de sus capacidades con 
            responsabilidad social y promueve en ellos la actitud para participar de manera activa  con el fin de ayudar
            a la comunidad.
        </p>
    </div>
    <div id="imagenes" style="height:500px">
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:AdRotator ID="AdRotator1"  runat="server" AdvertisementFile="~/Vista/slider.xml" />
                <asp:Timer ID="Timer1" runat="server" Interval="2500"></asp:Timer>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
</asp:Content>

