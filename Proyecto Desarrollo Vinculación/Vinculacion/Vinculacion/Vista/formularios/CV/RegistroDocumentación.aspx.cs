using ConexionDatos.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vista_formularios_CV_RegistroDocumentación : System.Web.UI.Page
{
    ProyectoDAO crudProyecto = new ProyectoDAO();
    FormatoDAO crudFormato = new FormatoDAO();
    PersonaDAO crudPersona = new PersonaDAO();
    DocumentoDAO crudDocumento = new DocumentoDAO();
    List<Persona> listaPersona = new List<Persona>();
    List<Documento> listaDocumentos = new List<Documento>();
    int idMaestro;
    static int idEstudainte;
    static int idProyecto;
    String carrera;
    protected void Page_Load(object sender, EventArgs e)
    {
        idMaestro = Convert.ToInt16(Session["idPersona"]);
        lblNombre.Text = Convert.ToString(Session["nombre"]) + Convert.ToString(Session["apellido"]);
        carrera = Convert.ToString(Session["carrera"]);
        if(!IsPostBack)
        {
            actualizarLista();
        }
        

    }
    public void actualizarLista()
    {
        lstEstudiantes.Items.Clear();
        List<int> listaId = new List<int>();
        listaId = crudProyecto.idProyecto(carrera);
        listaPersona=crudPersona.mostrarEstudiantes(listaId);
        foreach(Persona aux in listaPersona)
        {
            lstEstudiantes.Items.Add(aux.idPersona + aux.NOMBREPERSONA + aux.APELLIDOPERSONA);
        }
    }
    public void listaPersonasFun()
    {
        List<int> listaId = new List<int>();
        listaId = crudProyecto.idProyecto(carrera);
        listaPersona = crudPersona.mostrarEstudiantes(listaId);
    }
    public void selesccionarEstudiante()
    {
        tabla();
        
    }
    public void tabla()
    {
        listaPersonasFun();
        foreach (Persona aux in listaPersona)
        {
            if (Convert.ToString(aux.idPersona + aux.NOMBREPERSONA + aux.APELLIDOPERSONA).Equals(lstEstudiantes.SelectedItem.Value))
            {
                idEstudainte = aux.idPersona;
                break;
            }
        }
        if (idEstudainte != 0)
        {
            listaDocumentos = crudDocumento.enviarEstadoDocumentos(idEstudainte);
            if (listaDocumentos.Count() == 0)
            {
                Label1.Visible = true;
                vistaEstado.DataSource = null;
                vistaEstado.DataBind();
            }
            else
            {
                vistaEstado.DataSource = listaDocumentos;
                vistaEstado.DataBind();
                Label1.Visible = false;
            }
        }
        else
        {
            Response.Write("<script type='text/javascript'> alert('NO SELECCIONO NINGUN ESTUDIANTE') </script>");
        }
        
    }

    protected void lstEstudiantes_SelectedIndexChanged(object sender, EventArgs e)
    {
        selesccionarEstudiante();
    }

    protected void btnSubir_Click(object sender, ImageClickEventArgs e)
    {
        if (documento.HasFile)
        {
            HttpPostedFile file = documento.PostedFile;
            string nombre = file.FileName.Substring(
          0, file.FileName.LastIndexOf("."));
            string ext = file.FileName;
            ext = ext.Substring(ext.LastIndexOf(".") + 1).ToLower();
            string[] formatos =
          new string[] { "pdf", "docx", "xlsx" };
            if (Array.IndexOf(formatos, ext) < 0)
                Response.Write("<script type='text/javascript'> alert('NO VALIDO') </script>");
            byte[] nuevoFormato = new byte[file.InputStream.Length];
            file.InputStream.Read(nuevoFormato, 0, nuevoFormato.Length);
            idProyecto = crudPersona.idPoryecto(idEstudainte);
            Documento envioDocumento = new Documento(idProyecto, idEstudainte, nombre, "T", nuevoFormato, ext);
            crudDocumento.registrarDocumento(envioDocumento);
            Response.Write("<script type='text/javascript'> alert('Documendo Correcto') </script>");
        }
        else
        {
            Response.Write("<script type='text/javascript'> alert('NO SELECCIONO NINGUN ARCHIVO') </script>");
        }
        actualizarLista();
    }
}