using ConexionDatos.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vista_formularios_ProyectoAdminaspx :  System.Web.UI.Page
{
    ProyectoDAO crudProyecto = new ProyectoDAO();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Proyecto enviar = new Proyecto(Convert.ToString(txtNombre.Text), Convert.ToDateTime(lblIn.Text),
            txtComu.Text,Convert.ToInt16(txtNumE.Text), Convert.ToDateTime(lblFin.Text),Convert.ToInt16(txtNumP.Text),txtCarrera.Text);
        crudProyecto.insertarProyecto(enviar);
        Response.Write("<script language=javascript>alert('PROYECTO REGISTRADO');</script>");
        lblIn.Text = "";
        lblFin.Text = "";
        txtNumP.Text = "";
        txtNumE.Text = "";
        txtNombre.Text = "";
        txtCarrera.Text = "";
        txtComu.Text = "";

        
    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        lblIn.Text = Calendar1.SelectedDate.ToString();
    }

    protected void Calendar2_SelectionChanged(object sender, EventArgs e)
    {
        lblFin.Text = Calendar2.SelectedDate.ToString();
    }
}