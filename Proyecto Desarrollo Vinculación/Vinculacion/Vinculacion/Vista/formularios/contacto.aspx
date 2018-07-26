<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/plantilla.master" AutoEventWireup="true" CodeFile="contacto.aspx.cs" Inherits="contacto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidoPag" Runat="Server">
    <div>
        <h2 class="texto">Estudiantes de la Universidad de las Fuerzas Armadas ESPE</h2>
    </div>
    <div>
        <p class="texto">Para mayor información, sosporte o mantenimiento del software:</p>
    </div>
    <table align="center" class="texto">
        <tr>
            <td class="texto">
                <h3>Paula Monteros</h3>
            </td>
            <td>
                <a href="https://www.facebook.com/paula.monteros.5"><asp:Image ID="Image1" runat="server" Height="35px" ImageUrl="~/Imagenes/fb.png" ToolTip="FACEBOOK" Width="93px" /></a>
            </td>
            <td>
               <a  href="mailto:anthonybastidas48@gmail.com" title="Escribenos"> <asp:Image ID="Image2" runat="server" Height="41px" ImageUrl="~/Imagenes/gmail.png" ToolTip="GMAIL" Width="75px" /></a>
            </td>
        </tr>
        <tr>
            <td class="texto">
                <h3>Mayra Paspuel</h3>
            </td>
            <td>
               <a href="https://www.facebook.com/mayra.alexa.52"> <asp:Image ID="Image3" runat="server" Height="40px" ImageUrl="~/Imagenes/fb.png" ToolTip="FACEBOOK" Width="94px" /></a>
            </td>
            <td>
               <a  href="mailto:anthonybastidas48@gmail.com" title="Escribenos"> <asp:Image ID="Image4" runat="server" Height="42px" ImageUrl="~/Imagenes/gmail.png" ToolTip="GMAIL" Width="79px" /></a>
            </td>
        </tr>
        <tr>
            <link href="../estilos/estiloContacto.css" rel="stylesheet" />
             <td class="texto">
                 <h3>Anthony Torres</h3>
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

