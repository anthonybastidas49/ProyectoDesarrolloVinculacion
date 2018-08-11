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
    protected void Page_Load(object sender, EventArgs e)
    {
        idMaestro = Convert.ToInt16(Session["idPersona"]);
        lblNombre.Text = Convert.ToString(Session["nombre"]) + Convert.ToString(Session["apellido"]);
        carrera = Convert.ToString(Session["carrera"]);
        idproyecto = Convert.ToInt16(Session["idProyecto"]);
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Beneficiario enviar = new Beneficiario(idproyecto, txtnom.Text, txtapellido.Text, txtcedula.Text, txtPass.Text);
        crudBeneficiario.insertar(enviar);
        Response.Write("<script language=javascript>alert('DATOS REGISTRADOS');</script>");
    }
}