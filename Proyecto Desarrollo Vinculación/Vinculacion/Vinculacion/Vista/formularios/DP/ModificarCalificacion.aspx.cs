using ConexionDatos.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vista_formularios_DP_ModificarCalificacion : System.Web.UI.Page
{
    int idMaestro;
    String carrera;
    int idproyecto;
    CalificacionDAO crudCalificacion = new CalificacionDAO();
    List<Calificacion> listaCalificacion = new List<Calificacion>();
    protected void Page_Load(object sender, EventArgs e)
    {
        idMaestro = Convert.ToInt16(Session["idPersona"]);
        lblNombre.Text = Convert.ToString(Session["nombre"]) + Convert.ToString(Session["apellido"]);
        carrera = Convert.ToString(Session["carrera"]);
        idproyecto = Convert.ToInt16(Session["idProyecto"]);
        if (!IsPostBack)
            mostrarTabla();

    }
    public void mostrarTabla()
    {
        listaCalificacion = crudCalificacion.buscarEstudiantes(idproyecto, "DP");
        if (listaCalificacion.Count == 0)
            lbltabla.Visible = true;
        vistaCalificaciones.DataSource = listaCalificacion;
        vistaCalificaciones.DataBind();
    }

    protected void editarNota(object sender, GridViewEditEventArgs e)
    {

    }

    protected void vistaCalificaciones_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        
    }

    protected void vistaCalificaciones_SelectedIndexChanged(object sender, EventArgs e)
    {
        lblId.Text = vistaCalificaciones.SelectedRow.Cells[3].Text;
        lblNom.Text= vistaCalificaciones.SelectedRow.Cells[9].Text;
        lblApellido.Text= vistaCalificaciones.SelectedRow.Cells[10].Text;
        lblDon.Text = vistaCalificaciones.SelectedRow.Cells[4].Text;
        lblRes.Text = vistaCalificaciones.SelectedRow.Cells[5].Text;
        lblPun.Text = vistaCalificaciones.SelectedRow.Cells[6].Text;
        lblHones.Text = vistaCalificaciones.SelectedRow.Cells[7].Text;


    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if(lblId.Text.Equals(""))
        {
            Response.Write("<script language=javascript>alert('Seleccione un Estudiante');</script>");
        }
        else
        {
            Calificacion enviar = new Calificacion(Convert.ToInt16(vistaCalificaciones.SelectedRow.Cells[1].Text),
                Convert.ToInt32(rbtDominio.SelectedItem.Value), Convert.ToInt32(rbtRespeto.SelectedItem.Value),
                Convert.ToInt32(rbtPuntualidad.SelectedItem.Value), Convert.ToInt32(rbtHonestidad.SelectedItem.Value));
            crudCalificacion.envioDatosValidos(enviar);
            Response.Write("<script language=javascript>alert('Datos Modificados');</script>");
            lblApellido.Text = "";
            lblId.Text = "";
            lblNom.Text = "";
            lblHones.Text = "";
            lblDon.Text = "";
            lblPun.Text = "";
            lblRes.Text = "";
            rbtDominio.ClearSelection();
            rbtHonestidad.ClearSelection();
            rbtPuntualidad.ClearSelection();
            rbtRespeto.ClearSelection();
            mostrarTabla();
        }
    }
}