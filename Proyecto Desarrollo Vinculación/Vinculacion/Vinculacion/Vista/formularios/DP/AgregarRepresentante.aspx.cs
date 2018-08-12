using ConexionDatos.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vista_formularios_DP_AgregarRepresentante : System.Web.UI.Page
{
    int idMaestro;
    String carrera;
    int idproyecto;
    BeneficiarioDAO crudBeneficiario = new BeneficiarioDAO();
    validaciones validar = new validaciones();
    protected void Page_Load(object sender, EventArgs e)
    {
        idMaestro = Convert.ToInt16(Session["idPersona"]);
        lblNombre.Text = Convert.ToString(Session["nombre"]) + Convert.ToString(Session["apellido"]);
        carrera = Convert.ToString(Session["carrera"]);
        idproyecto = Convert.ToInt16(Session["idProyecto"]);
        if(!IsPostBack)
        {
            txtcedula.Text = " ";
            txtPass.Text = " ";
        }
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if(validar.validarCedulaBeneficiario(txtcedula.Text)==false)
        {
            if(validar.validarCedula(txtcedula.Text))
            {
                Beneficiario enviar = new Beneficiario(idproyecto, txtnom.Text, txtapellido.Text, txtcedula.Text, txtPass.Text);
                crudBeneficiario.insertar(enviar);
                Response.Write("<script language=javascript>alert('DATOS REGISTRADOS');</script>");
                txtnom.Text = "";
                txtcedula.Text = "";
                txtapellido.Text = "";
            }
            else
            {
                Response.Write("<script language=javascript>alert('CEDULA INCORRECTA');</script>");
            }
          
        }
        else
        {
            Response.Write("<script language=javascript>alert('CEDULA EXISTENTE');</script>");
        }
        
    }
}