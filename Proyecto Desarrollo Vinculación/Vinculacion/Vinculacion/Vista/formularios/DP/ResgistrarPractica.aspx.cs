using ConexionDatos.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vista_formularios_DP_ResgistrarPractica : System.Web.UI.Page
{
    int idMaestro;
    String carrera;
    int idproyecto;
    PersonaDAO crudPersona = new PersonaDAO();
    ActividadDAO crudActividad = new ActividadDAO();
    List<Persona> listaPersona = new List<Persona>();
    protected void Page_Load(object sender, EventArgs e)
    {
        idMaestro = Convert.ToInt16(Session["idPersona"]);
        lblNombre.Text = Convert.ToString(Session["nombre"]) + Convert.ToString(Session["apellido"]);
        carrera = Convert.ToString(Session["carrera"]);
        idproyecto = Convert.ToInt16(Session["idProyecto"]);
        if(!IsPostBack)
        {
            mostrarTablas();
        }
    }
    public void mostrarTablas()
    {
        listaPersona = crudPersona.validarDatos(idproyecto);
        vistaEstudiante.DataSource=listaPersona;
        vistaEstudiante.DataBind();
    }

    protected void calendario_SelectionChanged(object sender, EventArgs e)
    {
        lblFecha.Text = calendario.SelectedDate.ToString();
    }

    protected void vistaEstudiante_SelectedIndexChanged(object sender, EventArgs e)
    {
        lblNom.Text = vistaEstudiante.SelectedRow.Cells[3].Text;
        lblApe.Text = vistaEstudiante.SelectedRow.Cells[4].Text;
        lblIdPro.Text = vistaEstudiante.SelectedRow.Cells[7].Text;
    }

    protected void btnRegistrar_Click(object sender, ImageClickEventArgs e)
    {
        if(lblNom.Text.Equals("")||lblFecha.Text.Equals(""))
        {
            Response.Write("<script language=javascript>alert('SELECCIONE ESTUDIANTE O FECHA');</script>");
        }
        else
        {
            Actividad enviar = new Actividad(idproyecto, Convert.ToInt16(vistaEstudiante.SelectedRow.Cells[1].Text),
                lblFecha.Text, Convert.ToInt16(txtHoras.Text), txtDesc.Text);
            crudActividad.registrarHoras(enviar);

        }
    }
}