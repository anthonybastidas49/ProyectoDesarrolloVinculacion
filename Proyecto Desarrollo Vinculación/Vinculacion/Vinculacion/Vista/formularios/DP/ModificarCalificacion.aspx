<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/formularios/PaginaMaestras/PaginaMaestraDirectorProyecto.master" AutoEventWireup="true" CodeFile="ModificarCalificacion.aspx.cs" Inherits="Vista_formularios_DP_ModificarCalificacion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style15 {
            height: 26px;
        }
        .auto-style17 {
            margin-left: 200px;
        }
        .auto-style18 {
            font-size: 14pt;
        }
        .auto-style19 {
            height: 26px;
            font-size: 14pt;
        }
        .auto-style20 {
            text-align: center;
            font-size: 26pt;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidoPag" Runat="Server">
                <hr style="border: 4px ridge #FF3E3E" />
        <div style="width:100%" class="divMenuM">
            <link href="../../estilos/DP.css" rel="stylesheet" />
    <div"style="width:100%" >
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
            <h3 class="auto-style20">MODIFICAR CALIFICACIÓN</h3>
        </div>
                        <hr style="border: 4px ridge #FF3E3E" />
    
    
            <div class="auto-style17">

                <div class="auto-style5">

                <asp:GridView ID="vistaCalificaciones" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" OnRowDeleting="vistaCalificaciones_RowDeleting" OnRowEditing="editarNota" OnSelectedIndexChanged="vistaCalificaciones_SelectedIndexChanged" CssClass="mGrid">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <Columns>
                        <asp:CommandField ButtonType="Image" SelectImageUrl="~/Imagenes/selecciona.png" ShowSelectButton="True">
                        <ControlStyle Height="50px" Width="50px" />
                        </asp:CommandField>
                    </Columns>
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

                </div>

                <asp:Label ID="lbltabla" runat="server" Text="NO EXISTEN CALIFICACIONES" Visible="False"></asp:Label>

            </div>
                    <hr style="border: 4px ridge #FF3E3E" />
    
    
            <div class="divMenuFinal">
            <table>
            <tr>
                <td>

                    <strong>

                    <asp:Label ID="Label1" runat="server" Text="ID:" CssClass="auto-style18"></asp:Label>

                    </strong>

                </td>
                <td>
                    <asp:Label ID="lblId" runat="server" CssClass="auto-style18"></asp:Label>
                </td>
                <td></td>
                <td>

                    <strong>

                    <asp:Label ID="Label2" runat="server" Text="NOMBRE:" CssClass="auto-style18"></asp:Label>

                    </strong>

                </td>
                <td>
                    <asp:Label ID="lblNom" runat="server" CssClass="auto-style18"></asp:Label>
                </td>
                <td></td>
                <td>

                    <strong>

                    <asp:Label ID="Label3" runat="server" Text="APELLIDO" CssClass="auto-style18"></asp:Label>

                    </strong>

                </td>
                <td>

                    <asp:Label ID="lblApellido" runat="server" CssClass="auto-style18"></asp:Label>

                </td>
            </tr>
           <tr>
               <td>

                   <strong>

                   <asp:Label ID="Label9" runat="server" Text="DOMINIO ÁREA" CssClass="auto-style18"></asp:Label>

                   </strong>

               </td>
               <td>

                   <asp:Label ID="lblDon" runat="server" CssClass="auto-style18"></asp:Label>

               </td>
               <td>

                   <strong>

                   <asp:Label ID="Label11" runat="server" Text="RESPETO" CssClass="auto-style18"></asp:Label>

                   </strong>

               </td>
               <td>

                   <asp:Label ID="lblRes" runat="server" CssClass="auto-style18"></asp:Label>

               </td>
           </tr>
            <tr>
                <td class="auto-style19">

                    <strong>

                    <asp:Label ID="Label13" runat="server" Text="PUNTUALIDAD"></asp:Label>

                    </strong>

               </td>
               <td class="auto-style19">

                   <asp:Label ID="lblPun" runat="server"></asp:Label>

               </td>
               <td class="auto-style19">

                   <strong>

                   <asp:Label ID="Label15" runat="server" Text="HONESTIDAD"></asp:Label>

                   </strong>

               </td>

               <td class="auto-style19">

                   <asp:Label ID="lblHones" runat="server"></asp:Label>

               </td>
            </tr>
            <tr>
                <td>

                    <strong>

                    <asp:Label ID="Label5" runat="server" Text="DOMINIO ÁREA" CssClass="auto-style18"></asp:Label>

                    </strong>

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
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="rbtDominio" ErrorMessage="RequiredFieldValidator" ForeColor="Red" CssClass="auto-style18">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>

                    <strong>

                    <asp:Label ID="Label6" runat="server" Text="RESPETO" CssClass="auto-style18"></asp:Label>

                    </strong>

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
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="rbtRespeto" ErrorMessage="RequiredFieldValidator" ForeColor="Red" CssClass="auto-style18">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>

                    <strong>

                    <asp:Label ID="Label7" runat="server" Text="PUNTUALIDAD" CssClass="auto-style18"></asp:Label>

                    </strong>

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
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="rbtPuntualidad" ErrorMessage="RequiredFieldValidator" ForeColor="Red" CssClass="auto-style18">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>

                    <strong>

                    <asp:Label ID="Label8" runat="server" Text="HONESTIDAD" CssClass="auto-style18"></asp:Label>

                    </strong>

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
    
    
            <div class="divMenuFinal">
                <table>
                    <tr>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                        <td>
                            <asp:ImageButton ID="ImageButton1" runat="server" Height="94px" ImageUrl="~/Imagenes/editar.png" OnClick="ImageButton1_Click" Width="175px" ToolTip="Modificar" />
                        </td>
                    </tr>
                </table>
            </div>
      </div>
</asp:Content>

