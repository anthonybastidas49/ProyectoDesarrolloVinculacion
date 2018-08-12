<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/plantilla.master" AutoEventWireup="true" CodeFile="Solicitud.aspx.cs" Inherits="Vista_formularios_Solicitud" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style11 {
            font-size: 26pt;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidoPag" Runat="Server">
    <hr style="border: 5px ridge #FF6600" />

    <link href="../estilos/CV.css" rel="stylesheet" />
    <div class="divMenuM">
        <h3 class="auto-style11">ENVÍO DE SOLICITUDES</h3>
    </div>
    <hr style="border: 5px ridge #FF6600" />

    <div class="divFinal">
        <table>
            <tr>
                <td>

                    <strong>

                    <asp:Label ID="Label9" runat="server" Text="CÉDULA:" CssClass="auto-style11"></asp:Label>

                    </strong>

                </td>
                <td>

                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>

                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="solo números" ValidationExpression="^[0-9]+$"></asp:RegularExpressionValidator>

                </td>
            </tr>
        </table>
    </div>
    <hr style="border: 5px ridge #FF6600" />

    <div class="auto-style5">
        <asp:ImageButton ID="ImageButton1" runat="server" Height="95px" ImageUrl="~/Imagenes/listo.png" ToolTip="VERIFICAR" Width="115px" OnClick="ImageButton1_Click" />
    </div>
    <hr style="border: 5px ridge #FF6600" />

    <div class="divMenuM">
        <h3>CONFIRMACIÓN DE INFORMACIÓN</h3>
    </div>
    <hr style="border: 5px ridge #FF6600" />
    <div style="height: 378px;overflow-y: scroll;overflow-x: hidden;">
        <asp:GridView ID="vistaProyecto" runat="server" OnSelectedIndexChanged="vistaProyecto_SelectedIndexChanged" CssClass="mGrid">
            <Columns>
                <asp:CommandField ButtonType="Image" SelectImageUrl="~/Imagenes/selecciona.png" ShowSelectButton="True">
                <ControlStyle Height="50px" Width="50px" />
                </asp:CommandField>
            </Columns>
        </asp:GridView>
    </div>
    <div class="divFinal">
        <table>
            <tr>
                <td>
                    <strong>
                    <asp:Label ID="Label1" runat="server" Text="IDPERSONA:"></asp:Label>
                    </strong>
                </td>
                <td>

                    <asp:Label ID="lblId" runat="server"></asp:Label>

                </td>
                <td>
                    <strong>
                    <asp:Label ID="Label2" runat="server" Text="CI:"></asp:Label>
                    </strong>
                </td>
                <td>

                    <asp:Label ID="lblCi" runat="server"></asp:Label>

                </td>
                <td>
                    <strong>
                    <asp:Label ID="Label3" runat="server" Text="NOMBRE:"></asp:Label>
                    </strong>
                </td>
                <td>

                    <asp:Label ID="lblNom" runat="server"></asp:Label>

                </td>
                <td>
                    <strong>
                    <asp:Label ID="Label4" runat="server" Text="APELLIDO:"></asp:Label>
                    </strong>
                </td>
                <td>

                    <asp:Label ID="lblApe" runat="server"></asp:Label>

                </td>
                <td>
                    <strong>
                    <asp:Label ID="Label5" runat="server" Text="PROYECTO:"></asp:Label>
                    </strong>
                </td>
                <td>
                    <asp:Label ID="lblIdPr" runat="server" Text=""></asp:Label>
                </td>
            </tr>
        </table>
    </div>
    <hr style="border: 5px ridge #FF6600" />

    <div class="auto-style5">
        <asp:ImageButton ID="ImageButton2" runat="server" Height="114px" ImageUrl="~/Imagenes/confirmarTutor.png" OnClick="ImageButton2_Click" Width="334px" />
    </div>
    <hr style="border: 5px ridge #FF6600" />

</asp:Content>

