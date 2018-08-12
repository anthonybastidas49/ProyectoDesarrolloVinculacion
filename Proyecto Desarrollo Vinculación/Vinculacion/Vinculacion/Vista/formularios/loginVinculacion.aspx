<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/plantilla.master" AutoEventWireup="true" CodeFile="loginVinculacion.aspx.cs" Inherits="Vista_loginVinculacion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  
    <style type="text/css">
        .auto-style11 {
            margin-left: 0px;
        }
        .auto-style12 {
            width: 214px;
        }
        .auto-style13 {
            text-align: right;
            height: 62px;
        }
        .auto-style14 {
            width: 214px;
            height: 62px;
        }
        .auto-style15 {
            width: 305px;
        }
        .auto-style17 {
            width: 79px;
        }
        .auto-style18 {
            width: 350px;
        }
        .auto-style19 {
            height: 30px;
        }
        .auto-style20 {
            text-align: center;
            height: 30px;
        }
        </style>
    <link href="../estilos/loginEstilo.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidoPag" Runat="Server">
      <script type="text/javascript">
        $(document).ready(function () {
            $("#contenidoPag_txtUser").keypress(function (event) {
                if (event.charCode >= 48 && event.charCode <= 57) { return true; }
                else { return false; }
            });
        });
    </script>
    <div id="login">
    <div  class="auto-style5">
            <asp:Image ID="Image1" runat="server" Height="244px" ImageUrl="~/Imagenes/acceso.png" Width="378px" CssClass="auto-style11" />
    </div>
    <div class="estiloDivPrincipal">
        <table align="center" class="auto-style15" >
            <tr>
                <td class="auto-style13">

                    <asp:Image ID="Image3" runat="server" Height="64px" ImageUrl="~/Imagenes/usuario.png" Width="74px" />

                </td>
                <td class="auto-style14">
                    
                    <asp:TextBox ID="txtUser" CssClass="estiloTablaMenu" runat="server" Height="47px" Width="212px" OnTextChanged="txtUser_TextChanged"></asp:TextBox>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtUser">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtUser" ErrorMessage="SOLO NUMEROS" ValidationExpression="^[0-9]+$" ForeColor="Red"></asp:RegularExpressionValidator>
                 </td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:Image ID="Image2"  runat="server" Height="66px" ImageUrl="~/Imagenes/pasaword.png" Width="73px" />

                </td>
                <td class="auto-style12">

                    <asp:TextBox ID="txtPass" CssClass="estiloTablaMenu" runat="server" Height="38px" TextMode="Password" Width="214px"></asp:TextBox>
                    
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="estiloTablaMenu" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtPass">*</asp:RequiredFieldValidator>
                </td>
                <td>
                </td>
            </tr>
        </table>
        <table align="center">
              <tr>
                    <td class="auto-style19">
                          <asp:RadioButton ID="rbM" runat="server" CssClass="texto" GroupName="privilegio" Text="Maestro" OnCheckedChanged="rbM_CheckedChanged" />
                     </td>
                     <td class="auto-style20">
                          <asp:RadioButton runat="server" CssClass="texto" GroupName="privilegio" Text="Estudiante" ID="rbE" OnCheckedChanged="rbE_CheckedChanged" />
                      </td>
                  <td class="auto-style20">
                          <asp:RadioButton ID="rbB" runat="server" CssClass="texto" GroupName="privilegio" Text="Beneficiario" OnCheckedChanged="rbB_CheckedChanged" />
                   </td>
               </tr>
          </table>
        <div class="auto-style5">
            <asp:ImageButton ID="btnLogin" runat="server" AlternateText="Ingresar" Height="101px" ImageAlign="Middle" ImageUrl="~/Imagenes/login.png" ToolTip="Ingresar" Width="341px" OnClick="ImageButton1_Click" />
                
        </div>        
        <div>
            <table  align="center" >
                <tr>
                    <td class="auto-style18"  >
                       <a href="informacionVinculacion.aspx"><p ID="olvide" class="texto">Olvide mi contraseña</p></a>
                    </td>
                    <td class="auto-style17"></td>
                    <td >
                        
                        <asp:CheckBox ID="CheckBox1" runat="server" ForeColor="Blue" OnCheckedChanged="CheckBox1_CheckedChanged" Text="RECORDAR CONTRASEÑA" CssClass="texto" />
                        
                    </td>
                    
                </tr>
                <tr>
                    <td class="auto-style18">

                    </td>
                    <td>
                        <a href="Solicitud.aspx">ENVIAR SOLICITUD</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   
                    </td>
                    
                </tr>
            </table>
        </div>    
  </div>  
</asp:Content>


