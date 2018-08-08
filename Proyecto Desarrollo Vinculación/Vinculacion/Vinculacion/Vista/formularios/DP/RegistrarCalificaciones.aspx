<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/formularios/PaginaMaestras/PaginaMaestraDirectorProyecto.master" AutoEventWireup="true" CodeFile="RegistrarCalificaciones.aspx.cs" Inherits="Vista_formularios_DP_RegistrarCalificaciones" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style15 {
            margin-left: 40px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidoPag" Runat="Server">
    <div style="width=100%">
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
    <div style="width=100%">
        <asp:GridView ID="vistaEstudiantes" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" AllowSorting="True" AutoGenerateSelectButton="True" OnSelectedIndexChanged="vistaEstudiantes_SelectedIndexChanged">
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
    </div>
    <div>
        <table>
            <tr>
                <td>

                    <asp:Label ID="Label1" runat="server" Text="ID:"></asp:Label>

                </td>
                <td>
                    <asp:Label ID="lblId" runat="server"></asp:Label>
                </td>
                <td></td>
                <td>

                    <asp:Label ID="Label2" runat="server" Text="NOMBRE:"></asp:Label>

                </td>
                <td>
                    <asp:Label ID="lblNom" runat="server"></asp:Label>
                </td>
                <td></td>
                <td>

                    <asp:Label ID="Label3" runat="server" Text="APELLIDO"></asp:Label>

                </td>
                <td>

                    <asp:Label ID="lblApellido" runat="server"></asp:Label>

                </td>
            </tr>
            <tr>
                <td>

                    <asp:Label ID="Label5" runat="server" Text="DOMINIO ÁREA"></asp:Label>

                </td>
                <td class="auto-style15">

                    <asp:RadioButtonList ID="rbtDominio" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                    </asp:RadioButtonList>

                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="rbtDominio" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>

                    <asp:Label ID="Label6" runat="server" Text="RESPETO"></asp:Label>

                </td>
                <td class="auto-style15">

                    <asp:RadioButtonList ID="rbtRespeto" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                    </asp:RadioButtonList>

                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="rbtRespeto" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>

                    <asp:Label ID="Label7" runat="server" Text="PUNTUALIDAD"></asp:Label>

                </td>
                <td class="auto-style15">

                    <asp:RadioButtonList ID="rbtPuntualidad" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                    </asp:RadioButtonList>

                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="rbtPuntualidad" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>

                    <asp:Label ID="Label8" runat="server" Text="HONESTIDAD"></asp:Label>

                </td>
                <td class="auto-style15">

                    <asp:RadioButtonList ID="rbtHonestidad" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                    </asp:RadioButtonList>

                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="rbtHonestidad" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
    </div>
    <div>
        <table>
            <tr>
                <td></td>
                <td>

                    <asp:ImageButton ID="ImageButton2" runat="server" Height="124px" ImageUrl="~/Imagenes/ok.png" OnClick="ImageButton2_Click" Width="155px" />

                </td>
                <td>

                    <asp:ImageButton ID="ImageButton1" runat="server" Height="121px" ImageUrl="~/Imagenes/noOk.png" Width="141px" />

                </td>
            </tr>
        </table>
    </div>
    </div>

</asp:Content>

