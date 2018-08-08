using ConexionDatos.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vista_formularios_DP_RegistrarCalificaciones : System.Web.UI.Page
{
    int idMaestro;
    String carrera;
    int idproyecto;
    List<Persona> listaPersona = new List<Persona>();
    PersonaDAO crudPersona=new PersonaDAO();
    CalificacionDAO crudCalificacio = new CalificacionDAO();
    protected void Page_Load(object sender, EventArgs e)
    {
        idMaestro = Convert.ToInt16(Session["idPersona"]);
        lblNombre.Text = Convert.ToString(Session["nombre"]) + Convert.ToString(Session["apellido"]);
        carrera = Convert.ToString(Session["carrera"]);
        idproyecto= Convert.ToInt16(Session["idProyecto"]);
        if(!IsPostBack)
        {
            mostrarTabla(); 

        }
    }
    public void mostrarTabla()
    {
        listaPersona = crudPersona.depurarLista(crudPersona.queryEstudiante(idproyecto),"DP");
        vistaEstudiantes.DataSource = listaPersona;
        vistaEstudiantes.DataBind();

    }

    protected void vistaEstudiantes_SelectedIndexChanged(object sender, EventArgs e)
    {
        lblId.Text= vistaEstudiantes.SelectedRow.Cells[1].Text;
        lblNom.Text= vistaEstudiantes.SelectedRow.Cells[3].Text;
        lblApellido.Text = vistaEstudiantes.SelectedRow.Cells[4].Text;
    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {

        if(lblId.Text.Equals(""))
        {
            Response.Write("<script language=javascript>alert('SELECCIONE ESTUDIANTE');</script>");
        }
        else
        {
            Calificacion calificacion = new Calificacion(Convert.ToInt32(vistaEstudiantes.SelectedRow.Cells[7].Text),
                Convert.ToInt32(vistaEstudiantes.SelectedRow.Cells[1].Text),Convert.ToInt32(rbtDominio.SelectedItem.Value),Convert.ToInt32(rbtRespeto.SelectedItem.Value),
                Convert.ToInt32(rbtPuntualidad.SelectedItem.Value),Convert.ToInt32(rbtHonestidad.SelectedItem.Value),"DP");
            crudCalificacio.envioDatosValidados(calificacion);
            lblApellido.Text = "";
            lblNom.Text = "";
            lblId.Text = "";
            rbtDominio.ClearSelection();
            rbtHonestidad.ClearSelection();
            rbtPuntualidad.ClearSelection();
            rbtRespeto.ClearSelection();
            mostrarTabla();
            Response.Write("<script language=javascript>alert('CALIFICACIÓN ENVIADA');</script>");
        }

    }
}