<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/formularios/ADMIN.master" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="Vista_formularios_admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style18 {
            font-size: 26pt;
        }
        .auto-style19 {
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidoPag" Runat="Server">
    <link href="../estilos/admin.css" rel="stylesheet" />
    <div class="divFinal"><strong>REGISTRAR PERSONAS</strong></div>
    <hr style="border: 4px ridge #000000" />

    <div class="divM">

        <table>
            <tr>
                <td>
                    <strong>
                    <asp:Label ID="Label1" runat="server" Text="CÉDULA:"></asp:Label>
                    </strong>
                </td>
                <td>

                    <asp:TextBox ID="txtCed" runat="server" CssClass="text"></asp:TextBox>

                </td>
                <td>
                    <strong>
                    <asp:Label ID="Label2" runat="server" Text="NOMBRE:"></asp:Label>
                    </strong>
                </td>
                <td>

                    <asp:TextBox ID="txtNom" runat="server" CssClass="text"></asp:TextBox>

                </td>
                <td>
                    <strong>
                    <asp:Label ID="Label3" runat="server" Text="APELLIDO:"></asp:Label>
                    </strong>
                </td>
                <td>

                    <asp:TextBox ID="txtApe" runat="server" CssClass="text"></asp:TextBox>

                </td>
                </tr>
            <tr>
                 <td>
                     <strong>
                    <asp:Label ID="Label4" runat="server" Text="CORREO:"></asp:Label>
                     </strong>
                </td>
                <td>

                    <asp:TextBox ID="txtCo" runat="server" CssClass="text"></asp:TextBox>

                </td>
                 <td>
                     <strong>
                    <asp:Label ID="Label5" runat="server" Text="TELEFONO:"></asp:Label>
                     </strong>
                </td>
                <td>

                    <asp:TextBox ID="txtTe" runat="server" CssClass="text"></asp:TextBox>

                </td>
                 <td>
                     <strong>
                    <asp:Label ID="Label6" runat="server" Text="CONTRASEÑA:"></asp:Label>
                     </strong>
                </td>
                <td>

                    <asp:TextBox ID="txtContr" runat="server" TextMode="Password" CssClass="text"></asp:TextBox>

                </td>
            </tr>
        </table>
    </div>
    <hr style="border: 4px ridge #000000" />

    <div class="divM">
        <strong>
        <asp:RadioButtonList ID="privilegio" runat="server">
            <asp:ListItem>ESTUDIANTE</asp:ListItem>
            <asp:ListItem>MAESTRO</asp:ListItem>
        </asp:RadioButtonList>
        </strong>
    </div>
    <hr style="border: 4px ridge #000000" />

    <div class="auto-style5">
        <asp:ImageButton ID="ImageButton1" runat="server" Height="121px" ImageUrl="~/Imagenes/ok.png" OnClick="ImageButton1_Click" Width="155px" />
    </div>
    <hr style="border: 4px ridge #000000" />
</asp:Content>

