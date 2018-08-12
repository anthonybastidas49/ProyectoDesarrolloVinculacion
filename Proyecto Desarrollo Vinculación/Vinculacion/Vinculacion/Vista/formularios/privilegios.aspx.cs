using ConexionDatos.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vista_formularios_privilegios : System.Web.UI.Page
{
    PersonaDAO crudPersona = new PersonaDAO();
    ProyectoDAO crudProyecto = new ProyectoDAO();
    MaestroDAO crudMaestro = new MaestroDAO();
    List<Persona> listaPersona = new List<Persona>();
    List<Proyecto> listaProyecto = new List<Proyecto>();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            llenarTabla();
    }
    public void llenarTabla()
    {
        listaPersona = crudPersona.extraerMaestrosDisponibles();
        vistaMaestro.DataSource = listaPersona;
        vistaMaestro.DataBind();
        listaProyecto = crudProyecto.extraerProyecto();
        proyecto.DataSource = listaProyecto;
        proyecto.DataBind();
        
    }

    protected void vistaMaestro_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Maestro enviar = new Maestro(Convert.ToInt16(proyecto.SelectedRow.Cells[1].Text),
            Convert.ToInt16(vistaMaestro.SelectedRow.Cells[1].Text),proyecto.SelectedRow.Cells[8].Text);
        crudMaestro.insertarDD(enviar);
        Response.Write("<script language=javascript>alert('DATOS REGISTRADOS');</script>");
        llenarTabla();

    }
}