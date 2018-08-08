using ConexionDatos.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vista_formularios_DP_ModificarPractica : System.Web.UI.Page
{
    int idMaestro;
    String carrera;
    int idproyecto;
    List<Persona> listaPersona = new List<Persona>();
    List<Actividad> listaActividad = new List<Actividad>();
    PersonaDAO crudPersona = new PersonaDAO();
    ActividadDAO crudActividad = new ActividadDAO();
    protected void Page_Load(object sender, EventArgs e)
    {
        idMaestro = Convert.ToInt16(Session["idPersona"]);
        lblNombre.Text = Convert.ToString(Session["nombre"]) + Convert.ToString(Session["apellido"]);
        carrera = Convert.ToString(Session["carrera"]);
        idproyecto = Convert.ToInt16(Session["idProyecto"]);
        if (! IsPostBack)
            llenarEstudiantes();


    }
    public void llenarEstudiantes()
    {
        listaPersona = crudPersona.validarDatos(idproyecto);
        vistaEstudiantes.DataSource = listaPersona;
        vistaEstudiantes.DataBind();
        txtDescrioción.Enabled = false;
        txtHoras.Enabled = false;
    }
    public void llenarActividad(int idPersona)
    {
        listaActividad = crudActividad.visualizarCalendario(idPersona);
        if(listaActividad.Count<1)
        {
            lblControl.Visible = true;
        }
        else
        {
            lblControl.Visible = false;
        }
        vistaActividades.DataSource = listaActividad;
        vistaActividades.DataBind();
    }

    protected void SeleccionarEstudiante(object sender, EventArgs e)
    {
        llenarActividad(Convert.ToInt16(vistaEstudiantes.SelectedRow.Cells[1].Text));
    }

    protected void seleccionarCalendario(object sender, EventArgs e)
    {
        txtHoras.Enabled = true;
        txtDescrioción.Enabled = true;
        lblNom.Text = vistaEstudiantes.SelectedRow.Cells[3].Text;
        lblApellido.Text= vistaEstudiantes.SelectedRow.Cells[4].Text;
        txtHoras.Text = vistaActividades.SelectedRow.Cells[5].Text;
        txtDescrioción.Text= vistaActividades.SelectedRow.Cells[6].Text;

    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Actividad enviar = new Actividad(Convert.ToInt16(vistaActividades.SelectedRow.Cells[1].Text),
                Convert.ToInt16(vistaActividades.SelectedRow.Cells[2].Text),Convert.ToInt16(vistaActividades.SelectedRow.Cells[3].Text),
                Convert.ToString(vistaActividades.SelectedRow.Cells[4].Text),Convert.ToInt16(txtHoras.Text),
                txtDescrioción.Text);
        crudActividad.registrarCambios(enviar,Convert.ToInt16(vistaActividades.SelectedRow.Cells[5].Text));
        llenarEstudiantes();
        vistaActividades.DataSource = null;
        vistaActividades.DataBind();
        lblApellido.Text = "";
        txtDescrioción.Text = "";
        txtHoras.Text = "";
        lblNom.Text = "";

    }

    protected void seleccionEliminarActividad(object sender, GridViewDeleteEventArgs e)
    {
        
    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Actividad enviar = new Actividad(Convert.ToInt16(vistaActividades.SelectedRow.Cells[1].Text),
                Convert.ToInt16(vistaActividades.SelectedRow.Cells[2].Text), Convert.ToInt16(vistaActividades.SelectedRow.Cells[3].Text),
                Convert.ToString(vistaActividades.SelectedRow.Cells[4].Text), Convert.ToInt16(vistaActividades.SelectedRow.Cells[5].Text),
                Convert.ToString(vistaActividades.SelectedRow.Cells[6].Text));
        crudActividad.confirmarEliminacion(enviar);
        llenarEstudiantes();
        vistaActividades.DataSource = null;
        vistaActividades.DataBind();
    }
}