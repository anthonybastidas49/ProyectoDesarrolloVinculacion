<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/formularios/PaginaMaestras/PaginaMaestraDirectorProyecto.master" AutoEventWireup="true" CodeFile="AgregarRepresentante.aspx.cs" Inherits="Vista_formularios_DP_AgregarRepresentante" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style15 {
            height: 35px;
        }
        .auto-style17 {
            font-size: 20pt;
        }
        .auto-style18 {
            height: 35px;
            font-size: 10pt;
            margin-left: 80px;
        }
        .auto-style19 {
            margin-left: 360px;
        }
        .auto-style21 {
            font-size: 30px;
            font-style: normal;
            border-radius: 15px;
            -moz-border-radius: 15px;
            opacity: 0.9;
            filter: alpha(opacity=20);
            zoom: 1;
            text-align: center;
            background-color: #808080;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidoPag" Runat="Server">
            <hr style="border: 4px ridge #FF3E3E" />
    
    <div style="width:100%" class="divMenuM" >
        <link href="../../estilos/DP.css" rel="stylesheet" />
        <table class="auto-style36">
            <tr>
                <td class="auto-style37" style="height:50px">
                <h3 class="text">BIENVENIDO:</h3>
                </td>
                <td>
                    <asp:Label ID="lblNombre" runat="server" CssClass="text"></asp:Label>
                </td>
        </table>
        </div>
            <hr style="border: 4px ridge #FF3E3E" />
    
    <div>
        <h2 class="auto-style5">AÑADIR REPRESENTANTE DE LA COMUNIDAD</h2>
    </div>
            <hr style="border: 4px ridge #FF3E3E" />
    
    <div class="divMenuFinal">
        <table class="auto-style19">
            <tr>
 
                <td class="auto-style18">

                    <asp:Label ID="Label1" runat="server" Text="NOMBRE:" CssClass="auto-style17"></asp:Label>

                </td>
                <td class="auto-style15">

                    <asp:TextBox ID="txtnom" runat="server" Height="25px" Width="200px" CssClass="entradas"></asp:TextBox>

                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtnom" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtnom" ErrorMessage="SOLO LETRAS" ValidationExpression="^[A-Z]+$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>

                    <asp:Label ID="Label2" runat="server" Text="APELLIDO:"></asp:Label>

                </td>
                <td>

                    <asp:TextBox ID="txtapellido" runat="server" Height="25px" Width="200px" CssClass="entradas"></asp:TextBox>

                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtapellido" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtapellido" ErrorMessage="SOLO LETRAS" ValidationExpression="^[A-Z]+$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>

                    <asp:Label ID="Label3" runat="server" Text="CÉDULA:"></asp:Label>

                </td>
                <td>

                    <asp:TextBox ID="txtcedula" runat="server" Height="25px" Width="200px" CssClass="entradas"></asp:TextBox>

                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtcedula" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtcedula" ErrorMessage="cédula incorrecta" ValidationExpression="^[0-9]{10}$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>

                    <asp:Label ID="Label4" runat="server" Text="CONTRASEÑA:"></asp:Label>

                </td>
                <td>

                    <asp:TextBox ID="txtPass" runat="server" Height="25px" TextMode="Password" Width="200px" CssClass="entradas"></asp:TextBox>

                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPass" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
    </div>
    
    <div class="auto-style21">
        <asp:ImageButton ID="ImageButton1" runat="server" Height="126px" ImageUrl="~/Imagenes/agregar.png" Width="152px" OnClick="ImageButton1_Click" ToolTip="Añadir" />
    </div>
                
</asp:Content>

