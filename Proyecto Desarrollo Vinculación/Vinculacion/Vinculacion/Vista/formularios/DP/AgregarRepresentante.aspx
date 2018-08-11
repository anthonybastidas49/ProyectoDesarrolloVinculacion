<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/formularios/PaginaMaestras/PaginaMaestraDirectorProyecto.master" AutoEventWireup="true" CodeFile="AgregarRepresentante.aspx.cs" Inherits="Vista_formularios_DP_AgregarRepresentante" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style15 {
            height: 35px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidoPag" Runat="Server">
    <div class="divTitulo"style="width=100%" >
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
    <div>
        <h2>AÑADIR REPRESENTANTE DE LA COMUNIDAD</h2>
    </div>
    <div>
        <table>
            <tr>
                <td class="auto-style15">

                    <asp:Label ID="Label1" runat="server" Text="NOMBRE:"></asp:Label>

                </td>
                <td class="auto-style15">

                    <asp:TextBox ID="txtnom" runat="server" Height="25px" Width="200px"></asp:TextBox>

                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtnom" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>

                    <asp:Label ID="Label2" runat="server" Text="APELLIDO:"></asp:Label>

                </td>
                <td>

                    <asp:TextBox ID="txtapellido" runat="server" Height="25px" Width="200px"></asp:TextBox>

                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtapellido" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>

                    <asp:Label ID="Label3" runat="server" Text="CEDULA:"></asp:Label>

                </td>
                <td>

                    <asp:TextBox ID="txtcedula" runat="server" Height="25px" Width="200px"></asp:TextBox>

                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtcedula" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>

                    <asp:Label ID="Label4" runat="server" Text="CONTRASEÑA:"></asp:Label>

                </td>
                <td>

                    <asp:TextBox ID="txtPass" runat="server" Height="25px" TextMode="Password" Width="200px"></asp:TextBox>

                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPass" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
    </div>
    <div>
        <asp:ImageButton ID="ImageButton1" runat="server" Height="126px" ImageUrl="~/Imagenes/agregar.png" Width="152px" OnClick="ImageButton1_Click" />
    </div>

</asp:Content>

