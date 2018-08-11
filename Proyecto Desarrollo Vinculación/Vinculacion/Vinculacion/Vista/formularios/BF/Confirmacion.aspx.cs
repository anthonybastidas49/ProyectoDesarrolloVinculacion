using ConexionDatos.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vista_formularios_BF_Confirmacion : System.Web.UI.Page
{
    int idproyecto;
    List<Planificacion> listaPlanificacion = new List<Planificacion>();
    PlanificacionDAO crudPlanificacion = new PlanificacionDAO();
    protected void Page_Load(object sender, EventArgs e)
    {
        idproyecto = Convert.ToInt16(Session["idProyecto"]);
        lblNombre.Text = Convert.ToString(Session["nombre"]) + Convert.ToString(Session["apellido"]);
        idproyecto = Convert.ToInt16(Session["idProyecto"]);
        if(!IsPostBack)
        {
            llenarTabla();
        }
    }
    public void llenarTabla()
    {
        
        listaPlanificacion = crudPlanificacion.queryPlanificacionBeneficiario(idproyecto);
        if(listaPlanificacion.Count>0)
        {
            lblControl.Visible = false;
        }
        else
        {
            lblControl.Visible = true;
        }
        vistaActividades.DataSource = listaPlanificacion;
        vistaActividades.DataBind();

    }

    protected void vistaActividades_SelectedIndexChanged(object sender, EventArgs e)
    {
        crudPlanificacion.confirmarPlanificacion(Convert.ToInt16(vistaActividades.SelectedRow.Cells[1].Text));
        Response.Write("<script language=javascript>alert('DATOS REGISTRADOS');</script>");
        llenarTabla();
    }
}