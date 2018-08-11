using ConexionDatos.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vista_formularios_DP_AgregarPlanificacion : System.Web.UI.Page
{
    int idMaestro;
    String carrera;
    int idproyecto;
    PlanificacionDAO crudPlanificacion = new PlanificacionDAO();
    protected void Page_Load(object sender, EventArgs e)
    {
        idMaestro = Convert.ToInt16(Session["idPersona"]);
        lblNombre.Text = Convert.ToString(Session["nombre"]) + Convert.ToString(Session["apellido"]);
        carrera = Convert.ToString(Session["carrera"]);
        idproyecto = Convert.ToInt16(Session["idProyecto"]);
    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        lblFechI.Text = Calendar1.SelectedDate.ToString();
    }

    protected void Calendar2_SelectionChanged(object sender, EventArgs e)
    {
        lblFechaF.Text = Calendar2.SelectedDate.ToString();
    }

    protected void btnIngresar_Click(object sender, ImageClickEventArgs e)
    {
        if(txtLugar.Text.Equals("")||txtDescripcion.Text.Equals("")||lblFechaF.Text.Equals("")||lblFechI.Text.Equals("")||Calendar1.SelectedDate>Calendar2.SelectedDate)
        {
            Response.Write("<script language=javascript>alert('DATOS INCORRECTOS');</script>");
        }
        else
        {

                


            Planificacion enviar = new Planificacion(txtDescripcion.Text, Convert.ToString(Convert.ToDateTime(lblFechI.Text).ToString("yyyy-MM-dd").ToString()), Convert.ToString(Convert.ToDateTime(lblFechaF.Text).ToString("yyyy-MM-dd").ToString()),
                 txtLugar.Text, idproyecto, "NO");
            crudPlanificacion.registrarInformacion(enviar);
            lblFechI.Text = "";
            lblFechaF.Text = "";
            txtLugar.Text = "";
            txtDescripcion.Text = "";
            Response.Write("<script language=javascript>alert('DATOS REGISTRADOS');</script>");
        }
    }
}