<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/formularios/PaginaMaestras/PaginaMaestraDirectorProyecto.master" AutoEventWireup="true" CodeFile="ModificarPractica.aspx.cs" Inherits="Vista_formularios_DP_ModificarPractica" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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
            <h2>MODIFICAR EJECUCIÓN DE PRÁCTICA</h2>
        </div>
        <div>
            <asp:GridView ID="vistaEstudiantes" runat="server" AutoGenerateSelectButton="True" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="SeleccionarEstudiante">
                <AlternatingRowStyle BackColor="White" />
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
        <hr />
        <div>
            <asp:GridView ID="vistaActividades" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateSelectButton="True" OnSelectedIndexChanged="seleccionarCalendario" OnRowDeleting="seleccionEliminarActividad">
                <AlternatingRowStyle BackColor="White" />
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
            <asp:Label ID="lblControl" runat="server" Text="SIN ACTIVIDADES" Visible="False"></asp:Label>
        </div>
        <div>
            <table>
                <tr>
                    <td>

                        <asp:Label ID="Label1" runat="server" Text="NOMBRE:"></asp:Label>

                    </td>
                    <td>

                        <asp:Label ID="lblNom" runat="server"></asp:Label>

                    </td>
                    <td>

                        <asp:Label ID="Label3" runat="server" Text="APELLIDO:"></asp:Label>

                    </td>
                    <td>

                        <asp:Label ID="lblApellido" runat="server"></asp:Label>

                    </td>
                    <td>

                        <asp:Label ID="Label5" runat="server" Text="NUMERO HORAS:"></asp:Label>

                    </td>
                    <td>

                        <asp:TextBox ID="txtHoras" runat="server"></asp:TextBox>

                    </td>
                    <td>

                        <asp:Label ID="Label7" runat="server" Text="DESCRIPCIÓN:"></asp:Label>

                    </td>
                    <td>

                        <asp:TextBox ID="txtDescrioción" runat="server"></asp:TextBox>

                    </td>
                </tr>
            </table>
        </div>
        <div>
            <table>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </div>
        <div>
            <table>
                <tr>
                    <td>
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="156px" ImageUrl="~/Imagenes/editar.png" Width="210px" OnClick="ImageButton1_Click" />
                    </td>
                    <td>
                        <asp:ImageButton ID="ImageButton2" runat="server" Height="179px" ImageUrl="~/Imagenes/noOk.png" OnClick="ImageButton2_Click" Width="191px" />
                    </td>
                </tr>
            </table>
            
        </div>
</asp:Content>

