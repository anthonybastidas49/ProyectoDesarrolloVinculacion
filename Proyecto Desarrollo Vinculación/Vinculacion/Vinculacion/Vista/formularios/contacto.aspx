<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/plantilla.master" AutoEventWireup="true" CodeFile="contacto.aspx.cs" Inherits="contacto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style11 {
            letter-spacing: 5px;
            text-transform: capitalize;
            font-family: 'Times New Roman';
            text-align: center;
            font-size: 30pt;
            font-style: oblique;
            font-style: normal;
            border-color: #000000;
            font-weight: normal;
        }
        .auto-style12 {
            font-size: 30pt;
            font-weight: bold;
        }
        .auto-style13 {
            font-size: 30pt;
            text-align: justify;
            font-weight: bold;
        }
        .auto-style14 {
            letter-spacing: 5px;
            text-transform: capitalize;
            font-family: 'Times New Roman';
            text-align: justify;
            font-size: 24pt;
            font-style: oblique;
            font-style: normal;
            border-color: #000000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidoPag" Runat="Server">
    <div>
        <h1 class="texto" style="overflow: auto; border: 5px dotted #008000">Estudiantes de la Universidad de las Fuerzas Armadas ESPE</h1>
    </div>
    <div>
        <p class="texto" style="border: 5px dotted #FFFF00">Para mayor información, sosporte o mantenimiento del software:</p>
    </div>
    <table align="center" class="texto" style="border: 7px double #0000FF; font-size: 60px; font-weight: 100; font-style: normal; text-transform: uppercase;">
        <tr>
            <td class="auto-style14">
                <h3 class="auto-style11"><strong>Paula Monteros</strong></h3>
            </td>
            <td>
                <a href="https://www.facebook.com/paula.monteros.5"><asp:Image ID="Image1" runat="server" Height="35px" ImageUrl="~/Imagenes/fb.png" ToolTip="FACEBOOK" Width="93px" /></a>
            </td>
            <td>
               <a  href="mailto:anthonybastidas48@gmail.com" title="Escribenos"> <asp:Image ID="Image2" runat="server" Height="41px" ImageUrl="~/Imagenes/gmail.png" ToolTip="GMAIL" Width="75px" /></a>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">
                <h3 class="auto-style12"><strong>Mayra Paspuel</strong></h3>
            </td>
            <td>
               <a href="https://www.facebook.com/mayra.alexa.52" style="font-size: 30px"> <asp:Image ID="Image3" runat="server" Height="40px" ImageUrl="~/Imagenes/fb.png" ToolTip="FACEBOOK" Width="94px" /></a>
            </td>
            <td>
               <a  href="mailto:anthonybastidas48@gmail.com" title="Escribenos"> <asp:Image ID="Image4" runat="server" Height="42px" ImageUrl="~/Imagenes/gmail.png" ToolTip="GMAIL" Width="79px" /></a>
            </td>
        </tr>
        <tr>
            <link href="../estilos/estiloContacto.css" rel="stylesheet" />
             <td class="texto">
                 <h3 class="auto-style13"><strong>Anthony Torres</strong></h3>
            </td>
            <td>
               <a href="https://www.facebook.com/anthony.torresbastidas"> <asp:Image ID="Image5" runat="server" Height="44px" ImageUrl="~/Imagenes/fb.png" ToolTip="FACEBOOK" Width="91px" /></a>
            </td>
            <td>
               <a  href="mailto:anthonybastidas48@gmail.com" title="Escribenos"> <asp:Image ID="Image6" runat="server" Height="43px" ImageUrl="~/Imagenes/gmail.png" ToolTip="GMAIL" Width="76px" /></a>
            </td>
        </tr>
    </table>
</asp:Content>

