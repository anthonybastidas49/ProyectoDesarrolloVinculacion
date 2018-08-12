<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/formularios/PaginaMaestras/PaginaMaestraDirectorProyecto.master" AutoEventWireup="true" CodeFile="ModificarPractica.aspx.cs" Inherits="Vista_formularios_DP_ModificarPractica" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style18 {
            font-size: 18pt;
        }
        .auto-style19 {
            margin-left: 120px;
        }
        .auto-style20 {
            font-size: 24pt;
        }
        .auto-style21 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidoPag" Runat="Server">
    <link href="../../estilos/DP.css" rel="stylesheet" />
    <div style="width:100%">
    <div class="divMenuM"style="width=100%" >
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
        </div>
                    <hr style="border: 4px ridge #FF3E3E" />
    
        
        <div class="auto-style19">
            <h2 class="auto-style5">MODIFICAR EJECUCIÓN DE PRÁCTICA</h2>
            <asp:GridView ID="vistaEstudiantes" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="SeleccionarEstudiante" CssClass="mGrid">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ButtonType="Image" SelectImageUrl="~/Imagenes/selecciona.png" ShowSelectButton="True">
                    <ControlStyle Height="50px" Width="50px" />
                    </asp:CommandField>
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
</div>
    <hr style="border: 4px ridge #FF3E3E" />
<div class="auto-style19">
            <asp:GridView ID="vistaActividades" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="seleccionarCalendario" OnRowDeleting="seleccionEliminarActividad" CssClass="mGrid">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ButtonType="Image" SelectImageUrl="~/Imagenes/selecciona.png" ShowSelectButton="True">
                    <ControlStyle Height="50px" Width="50px" />
                    </asp:CommandField>
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <strong>
            <asp:Label ID="lblControl" runat="server" Text="SIN ACTIVIDADES" Visible="False" CssClass="auto-style20"></asp:Label>
            </strong>
        </div>
                    <hr style="border: 4px ridge #FF3E3E" />
    
        
        <div class="divMenuFinal">
            <table>
                <tr>
                    <td>

                        <strong>

                        <asp:Label ID="Label1" runat="server" Text="NOMBRE:" CssClass="auto-style18"></asp:Label>

                        </strong>

                    </td>
                    <td>

                        <asp:Label ID="lblNom" runat="server"></asp:Label>

                    </td>
                    <td>

                        <strong>

                        <asp:Label ID="Label3" runat="server" Text="APELLIDO:" CssClass="auto-style18"></asp:Label>

                        </strong>

                    </td>
                    <td>

                        <asp:Label ID="lblApellido" runat="server"></asp:Label>

                    </td>
                    <td>

                        <strong>

                        <asp:Label ID="Label5" runat="server" Text="NUMERO HORAS:" CssClass="auto-style18"></asp:Label>

                        </strong>

                    </td>
                    <td>

                        <asp:TextBox ID="txtHoras" runat="server"></asp:TextBox>

                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtHoras" ErrorMessage="solo números" ForeColor="Red" ValidationExpression="^[0-9]"></asp:RegularExpressionValidator>

                    </td>
                    <td>

                        <strong>

                        <asp:Label ID="Label7" runat="server" Text="DESCRIPCIÓN:" CssClass="auto-style18"></asp:Label>

                        </strong>

                    </td>
                    <td>

                        <asp:TextBox ID="txtDescrioción" runat="server"></asp:TextBox>

                    </td>
                </tr>
            </table>
        </div>

        </div>

        <div class="divMenuFinal">
            <table>
                <tr>
                    <td>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                    <td>
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="156px" ImageUrl="~/Imagenes/editar.png" Width="210px" OnClick="ImageButton1_Click" ToolTip="EDITAR" />
                    </td>
                    <td class="auto-style5">
                        <asp:ImageButton ID="ImageButton2" runat="server" Height="179px" ImageUrl="~/Imagenes/noOk.png" OnClick="ImageButton2_Click" Width="191px" ToolTip="ELIMINAR" />
                    </td>
                </tr>
            </table>
            
        </div>
</asp:Content>

