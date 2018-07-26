using ConexionDatos.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vista_formularios_VistaDirectorDepaMaestros : System.Web.UI.Page
{
    int idMaestro;
    String carrera;
    int idProyecto;
    List<Proyecto> listaProyecto = new List<Proyecto>();
    List<Persona> listaPersonas = new List<Persona>();
   
    protected void Page_Load(object sender, EventArgs e)
    {
        idMaestro = Convert.ToInt16(Session["idPersona"]);
        lblNombre.Text = Convert.ToString(Session["nombre"]) + Convert.ToString(Session["apellido"]);
        carrera = Convert.ToString(Session["carrera"]);
        seleccionarAsignarDocentes();
        mostrarProyectos();
    }
    public void mostrarProyectos()
    {
        ProyectoDAO proyecto = new ProyectoDAO();
        listaProyecto=proyecto.mostrarInformacion(carrera);
        dropProyecto.Items.Clear();
        foreach(Proyecto aux in listaProyecto)
        {
            dropProyecto.Items.Add(aux.nomProyecto);
        }
        foreach (Proyecto aux in listaProyecto)
        {
            if (aux.nomProyecto.Equals(dropProyecto.SelectedItem.Value))
            {
                idProyecto = aux.idProyecto;
                return;
            }
        }
    }
    public void seleccionarAsignarDocentes()
    {
        PersonaDAO persona = new PersonaDAO();
        listaPersonas = persona.queryDocente();
        vistaMaestros.AutoGenerateSelectButton = true;
        vistaMaestros.DataSource = listaPersonas;
        vistaMaestros.DataBind();

    }

    protected void seleccionarDocente(object sender, EventArgs e)
    {
        lblid.Text = vistaMaestros.SelectedRow.Cells[1].Text;
        lblnom.Text= vistaMaestros.SelectedRow.Cells[3].Text;
        lblape.Text= vistaMaestros.SelectedRow.Cells[4].Text;
        lblcarre.Text = carrera;
    }

    protected void btnAgregar_Click(object sender, ImageClickEventArgs e)
    {
        if(lblid.Text.Equals(""))
        {
            Response.Write("<script LANGUAGE='JavaScript' >alert('SELECCIONE MAESTRO')</script>");
            return;
        }
        try
        {
            Maestro maestroAux = new Maestro(idProyecto, Convert.ToInt32(lblid.Text), Convert.ToString(droCargo.SelectedItem.Value),
                        carrera);
            MaestroDAO ingresar = new MaestroDAO();
            ingresar.agregarMaestro(maestroAux);
            mostrarProyectos();
            Response.Redirect("VistaDirectorDepaMaestros.aspx");

        }
        catch(Exception ex)
        {
            Response.Write("<script LANGUAGE='JavaScript' >alert('Ingreso Fallido"+ex.Message+"')</script>");
        }
    }

    protected void dropProyecto_SelectedIndexChanged(object sender, EventArgs e)
    {
        foreach(Proyecto aux in listaProyecto)
        {
            if(aux.nomProyecto.Equals(dropProyecto.SelectedItem.Value))
            {
                idProyecto = aux.idProyecto;
                return;
            }
        }
    }
}