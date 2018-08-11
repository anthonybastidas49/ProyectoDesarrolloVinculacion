using ConexionDatos.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vista_formularios_ES_ConsultaActividad : System.Web.UI.Page
{
    int idEstudiante;
    int idproyecto;
    List<Actividad> listaActividad = new List<Actividad>();
    ActividadDAO crudActividad = new ActividadDAO();
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
        listaActividad = crudActividad.extraerActividades(idEstudiante);
        if(listaActividad.Count>0)
        {
            lblControl.Visible = false;
            vistaActividades.DataSource = listaActividad;
            vistaActividades.DataBind();
        }
        else
        {
            lblControl.Visible = true;
        }
    }
}