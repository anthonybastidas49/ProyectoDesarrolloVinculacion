using ConexionDatos.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vista_formularios_Formatos : System.Web.UI.Page
{
    List<Formato> listaFormato = new List<Formato>();
    FormatoDAO consultasFormato = new FormatoDAO();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            visualizarFormatos();
        }
    }
    public void visualizarFormatos()
    {
        listaFormato = consultasFormato.buscarDocumento();
        vistaDocumento.DataSource = listaFormato;
        vistaDocumento.DataBind();
    }

    protected void vistaDocumento_SelectedIndexChanged(object sender, EventArgs e)
    {
        String au = vistaDocumento.SelectedRow.Cells[3].Text;
        if (vistaDocumento.SelectedRow.Cells[3].Text.Equals("&nbsp;"))
        {
            Response.Write("<script type='text/javascript'> alert('FORMATO EN MANTENIMIENTO') </script>");
        }
        else
        {
            Formato auxiliarDescarga = consultasFormato.retorno(Convert.ToInt16(vistaDocumento.SelectedRow.Cells[1].Text));
            byte[] archivo = auxiliarDescarga.Documento;
            Response.Clear();
            Response.AddHeader("content-disposition", string.Format("attachment;filename={0}", "" + auxiliarDescarga.nomFormato + "." + auxiliarDescarga.Extension + ""));
            Response.ContentType = "application/octet-stream";
            Response.BinaryWrite(archivo);
            Response.End();
        }
        visualizarFormatos();

    }
}