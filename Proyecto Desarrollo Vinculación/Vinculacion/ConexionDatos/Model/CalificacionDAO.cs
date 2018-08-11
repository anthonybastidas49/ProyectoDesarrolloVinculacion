using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConexionDatos.Model
{
    public class CalificacionDAO
    {
        public void envioDatosValidados(Calificacion aux)
        {
            SqlCommand cmd = new SqlCommand();
            SqlConnection cnn = new SqlConnection();
            ConexionDB c = new ConexionDB();
            cnn = c.conectar;
            String query = "INSERT INTO CALIFICACION(IDPROYECTO,IDPERSONA,DOMINIO,RESPETO,PUNTUALIDAD,HONESTIDAD,privilegio) VALUES("+aux.idProyecto+","+aux.idPersona+"" +
                ","+aux.dominio+","+aux.respeto+","+aux.puntualidad+","+aux.honestidad+",'"+aux.privilegio+"')";
            cmd = new SqlCommand(query, cnn);
            cmd.ExecuteNonQuery();
            return;
        }
        public List<Calificacion> buscarEstudiantes(int idProyecto,String privilegio)
        {
            List<Calificacion> retorno = new List<Calificacion>();
            SqlConnection cnn = new SqlConnection();
            ConexionDB c = new ConexionDB();
            cnn = c.conectar;
            SqlDataReader read;
            String query = "SELECT c.IDCLIFICACION,c.IDPROYECTO,c.IDPERSONA,c.DOMINIO,c.RESPETO,c.PUNTUALIDAD,c.HONESTIDAD,c.privilegio,p.NOMBREPERSONA,p.APELLIDOPERSONA FROM CALIFICACION c,PERSONA p WHERE IDPROYECTO=" + idProyecto+ "AND privilegio='"+privilegio+ "'AND p.IDPERSONA=c.IDPERSONA;";
            SqlCommand cmd = new SqlCommand(query, cnn);
            using (cmd)
            {
                read = cmd.ExecuteReader();
                while (read.Read())
                {
                    Calificacion calificacion = new Calificacion(Convert.ToInt16(read[0]), Convert.ToInt16(read[1]),
                        Convert.ToInt16(read[2]), Convert.ToInt16(read[3]), Convert.ToInt16(read[4]), Convert.ToInt16(read[5]),
                        Convert.ToInt16(read[6]), Convert.ToString(read[7]), Convert.ToString(read[8]), Convert.ToString(read[9]));
                    retorno.Add(calificacion);
                }
            }
            return retorno;   
        }
        public void envioDatosValidos(Calificacion aux)
        {
            SqlConnection cnn = new SqlConnection();
            SqlCommand cmd = new SqlCommand();
            ConexionDB c = new ConexionDB();
            cnn = c.conectar;
            String query = "UPDATE CALIFICACION SET DOMINIO=" + aux.dominio + ",RESPETO=" + aux.respeto + ",PUNTUALIDAD=" + aux.puntualidad + ",HONESTIDAD=" + aux.honestidad + "WHERE IDCLIFICACION=" + aux.idCalificacion + "";
            cmd = new SqlCommand(query, cnn);
            cmd.ExecuteNonQuery();
            return;

        }
        public List<Calificacion> extraerCalificación(int idEstudiante,String nombre,String apellido)
        {
            List<Calificacion> retorno = new List<Calificacion>();
            SqlConnection cnn = new SqlConnection();
            ConexionDB c = new ConexionDB();
            cnn = c.conectar;
            SqlDataReader read;
            String query = "SELECT * FROM CALIFICACION WHERE IDPERSONA =" + idEstudiante + ""; 
            SqlCommand cmd = new SqlCommand(query, cnn);
            using (cmd)
            {
                read = cmd.ExecuteReader();
                while (read.Read())
                {
                    Calificacion calificacion = new Calificacion(Convert.ToInt16(read[0]),
                        Convert.ToInt16(read[1]),Convert.ToInt16(read[2]), Convert.ToInt16(read[3]),
                        Convert.ToInt16(read[4]), Convert.ToInt16(read[5]), Convert.ToInt16(read[6]),Convert.ToString(read[7]),
                        nombre,apellido);
                    retorno.Add(calificacion);
                }
            }
            return retorno;
        }
        
    }
}
