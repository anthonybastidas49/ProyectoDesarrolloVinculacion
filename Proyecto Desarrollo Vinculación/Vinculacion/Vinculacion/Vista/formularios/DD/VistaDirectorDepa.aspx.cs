using ConexionDatos.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vista_VistaDirectorDepa : System.Web.UI.Page
{
     int idMaestro;
     String carrera;
    comunicacion envioCorreos = new comunicacion();
    SolicitudDAO solicitud = new SolicitudDAO();
    PersonaDAO persona = new PersonaDAO();
    List<Solicitud> listaS = new List<Solicitud>();
    List<Persona> listaP = new List<Persona>();
    ProyectoDAO crudProyecto = new ProyectoDAO();
    Proyecto enviarNombre = new Proyecto();
    protected void Page_Load(object sender, EventArgs e)
    {
        idMaestro = Convert.ToInt16( Session["idPersona"]);
        lblNombre.Text = Convert.ToString(Session["nombre"])+ Convert.ToString(Session["apellido"]);
        carrera = Convert.ToString(Session["carrera"]);
            visializarPeticiones();
    }

    protected void selectedIndexChange(object sender, EventArgs e)
    {
        lblid.Text = vistaSolicitud.SelectedRow.Cells[1].Text;
        lblnom.Text = vistaSolicitud.SelectedRow.Cells[3].Text;
        lblape.Text = vistaSolicitud.SelectedRow.Cells[4].Text;
        lblced.Text = vistaSolicitud.SelectedRow.Cells[2].Text;
        lblcar.Text = carrera;
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
            if(lblid.Text != "" && lblProyecto.Text!="")
        {
            Persona aux = new Persona();
            Solicitud sol = new Solicitud();
            foreach (Persona perAux in listaP)
            {
                if (Convert.ToString(perAux.idPersona).Equals(lblid.Text))
                {
                    aux = perAux;
                    break;
                }
                else { };
                
            }
            foreach (Solicitud solAux in listaS)
            {
                if (Convert.ToString(solAux.IDPERSONA).Equals(lblid.Text))
                {
                    sol = solAux;
                }
                else { };
            }
            
            enviarNombre = crudProyecto.nomProyecto(Convert.ToInt16(lblProyecto.Text));
            envioCorreos.enviarMensaje(vistaSolicitud.SelectedRow.Cells[5].Text,enviarNombre.nomProyecto);
            solicitud.aprobarSolicitud(aux, sol);
            Response.Write("<script language=javascript>alert('SOLICITUD APROBADA');</script>");
            visializarPeticiones();
            limpiarlabel();

        }
        else
        {
            Response.Write("<script language=javascript>alert('No se selecciono ninguna solicitud');</script>");
        }
        
        
    }
    public void visializarPeticiones()
    {
        listaS = solicitud.extraerInformacion(carrera);
        listaP = persona.extraerInformación(listaS);
        vistaSolicitud.DataSource = listaP;
        vistaSolicitud.DataBind();
        vistaProyecto.DataSource = listaS;
        vistaProyecto.DataBind();
    }
    public void limpiarlabel()
    {
        lblid.Text = "";
        lblced.Text = "";
        lblcar.Text = "";
        lblnom.Text = "";
        lblape.Text = "";
        lblProyecto.Text = "";
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Solicitud sol = new Solicitud();
        if (lblid.Text != "")
        {
            foreach (Solicitud solAux in listaS)
            {
                if (Convert.ToString(solAux.IDPERSONA).Equals(lblid.Text))
                {
                    sol = solAux;
                }
            }
            solicitud.eliminarSolicitud(sol);
            visializarPeticiones();
            limpiarlabel();
        }
        else
        {
            Response.Write("<script language=javascript>alert('No se selecciono ninguna solicitud');</script>");
        }
            
    }

    protected void vistaProyecto_SelectedIndexChanged(object sender, EventArgs e)
    {
        lblProyecto.Text = vistaProyecto.SelectedRow.Cells[2].Text;
    }
}