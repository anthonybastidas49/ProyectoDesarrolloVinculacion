using ConexionDatos;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Prueba : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void cargarImagen_Click(object sender, EventArgs e)
    {
            if (fileUploader1.HasFile)
            {
                // Se verifica que la extensión sea de un formato válido
                string ext = fileUploader1.PostedFile.FileName;
                ext = ext.Substring(ext.LastIndexOf(".") + 1).ToLower();
                string[] formatos =
                  new string[] { "jpg", "jpeg", "bmp", "png", "gif","pdf"};
                if (Array.IndexOf(formatos, ext) < 0)
                    Response.Write("<script type='text/javascript'> alert('NO VALIDO') </script>");
                else if (disco.Checked)
                    Response.Write("<script type='text/javascript'> alert('archivo') </script>");
                else
                    GuardarBD(fileUploader1.PostedFile);
            }
            else
                Response.Write("<script type='text/javascript'> alert('DISCO') </script>");
    }
    private static void GuardarBD(HttpPostedFile file)
    {
        // Nombre de la imagen
        string nombre = file.FileName.Substring(
          0, file.FileName.LastIndexOf("."));
        // Extensión del archivo
        string ext = nombre.Substring(nombre.LastIndexOf(".") + 1);
        // Tipo de contenido
        string contentType = file.ContentType;
        // Imagen convertida a arreglo de bytes
        byte[] imagen = new byte[file.InputStream.Length];
        file.InputStream.Read(imagen, 0, imagen.Length);

        // Se insertan los valores en la base de datos
        ConexionDB c = new ConexionDB();
        SqlConnection cnx = c.conectar;
        SqlCommand cmd = cnx.CreateCommand();
        cmd.CommandText="INSERT INTO FORMATO VALUES(@nombre,@imagen)";
        cmd.Parameters.AddWithValue("@nombre", "hola");
        cmd.Parameters.AddWithValue("@imagen", imagen);
        cmd.ExecuteNonQuery();

        //cmd.CommandText =
        //  "INSERT INTO Imagenes (nombre, imagen, extension, contentType) " +
        //  "VALUES (@nombre, @imagen, @ext, @contentType)";
        //INSERT INTO FORMATO(NOMFORMATO, DOCUMENTO, contentType)
        //cmd.Parameters.AddWithValue("@nombre", nombre);
        //cmd.Parameters.AddWithValue("@imagen", imagen);
        //cmd.Parameters.AddWithValue("@ext", ext);
        //cmd.Parameters.AddWithValue("@contentType", contentType);
        //CMD

       
    }
    public byte[] retorno(int id)
    {
        ConexionDB c = new ConexionDB();
        SqlConnection cnx = c.conectar;
        String query = "SELECT DOCUMENTO FROM FORMATO WHERE IDFORMATO = "+id+"";
        SqlCommand cmd = new SqlCommand(query, cnx);
        SqlDataReader reader = cmd.ExecuteReader();
        if (reader.Read())
        {
            return (byte[])reader[0];
        }
        else
            return null;

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        int id = 12;

        byte[] archivo = retorno(13);   

        Response.Clear();

        Response.AddHeader("content-disposition", string.Format("attachment;filename={0}", "nombrearch.pdf"));
        Response.ContentType = "application/octet-stream";

        Response.BinaryWrite(archivo);
        Response.End();
    }

}