using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConexionDatos.Model
{
    public class ActividadDAO
    {
        public void registrarHoras(Actividad aux)
        {
            SqlConnection cnn;
            ConexionDB c = new ConexionDB();
            string query;
            SqlCommand cmd = new SqlCommand();
            cnn = c.conectar;
            query = "INSERT INTO ACTIVIDAD(IDPROYECTO,IDPERSONA,DIAPRACTICA,NUMHORAS,DESCRIPCION)" +
                "VALUES("+aux.idPoryecto+","+aux.idPersona+",'"+aux.diaPractica+"',"+aux.numHoras+",'"+aux.descripcion+"')";
            cmd = new SqlCommand(query, cnn);
            cmd.ExecuteNonQuery();
            actualizarHoras(aux.idPersona, aux.numHoras);
           
        }
        public void actualizarHoras(int idPersona,int numHorasNuevas)
        {
            int numHoras;
            SqlConnection cnn;
            ConexionDB c = new ConexionDB();
            string query;
            SqlCommand cmd = new SqlCommand();
            cnn = c.conectar;
            numHoras = numHorasEstudiante(idPersona);
            numHoras = numHoras + numHorasNuevas;
            query = "UPDATE ESTUDIANTE SET NUMHORASCUMPLIDAS=" + numHoras + " WHERE IDPERSONA=" + idPersona + "";
            cmd = new SqlCommand(query, cnn);
            cmd.ExecuteNonQuery();
        }
        public int numHorasEstudiante(int id)
        {
            int retorno=0;
            SqlConnection cnn;
            ConexionDB c = new ConexionDB();
            cnn = c.conectar;
            string query= "SELECT NUMHORASCUMPLIDAS FROM ESTUDIANTE WHERE IDPERSONA="+id+"";
            SqlCommand cmd = new SqlCommand(query, cnn);
            SqlDataReader read = cmd.ExecuteReader();
            while (read.Read())
            {
                retorno = Convert.ToInt16(read[0]);
            }
            return retorno;
        }
        public List<Actividad> visualizarCalendario(int idPersona)
        {
            List<Actividad> retorno = new List<Actividad>();
            SqlConnection cnn = new SqlConnection();
            ConexionDB c = new ConexionDB();
            cnn = c.conectar;
            SqlDataReader read;
            String query = "SELECT * FROM ACTIVIDAD WHERE IDPERSONA="+idPersona+";";
            SqlCommand cmd = new SqlCommand(query, cnn);
            using (cmd)
            {
                read = cmd.ExecuteReader();
                while (read.Read())
                {
                    Actividad actividadAdd = new Actividad(Convert.ToInt16(read[0]), Convert.ToInt16(read[1]),
                        Convert.ToInt16(read[2]), Convert.ToString(read[3]), Convert.ToInt16(read[4]), Convert.ToString(read[5]));
                    retorno.Add(actividadAdd);
                }
            }
            return retorno;
        }
        public void registrarCambios(Actividad aux,int horasAntiguas)
        {
            actualizarHoras(aux.idPersona, -(horasAntiguas));
            actualizarHoras(aux.idPersona, aux.numHoras);
            SqlConnection cnn;
            ConexionDB c = new ConexionDB();
            string query;
            SqlCommand cmd = new SqlCommand();
            cnn = c.conectar;
            query = "UPDATE ACTIVIDAD SET NUMHORAS="+aux.numHoras+", DESCRIPCION='"+aux.descripcion+"' WHERE IDACTIVIDAD="+aux.idActividad+";";
            cmd = new SqlCommand(query, cnn);
            cmd.ExecuteNonQuery();
        }
        public void confirmarEliminacion(Actividad aux)
        {
            actualizarHoras(aux.idPersona,-(aux.numHoras));
            SqlConnection cnn;
            ConexionDB c = new ConexionDB();
            string query;
            SqlCommand cmd = new SqlCommand();
            cnn = c.conectar;
            query = "DELETE FROM ACTIVIDAD WHERE IDACTIVIDAD="+aux.idActividad+"";
            cmd = new SqlCommand(query, cnn);
            cmd.ExecuteNonQuery();
        }
    }
}
