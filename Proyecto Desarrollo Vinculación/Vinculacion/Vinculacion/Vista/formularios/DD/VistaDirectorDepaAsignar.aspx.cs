using ConexionDatos.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vista_formularios_VistaDirectorDepaAsignar : System.Web.UI.Page
{
    int idMaestro;
    String carrera;
    static String prueba;
    static List<Maestro> listaMaestro = new List<Maestro>();
    static List<Estudiante> listaEstudiante = new List<Estudiante>();
    protected void Page_Load(object sender, EventArgs e)
    {
        idMaestro = Convert.ToInt16(Session["idPersona"]);
        lblNombre.Text = Convert.ToString(Session["nombre"]) + Convert.ToString(Session["apellido"]);
        carrera = Convert.ToString(Session["carrera"]);
        if (!IsPostBack)
        {
            seleccionarAsignarTutorAcademico();
            seleccionaEstudiante();
        }
      

    }
    public void seleccionarAsignarTutorAcademico()
    {
        
        dropMaestro.Items.Clear();
        MaestroDAO maestroDAO = new MaestroDAO();
        listaMaestro = maestroDAO.queryDocentesProyecto();
        foreach (Maestro aux in listaMaestro)
        {
            dropMaestro.Items.Add(aux.idPersona+" "+aux.nombre+" "+aux.apellido);
        }
    }
    public void seleccionaEstudiante()
    {
        dropEstudiante.Items.Clear();
        EstudianteDAO estudianteDAO = new EstudianteDAO();
        listaEstudiante = estudianteDAO.queryEstudiante();
        foreach (Estudiante aux in listaEstudiante)
        {
            dropEstudiante.Items.Add(aux.idPersona+" "+aux.nombre + " " + aux.apellido);
        }
    }
    protected void dropEstudiante_SelectedIndexChanged(object sender, EventArgs e)
    {
        

    }

    protected void dropMaestro_SelectedIndexChanged(object sender, EventArgs e)
    {
    }

    protected void dropEstudianteSeleccionar(object sender, EventArgs e)
    {
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        EstudianteDAO estudianteDao = new EstudianteDAO();
        Estudiante estudiante = new Estudiante();
        Maestro maestro = new Maestro();
        String maestro1;
        String maestro2;
        String estudiante1;
        String estudiante2;
        
        foreach (Estudiante aux in listaEstudiante)
        {
            estudiante1 = dropEstudiante.SelectedItem.Value;
            estudiante2 = aux.idPersona + " " + aux.nombre + " " + aux.apellido;
            if ((dropEstudiante.SelectedItem.Value).Equals((aux.idPersona + " " + aux.nombre + " " + aux.apellido)))
            {
                estudiante = new Estudiante(aux.idProyecto,aux.idPersona,aux.numHorasCumplidas,aux.idPersona,aux.nombre,
                    aux.apellido);
                break;
            }
        }
        
        foreach (Maestro aux in listaMaestro)
        {
            maestro1 = dropMaestro.SelectedItem.Value;
            maestro2 = aux.idPersona + " " + aux.nombre + " " + aux.apellido;
            if ((dropMaestro.SelectedItem.Value).Equals(aux.idPersona + " " + aux.nombre + " " + aux.apellido))
            {
                maestro = new Maestro(aux.idProyecto, aux.idPersona, aux.cargo, aux.carrera, aux.nombre, aux.apellido);
                break;
            }
        }
        estudianteDao.registrarTutorAcademico(maestro,estudiante);
        seleccionaEstudiante();
        seleccionarAsignarTutorAcademico();
    }
}