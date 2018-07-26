using ConexionDatos.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vista_inforProyectos : System.Web.UI.Page
{
    static List<Proyecto> lista;
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void btnConsultar_Click(object sender, ImageClickEventArgs e)
    {
        
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void lstPeriodo_SelectedIndexChanged(object sender, EventArgs e)
    {
    }

    protected void lstProyecto_SelectedIndexChanged(object sender, EventArgs e)
    {
        foreach(Proyecto aux in lista)
        {
            if(aux.nomProyecto.Equals(lstProyecto.SelectedItem.Value))
            {
                List<Proyecto> listaTabla=new List<Proyecto>();
                listaTabla.Add(aux);
                vistaProyecto.DataSource = listaTabla;
                vistaProyecto.DataBind();
            }
        }
            
    }

    protected void lstDepartamento_SelectedIndexChanged(object sender, EventArgs e)
    {
        ProyectoDAO consultar = new ProyectoDAO();
        String query="";
        switch(lstDepartamento.SelectedItem.Value)
        {
            case "Departamento de ciencias de la computación":
                query = "sistemas";
                break;
            case "Ciencias de la Tierra":
                query = "tierra";
                break;
            case "Ciencias Electricas y Electronicas":
                query = "electronica";
                break;
            default:
                query = "";
                break;
        }

            lstProyecto.Items.Clear();
            lstProyecto.Items.Add("SELECCIONAR PROYECTO");
        lista = consultar.mostrarInformacion(query);
        foreach (Proyecto aux in lista)
        {
            lstProyecto.Items.Add(aux.nomProyecto);
        }
        

    }

    protected void Timer1_Tick(object sender, EventArgs e)
    {
        lstProyecto.Items.Add(Convert.ToString(lstDepartamento.SelectedItem.Value));
    }

    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }

    protected void timerLista_Tick(object sender, EventArgs e)
    {
   
    }
}