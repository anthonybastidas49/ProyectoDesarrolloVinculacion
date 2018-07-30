<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Prueba.aspx.cs" Inherits="Prueba" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
    <div>
      <asp:RadioButton id="disco" runat="server" GroupName="guardar"
	    Checked="true" Text="Guardar imagen en disco"/>
      <asp:RadioButton id="bd" runat="server" GroupName="guardar"
	    Text="Guardar imagen en base de datos"/>
    </div>
    <p>
      <asp:Label AssociatedControlId="fileUploader1" runat="server"
	    Text="Seleccionar una imagen:" />
      <asp:FileUpload id="fileUploader1" runat="server" />
    </p>
    <asp:Button id="cargarImagen" runat="server"
	  Text="Cargar imágenes" OnClick="cargarImagen_Click"/>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="DESCARGAR" />
    </div>
        </div>
    </form>
</body>
</html>
