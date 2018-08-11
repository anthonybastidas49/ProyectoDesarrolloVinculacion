using ConexionDatos.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vista_formularios_DP_ModificarPlanificacion : System.Web.UI.Page
{
    int idMaestro;
    String carrera;
    int idproyecto;
    List<Planificacion> listaPlanificacion = new List<Planificacion>();
    PlanificacionDAO crudPlanificaion = new PlanificacionDAO();
    protected void Page_Load(object sender, EventArgs e)
    {
        idMaestro = Convert.ToInt16(Session["idPersona"]);
        lblNombre.Text = Convert.ToString(Session["nombre"]) + Convert.ToString(Session["apellido"]);
        carrera = Convert.ToString(Session["carrera"]);
        idproyecto = Convert.ToInt16(Session["idProyecto"]);
        if (!IsPostBack)
            llenarTabla();
    }
    public void llenarTabla()
    {
        Calendar1.Enabled = false;
        Calendar2.Enabled = false;
        listaPlanificacion = crudPlanificaion.queryPlanificacion(idproyecto);
        if(listaPlanificacion.Count>0)
        {
            lblControl.Visible = false;
        }
        else
        {
            lblControl.Visible = true;
        }
        vistaPlanificacion.DataSource = listaPlanificacion;
        vistaPlanificacion.DataBind();

    }

    protected void modificarFechas(object sender, EventArgs e)
    {
        lblFechI.Text = vistaPlanificacion.SelectedRow.Cells[3].Text.ToString();
        lblFechaF.Text = vistaPlanificacion.SelectedRow.Cells[4].Text.ToString();
        Calendar1.Enabled = true;
        Calendar2.Enabled = true;
    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        lblFechI.Text = Calendar1.SelectedDate.ToString();
    }

    protected void Calendar2_SelectionChanged(object sender, EventArgs e)
    {
        lblFechaF.Text = Calendar2.SelectedDate.ToString();
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if(lblFechaF.Text.Equals("")||lblFechI.Text.Equals(""))
        {
            Response.Write("<script language=javascript>alert('SELECCIONE DATOS OBLIGATORIOS');</script>");
        }
        else
        {
            if(Calendar1.SelectedDate>Calendar2.SelectedDate)
            {
                Response.Write("<script language=javascript>alert('FECHAS INCORRECTAS');</script>");
            }
            else
            {
                
                crudPlanificaion.registrarCambios(Convert.ToString(Convert.ToDateTime(lblFechI.Text).ToString("yyyy-MM-dd").ToString()), Convert.ToString(Convert.ToDateTime(lblFechaF.Text).ToString("yyyy-MM-dd").ToString()), Convert.ToInt16(vistaPlanificacion.SelectedRow.Cells[1].Text));
                lblFechaF.Text = "";
                lblFechI.Text = "";
                llenarTabla();
            }
            
        }
    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        if (lblFechaF.Text.Equals("") || lblFechI.Text.Equals(""))
        {
            Response.Write("<script language=javascript>alert('SELECCIONE DATOS OBLIGATORIOS');</script>");
        }
        else
        {
            crudPlanificaion.confirmarEliminacion(Convert.ToInt16(vistaPlanificacion.SelectedRow.Cells[1].Text));
            lblFechaF.Text = "";
            lblFechI.Text = "";
            llenarTabla();
        }
    }
}