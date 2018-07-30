using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ConexionDatos;
public partial class Vista_loginVinculacion :  System.Web.UI.Page
{
    ConexionDB c = new ConexionDB();
    string query;
    string privilegio="";
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {

        if (rbM.Checked.Equals(false) && rbE.Checked.Equals(false)&&rbB.Checked.Equals(false))
        {

            Response.Write("<script language=javascript>alert('SELECCIONE PRIVILEGIO');</script>");
        }
        else
        {
            SqlConnection cnn= c.conectar;
            using (cnn)
            {
                if (rbM.Checked.Equals(true))
                {
                    query = @"SELECT P.NOMBREPERSONA,M.CARGO,P.IDPERSONA,P.APELLIDOPERSONA,m.CARRERA FROM PERSONA p ,MAESTRO m 
                        where p.CI_PER='" + txtUser.Text + "' AND P.PASSWORDPERSONA='" + txtPass.Text + "'AND m.IDPERSONA=p.IDPERSONA;";
                    privilegio = "maestro";
                    
                }
                if (rbE.Checked.Equals(true))
                {
                    query = @"SELECT P.NOMBREPERSONA,P.IDPERSONA FROM PERSONA p ,Estudiante m 
                        where p.CI_PER='" + txtUser.Text + "' AND P.PASSWORDPERSONA='" + txtPass.Text + "'AND m.IDPERSONA=p.IDPERSONA;";
                    privilegio = "estudiante";
                }
                SqlCommand cmd = new SqlCommand(query, cnn);
                SqlDataReader read = cmd.ExecuteReader();
                if (read.Read())
                {
                    Response.Write("<script language=javascript>alert('BIENVENIDO:" + Convert.ToString(read[0]) + "');</script>");
                    switch (privilegio)
                    {
                        case "maestro":
                            switch (Convert.ToString(read[1]).Trim())
                            { 
                                case "DD":
                                    Session["idPersona"] = Convert.ToString(read[2]);
                                    Session["nombre"] = Convert.ToString(read[0]);
                                    Session["apellido"] = Convert.ToString(read[3]);
                                    Session["carrera"] = Convert.ToString(read[4]);
                                    Response.Redirect("../formularios/DD/vistaDirectorDepa.aspx");
                                    break;
                                case "CV":
                                    Session["idPersona"] = Convert.ToString(read[2]);
                                    Session["nombre"] = Convert.ToString(read[0]);
                                    Session["apellido"] = Convert.ToString(read[3]);
                                    Session["carrera"] = Convert.ToString(read[4]);
                                    Response.Redirect("../formularios/CV/ActualizarFormatos.aspx");
                                    break;
                                default:
                                    break;
                               
                            }
                        break;
                        default:
                            break;
                    }
                    

                }
                else
                {
                    txtPass.Text = "";
                    txtUser.Text = "";
                    Response.Write("<script language=javascript>alert('NO REGISTRADO');</script>");
                }
                c.desconectar();
            }
        }
    }
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {

    }

    protected void rbM_CheckedChanged(object sender, EventArgs e)
    {
    }

    protected void rbE_CheckedChanged(object sender, EventArgs e)
    {
    }

    protected void rbB_CheckedChanged(object sender, EventArgs e)
    {

    }
}