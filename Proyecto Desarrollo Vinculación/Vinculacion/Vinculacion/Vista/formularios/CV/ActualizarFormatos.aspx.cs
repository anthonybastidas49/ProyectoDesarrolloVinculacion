using ConexionDatos.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vista_formularios_CV_ActualizarFormatos : System.Web.UI.Page
{
    int idMaestro;
    String carrera;
    List<Formato> listaForamto = new List<Formato>();
    FormatoDAO consultasFormato = new FormatoDAO();
    protected void Page_Load(object sender, EventArgs e)
    {
        idMaestro = Convert.ToInt16(Session["idPersona"]);
        lblNombre.Text = Convert.ToString(Session["nombre"]) + Convert.ToString(Session["apellido"]);
            actualizarDocumento();
    }
    public void actualizarDocumento()
    {
        
        listaForamto = consultasFormato.buscarDocumento();
        vistaDocumentos.DataSource = listaForamto;
        vistaDocumentos.DataBind();
    }


    protected void vistaDocumentos_SelectedIndexChanged(object sender, EventArgs e)
    {
        lblId.Text= vistaDocumentos.SelectedRow.Cells[1].Text;
        lblNom.Text = vistaDocumentos.SelectedRow.Cells[2].Text;
    }

    protected void btnActualizar_Click(object sender, ImageClickEventArgs e)
    {
        if (documento.HasFile)
        {
            HttpPostedFile file = documento.PostedFile;
            foreach (Formato aux in listaForamto)
            {
                if (aux.idFormato.Equals(Convert.ToInt32(lblId.Text)))
                {
                    string ext = file.FileName;
                    ext = ext.Substring(ext.LastIndexOf(".") + 1).ToLower();
                    string[] formatos =
                  new string[] { "pdf","docx","xlsx" };
                    if (Array.IndexOf(formatos, ext) < 0)
                        Response.Write("<script type='text/javascript'> alert('NO VALIDO') </script>");
                    byte[] nuevoFormato = new byte[file.InputStream.Length];
                    file.InputStream.Read(nuevoFormato, 0, nuevoFormato.Length);
                    Formato envioFormato = new Formato(aux.idFormato, aux.nomFormato, nuevoFormato,ext);

                    consultasFormato.registrarNuevoDocumento(envioFormato);
                    break;
                }
            }
        }
        else
        {
            Response.Write("<script type='text/javascript'> alert('NO SELECCIONO NINGUN ARCHIVO') </script>");
        }
        lblId.Text = "";
        lblNom.Text = "";
        actualizarDocumento();
    }

    protected void btnDescargar_Click(object sender, ImageClickEventArgs e)
    {
        if(lblId.Text.Equals(""))
        {
            Response.Write("<script type='text/javascript'> alert('NO SELECCIONO NINGUN ARCHIVO') </script>");
        }
        else
        {
            if (vistaDocumentos.SelectedRow.Cells[3].Text.Equals("&nbsp;"))
            {
                Response.Write("<script type='text/javascript'> alert('FORMATO EN MANTENIMIENTO') </script>");
            }
            else
            {
                Formato auxiliarDescarga = consultasFormato.retorno(Convert.ToInt16(lblId.Text));
                byte[] archivo = auxiliarDescarga.Documento;
                Response.Clear();

                Response.AddHeader("content-disposition", string.Format("attachment;filename={0}", "" + auxiliarDescarga.nomFormato + "." + auxiliarDescarga.Extension + ""));
                Response.ContentType = "application/octet-stream";
                Response.BinaryWrite(archivo);
                Response.End();
            }
            
        }
        
    }
}