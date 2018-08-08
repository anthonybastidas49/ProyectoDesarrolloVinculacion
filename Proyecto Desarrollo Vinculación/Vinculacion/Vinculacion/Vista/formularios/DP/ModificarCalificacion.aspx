<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/formularios/PaginaMaestras/PaginaMaestraDirectorProyecto.master" AutoEventWireup="true" CodeFile="ModificarCalificacion.aspx.cs" Inherits="Vista_formularios_DP_ModificarCalificacion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style15 {
            height: 26px;
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
            <div>

                <asp:GridView ID="vistaCalificaciones" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" AutoGenerateSelectButton="True" OnRowDeleting="vistaCalificaciones_RowDeleting" OnRowEditing="editarNota" OnSelectedIndexChanged="vistaCalificaciones_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#0000A9" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#000065" />
                </asp:GridView>

                <asp:Label ID="lbltabla" runat="server" Text="NO EXISTEN CALIFICACIONES" Visible="False"></asp:Label>

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

                   <asp:Label ID="Label9" runat="server" Text="DOMINIO ÁREA"></asp:Label>

               </td>
               <td>

                   <asp:Label ID="lblDon" runat="server"></asp:Label>

               </td>
               <td>

                   <asp:Label ID="Label11" runat="server" Text="RESPETO"></asp:Label>

               </td>
               <td>

                   <asp:Label ID="lblRes" runat="server"></asp:Label>

               </td>
           </tr>
            <tr>
                <td class="auto-style15">

                    <asp:Label ID="Label13" runat="server" Text="PUNTUALIDAD"></asp:Label>

               </td>
               <td class="auto-style15">

                   <asp:Label ID="lblPun" runat="server"></asp:Label>

               </td>
               <td class="auto-style15">

                   <asp:Label ID="Label15" runat="server" Text="HONESTIDAD"></asp:Label>

               </td>
               <td class="auto-style15">

                   <asp:Label ID="lblHones" runat="server"></asp:Label>

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

                    <asp:Label ID="Label16" runat="server" Text="Label"></asp:Label>

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
                            <asp:ImageButton ID="ImageButton1" runat="server" Height="94px" ImageUrl="~/Imagenes/editar.png" OnClick="ImageButton1_Click" Width="175px" />
                        </td>
                    </tr>
                </table>
            </div>
      </div>
</asp:Content>

