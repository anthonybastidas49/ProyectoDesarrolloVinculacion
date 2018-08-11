using ConexionDatos.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vista_formularios_ES_visualizarCalificaciones : System.Web.UI.Page
{
    int idEstudiante;
    int idproyecto;
    List<Calificacion> listaCalificacion = new List<Calificacion>();
    CalificacionDAO crudCalificacion = new CalificacionDAO();
    protected void Page_Load(object sender, EventArgs e)
    {
        idEstudiante = Convert.ToInt16(Session["idPersona"]);
        lblNombre.Text = Convert.ToString(Session["nombre"]) + Convert.ToString(Session["apellido"]);
        idproyecto = Convert.ToInt16(Session["idProyecto"]);
        if (!IsPostBack)
            llenarTabla();
    }
    public void llenarTabla()
    {
        listaCalificacion = crudCalificacion.extraerCalificación(idEstudiante, Convert.ToString(Session["nombre"]), Convert.ToString(Session["apellido"]));
        if (listaCalificacion.Count>0)
        {
            vistaCalificaciones.DataSource = listaCalificacion;
            vistaCalificaciones.DataBind();
            lblcontrol.Visible = false;
        }
        else
        {
            lblcontrol.Visible = true;
        }
        
    }
}