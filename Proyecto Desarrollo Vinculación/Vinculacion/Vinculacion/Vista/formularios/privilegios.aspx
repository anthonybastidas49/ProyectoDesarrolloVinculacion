<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/formularios/ADMIN.master" AutoEventWireup="true" CodeFile="privilegios.aspx.cs" Inherits="Vista_formularios_privilegios" %>

<%-- Agregue aquí los controles de contenido --%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style18 {
            height: 29px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidoPag" Runat="Server">
    <link href="../estilos/admin.css" rel="stylesheet" />
    <div><h2>REGISTRAR DIRECTORES DE DEPARTAMENTO O COORDINADORES DE VINCULACIÓN    </h2></div>
    <div style="height: 378px;overflow-y: scroll;overflow-x: hidden;">
        <asp:GridView ID="vistaMaestro" runat="server" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" OnSelectedIndexChanged="vistaMaestro_SelectedIndexChanged">
            <Columns>
                <asp:CommandField ButtonType="Image" SelectImageUrl="~/Imagenes/selecciona.png" ShowSelectButton="True">
                <ControlStyle Height="50px" Width="50px" />
                </asp:CommandField>
            </Columns>
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#330099" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <SortedAscendingCellStyle BackColor="#FEFCEB" />
            <SortedAscendingHeaderStyle BackColor="#AF0101" />
            <SortedDescendingCellStyle BackColor="#F6F0C0" />
            <SortedDescendingHeaderStyle BackColor="#7E0000" />
        </asp:GridView>
    </div>
   <div>
        <asp:GridView ID="proyecto" runat="server" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" OnSelectedIndexChanged="vistaMaestro_SelectedIndexChanged">
            <Columns>
                <asp:CommandField ButtonType="Image" SelectImageUrl="~/Imagenes/selecciona.png" ShowSelectButton="True">
                <ControlStyle Height="50px" Width="50px" />
                </asp:CommandField>
            </Columns>
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#330099" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <SortedAscendingCellStyle BackColor="#FEFCEB" />
            <SortedAscendingHeaderStyle BackColor="#AF0101" />
            <SortedDescendingCellStyle BackColor="#F6F0C0" />
            <SortedDescendingHeaderStyle BackColor="#7E0000" />
        </asp:GridView>
    </div>
    <div class="auto-style5">
        <asp:Button ID="Button1" runat="server" Text="REGISTRAR" OnClick="Button1_Click" CssClass="text" />
    </div>
</asp:Content>
