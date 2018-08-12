<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/plantilla.master" AutoEventWireup="true" CodeFile="inforProyectos.aspx.cs" Inherits="Vista_inforProyectos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style11 {
            height: 53px;
        }
    </style>
    </asp:Content>
<%--CODIGO C#--%>
<script runat="server">
    
</script>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidoPag" Runat="Server">
    <link href="../estilos/estiloProyecto.css" rel="stylesheet" />
    <div id="Principal">
        <div class="auto-style5">
            <h3 class="texto">PEROIDO ACADEMICO</h3>
            <asp:DropDownList ID="lstPeriodo"  runat="server" CssClass="estiloLista" Height="40px" OnSelectedIndexChanged="lstPeriodo_SelectedIndexChanged" ToolTip="Seleccionar Periodo" Width="289px">
                <asp:ListItem>Periodo SI 2018 Abr-Agst</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div style="align-content:center" class="auto-style5">
            
            </div>
        <div class="auto-style5">
            <h3 class="texto">DEPARTAMENTO</h3>
            <asp:DropDownList ID="lstDepartamento" runat="server" CssClass="estiloLista" AutoPostBack="True" OnSelectedIndexChanged="lstDepartamento_SelectedIndexChanged">
                <asp:ListItem>Seleccionar Departamento</asp:ListItem>
                <asp:ListItem>Ciencias de la Tierra</asp:ListItem>
                <asp:ListItem>Departamento de ciencias de la computación</asp:ListItem>
                <asp:ListItem>Ciencias Electricas y Electronicas</asp:ListItem>
                <asp:ListItem>Ciencias de la Biotecnologia</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="auto-style5">
            
            </div>
        <div class="auto-style8">
            <h3 class="texto">PROYECTO</h3>
            <div class="texto">
            <asp:DropDownList ID="lstProyecto" runat="server" CssClass="estiloLista" DataTextField="NOMPROYECTO" DataValueField="NOMPROYECTO" OnSelectedIndexChanged="lstProyecto_SelectedIndexChanged" AutoPostBack="True">
                <asp:ListItem>Seleccionar Proyecto</asp:ListItem>
            </asp:DropDownList>
            </div>
        </div>
        <div class="auto-style5">
            
            </div>
        <div class="auto-style11">

        </div>
        <div class="auto-style5">
        </div>
        <link href="../estilos/CV.css" rel="stylesheet" />
        <div class="auto-style5">

            <asp:GridView ID="vistaProyecto" runat="server" CellPadding="4" CssClass="mGrid" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>

        </div>
    </div>
</asp:Content>

