using ConexionDatos.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using iTextSharp.text;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;
using System.Web.UI.WebControls;
using System.IO;

public partial class Vista_formularios_CV_Certificado : System.Web.UI.Page
{
    int idMaestro;
    static int idEstudainte;
    String carrera;
    List<Persona> listaPersona = new List<Persona>();
    PersonaDAO crudPersona = new PersonaDAO();
    EstudianteDAO crudEstudiante = new EstudianteDAO();
    ProyectoDAO crudProyecto = new ProyectoDAO();
    MaestroDAO crudMaestro = new MaestroDAO();
    protected void Page_Load(object sender, EventArgs e)
    {
        idMaestro = Convert.ToInt16(Session["idPersona"]);
        lblNombre.Text = Convert.ToString(Session["nombre"]) + Convert.ToString(Session["apellido"]);
        carrera = Convert.ToString(Session["carrera"]);
        if (!IsPostBack)
            ingresoListadoDisponible();
    }
    public void ingresoListadoDisponible()
    {
        lblControl.Visible = false;
        listaPersona = crudPersona.registrarCertificadosDisponibles(carrera);
        if (listaPersona.Count > 0)
        {
            lblControl.Visible = false;
        }
        else
        {
            lblControl.Visible = true;
        }
        vistaCertificaciones.DataSource = listaPersona;
        vistaCertificaciones.DataBind();
    }


    protected void vistaCertificaciones_SelectedIndexChanged(object sender, EventArgs e)
    {
        lblNom.Text = vistaCertificaciones.SelectedRow.Cells[3].Text;
        lblAple.Text = vistaCertificaciones.SelectedRow.Cells[4].Text;
        lblNum.Text = crudEstudiante.numHoras(Convert.ToInt16(vistaCertificaciones.SelectedRow.Cells[1].Text)).ToString();
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (lblNom.Text.Equals(""))
        {
            Response.Write("<script language=javascript>alert('SELECCIONAR ESTUDIANTE');</script>");
        }
        else
        {
            generatePdf();
            
        }
    } 
    public void generatePdf()
    {
        Document pdfDoc = new Document(PageSize.A4, 10, 10, 10, 10);
        Proyecto proyecto = crudProyecto.nomProyecto(Convert.ToInt16(vistaCertificaciones.SelectedRow.Cells[1].Text));
        String nombreProyecto =proyecto.nomProyecto;
        try
        {
            PdfWriter.GetInstance(pdfDoc, System.Web.HttpContext.Current.Response.OutputStream);
            DateTime thisDay = DateTime.Today;
            //Open PDF Document to write data 
            pdfDoc.Open();
            string cadenaFinal = "";
            String encabezado="";
            String firma = "<br><br><br><br><br><br><p>___________________________&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;___________________________<br>" +
                "&nbsp;&nbsp;&nbsp;Ing:" + Convert.ToString(crudMaestro.nombreDirector(Convert.ToInt16(vistaCertificaciones.SelectedRow.Cells[7].Text)))
                + "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Ing:" + lblNombre.Text+"" +
                "<br>&nbsp;&nbsp;&nbsp;DIRECTOR DEL PROYECTO"
                + "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;DIRECTO DE VINCULACIÓN</p>";
            String tituloUniversidad= "<br><br><br><br><p align='center' FONT FACE='times new roman'FONT SIZE=5><b>UNIVERSIDAD DE LAS FUERZAS ARMADAS ESPE <br>" +
                "VIERRECTORADO DE INVESTIGACIÓN, INNOVACIÓN Y TRASNFERENCIA DE TECNOLOGÍA <br>" +
                "UNIDAD DE VINCULACION CON LA SOCIEDAD</b></p><br><br>";
            String cuerpo;
            string pathEspe = Server.MapPath("/Imagenes/Logo_ESPE.png");
            string pathVincuacion = Server.MapPath("/Imagenes/logo-vinculacion.png");
            encabezado = "<TABLE><TR><TD><img src='" + pathEspe + "' Height='100' Width='100'/>" +
                "</TD><TD><TD></TD></TD><TD><img src='" + pathVincuacion + "' Height='100' Width='100'/></TD></TR></TABLE>";
            cuerpo = "<br><br><p FONT FACE='times new roman' align='justify'FONT SIZE=5>Señor <b>" + vistaCertificaciones.SelectedRow.Cells[3].Text + " "+ vistaCertificaciones.SelectedRow.Cells[4].Text + "</b>" +
                ", con cédula de ciudadanía, <b>"+ vistaCertificaciones.SelectedRow.Cells[2].Text + "</b></br>." +
                "Quien participo en el Proyecto de Vinculación con la Sociedad, "+nombreProyecto+" " +
                "cumpliendo con un total de<b> "+Convert.ToString(crudEstudiante.numHoras(Convert.ToInt16(vistaCertificaciones.SelectedRow.Cells[1].Text)))+"" +
                " </b>horas de servicio a la comunidad, a partir del <b> "+ Convert.ToString(Convert.ToDateTime(proyecto.fechaInicio).ToString("yyyy-MM-dd").ToString()) + "</b>, hasta <b>"+Convert.ToString(thisDay.ToString("d"))+ "</b>.</p>";
                
            //encabezado = "<img src='" + pathEspe + "' Height='320' Width='350'/>";
            //cadenaFinal += "<TABLE BORDER='1'><TR><TD>NOMBRE :</TD><TD>GILMER</TD></TR>" +"<br></br>"+
            //                "<TR><TD>APELLIDO :</TD><TD>MELGAREJO LIMAS</TD></TR>" +
            //                "<TR><TD>EDAD :</TD><TD>24</TD></TR></TABLE>";
            cadenaFinal = encabezado+tituloUniversidad+cuerpo+firma;
            //Assign Html content in a string to write in PDF 
            string strContent = cadenaFinal;

            //Read string contents using stream reader and convert html to parsed conent 
            var parsedHtmlElements = HTMLWorker.ParseToList(new StringReader(strContent), null);

            //Get each array values from parsed elements and add to the PDF document 
            foreach (var htmlElement in parsedHtmlElements)
                pdfDoc.Add(htmlElement as IElement);

            //Close your PDF 
            pdfDoc.Close();

            Response.ContentType = "application/pdf";

            //Set default file Name as current datetime 
            Response.AddHeader("content-disposition", "attachment; filename=certificadoVinculación.pdf");
            System.Web.HttpContext.Current.Response.Write(pdfDoc);

            Response.Flush();
            Response.End();

        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }
    }
}