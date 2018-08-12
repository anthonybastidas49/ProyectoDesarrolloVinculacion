using ConexionDatos.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vista_formularios_Solicitud : System.Web.UI.Page
{
    Persona solicitante = new Persona();
    PersonaDAO crudPersona = new PersonaDAO();
    ProyectoDAO crudProyecto = new ProyectoDAO();
    EstudianteDAO crudEstudiante = new EstudianteDAO();
    List<Proyecto> listaProyecto = new List<Proyecto>();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            llenarTabla();
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        solicitante = crudPersona.extraerSolicitante(TextBox1.Text);
        if(solicitante!=null)
        {
            lblNom.Text = solicitante.NOMBREPERSONA;
            lblId.Text = solicitante.idPersona.ToString();
            lblCi.Text = solicitante.CI_PER;
            lblApe.Text = solicitante.APELLIDOPERSONA;

            

        }
        else
        {
            Response.Write("<script language=javascript>alert('NO REGISTRADO');</script>");
            TextBox1.Text = "";
        }
    }
    public void llenarTabla()
    {
        listaProyecto = crudProyecto.extraerProyecto();
        vistaProyecto.DataSource = listaProyecto;
        vistaProyecto.DataBind();
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        if(!lblApe.Text.Equals("")&&!lblIdPr.Text.Equals(""))
        {
            Estudiante enviar = new Estudiante(Convert.ToInt16(lblIdPr.Text), Convert.ToInt16(lblId.Text),
                0,0);
            crudEstudiante.registrarEstudiante(enviar);
            Response.Write("<script language=javascript>alert('REGISTRO EXITOSO');</script>");
            TextBox1.Text = "";
            lblNom.Text = "";
            lblIdPr.Text = "";
            lblId.Text = "";
            lblApe.Text = "";
            lblCi.Text = "";

        }
        else
        {
            Response.Write("<script language=javascript>alert('NO REGISTRADO');</script>");
        }
    }

    protected void vistaProyecto_SelectedIndexChanged(object sender, EventArgs e)
    {
        lblIdPr.Text = vistaProyecto.SelectedRow.Cells[1].Text;
    }
}