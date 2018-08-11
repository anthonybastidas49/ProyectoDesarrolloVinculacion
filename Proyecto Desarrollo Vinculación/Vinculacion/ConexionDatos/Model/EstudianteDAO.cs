using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConexionDatos.Model
{
    public class EstudianteDAO
    {
        SqlConnection cnn;
        ConexionDB c = new ConexionDB();
        string query;
        public int numHoras(int idPersona)
        {
            int horas=0;
            List<Estudiante> listaEstudiante = new List<Estudiante>();
            cnn = c.conectar;
            using (cnn)
            {

                query = "SELECT NUMHORASCUMPLIDAS FROM ESTUDIANTE WHERE IDPERSONA="+idPersona+"";
                SqlCommand cmd = new SqlCommand(query, cnn);
                SqlDataReader read = cmd.ExecuteReader();
                while (read.Read())
                {
                    horas = Convert.ToInt16(read[0]);

                }
            }
            cnn.Close();
            c.desconectar();
            return horas;
        }
        public List<Estudiante> queryEstudiante()
        {
            List<Estudiante> listaEstudiante = new List<Estudiante>();
            cnn = c.conectar;
            using (cnn)
            {

                query = "SELECT e.IDPROYECTO,e.IDPERSONA,e.NUMHORASCUMPLIDAS,e.IDMAPERSONA,p.NOMBREPERSONA,p.APELLIDOPERSONA FROM ESTUDIANTE e, PERSONA p WHERE e.IDMAPERSONA=0 AND p.IDPERSONA=e.IDPERSONA";
                SqlCommand cmd = new SqlCommand(query, cnn);
                SqlDataReader read = cmd.ExecuteReader();
                while(read.Read())
                {
                    Estudiante auxEstudiante = new Estudiante(Convert.ToInt16(read[0]), Convert.ToInt16(read[1]),
                       Convert.ToInt16(read[2]), Convert.ToInt16(read[3]),Convert.ToString(read[4]), Convert.ToString(read[5]));
                    listaEstudiante.Add(auxEstudiante);

                }
            }
            cnn.Close();
            c.desconectar();
            return listaEstudiante;

        }
        public void registrarTutorAcademico(Maestro maestro, Estudiante estudiate)
        {
            SqlCommand cmd = new SqlCommand();
            cnn = c.conectar;
            query = "UPDATE ESTUDIANTE SET IDMAPERSONA="+maestro.idPersona+" WHERE IDPERSONA=" + estudiate.idPersona + "";
            cmd = new SqlCommand(query, cnn);
            cmd.ExecuteNonQuery();
            cnn.Close();
            c.desconectar();
        }

    }
}
