using ConexionDatos.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vista_formularios_admin : System.Web.UI.Page
{
    PersonaDAO crudPersona = new PersonaDAO();
    EstudianteDAO crudEstudiante = new EstudianteDAO();
    MaestroDAO crudMaestro = new MaestroDAO();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Persona enviar = new Persona(txtCed.Text,txtNom.Text,txtApe.Text,txtCo.Text,txtTe.Text);
        crudPersona.administrador(enviar,txtContr.Text);
        if(Convert.ToString(privilegio.SelectedItem.Value).Equals("ESTUDIANTE"))
        {
            crudEstudiante.administrador(crudPersona.extraerId(txtCed.Text));
        }
        else
        {
            crudMaestro.administrador(crudPersona.extraerId(txtCed.Text));
        }
        txtCed.Text = "";
        txtApe.Text = "";
        txtContr.Text = "";
        txtCo.Text = "";
        txtTe.Text = "";
        txtNom.Text = "";
    }
}