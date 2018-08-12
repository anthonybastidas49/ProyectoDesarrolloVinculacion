using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConexionDatos.Model
{

    public class ProyectoDAO
    {
        public void insertarProyecto(Proyecto aux)
        {
            SqlConnection cnn = new SqlConnection();
            ConexionDB c = new ConexionDB();
            SqlCommand cmd = new SqlCommand();
            cnn = c.conectar;
            String query = "INSERT INTO PROYECTO(NOMPROYECTO,FECHAINICIO,NOMCOMUNIDADBENEFICIARIA,NUMMAXESTUDIN," +
                 "FECHAFIN,MAXMAESTROS,carrera)" +
                 "VALUES('" + aux.nomProyecto + "'," + aux.fechaInicio.ToString("yyyy-MM-dd").ToString() + ",'" + aux.nomComunidad + "'," + aux.numMaxestudin + "," +
                 "" + aux.fechaFin.ToString("yyyy-MM-dd").ToString() + "," + aux.MaxMaestro + ",'" + aux.carrera + "');";
            cmd = new SqlCommand(query, cnn);
            cmd.ExecuteNonQuery();
        }
        Proyecto pro = new Proyecto();

        public ProyectoDAO()
        {

        }
        public Proyecto nomProyecto(int idProyecto)
        {
            SqlConnection cnn;
            ConexionDB c = new ConexionDB();
            string query;
            cnn = c.conectar;
            Proyecto retornor = new Proyecto();
            using (cnn)
            {

                query = "SELECT * FROM PROYECTO WHERE IDPROYECTO="+idProyecto+"";
                SqlCommand cmd = new SqlCommand(query, cnn);
                SqlDataReader read = cmd.ExecuteReader();
                while (read.Read())
                {
                    Proyecto pro = new Proyecto(Convert.ToInt32(read[0]), Convert.ToString(read[1]),
                    Convert.ToDateTime(read[2]), Convert.ToString(read[3]), Convert.ToInt16(read[4]),
                    Convert.ToDateTime(read[5]), Convert.ToInt16(read[6]), Convert.ToString(read[7]));
                }
            }
            return pro;
        }
        public List<Proyecto> mostrarInformacion(String carrera)
        {
           
            SqlConnection cnn;
            ConexionDB c = new ConexionDB();
            string query;
            cnn = c.conectar;
            List<Proyecto> retorno =new List<Proyecto>();
            using (cnn)
            {

                query = "SELECT * FROM PROYECTO WHERE CARRERA = '" + carrera +"'";
                SqlCommand cmd = new SqlCommand(query, cnn);
                SqlDataReader read = cmd.ExecuteReader();
                while(read.Read())
                {
                    Proyecto pro = new Proyecto(Convert.ToInt32(read[0]), Convert.ToString(read[1]),
                    Convert.ToDateTime(read[2]), Convert.ToString(read[3]),Convert.ToInt16(read[4]),
                    Convert.ToDateTime(read[5]),Convert.ToInt16(read[6]),Convert.ToString(read[7]));
                    retorno.Add(pro);
                }
            }
            return retorno;
        }
        public List<Proyecto> extraerProyecto()
        {
            SqlConnection cnn;
            ConexionDB c = new ConexionDB();
            string query;
            cnn = c.conectar;
            List<Proyecto> retorno = new List<Proyecto>();
            using (cnn)
            {

                query = "SELECT * FROM PROYECTO";
                SqlCommand cmd = new SqlCommand(query, cnn);
                SqlDataReader read = cmd.ExecuteReader();
                while (read.Read())
                {
                    Proyecto pro = new Proyecto(Convert.ToInt32(read[0]), Convert.ToString(read[1]),
                    Convert.ToDateTime(read[2]), Convert.ToString(read[3]), Convert.ToInt16(read[4]),
                    Convert.ToDateTime(read[5]), Convert.ToInt16(read[6]), Convert.ToString(read[7]));
                    retorno.Add(pro);
                }
            }
            return retorno;
        }
        public List<int> idProyecto(String carrera)
        {
            Proyecto pro = new Proyecto();
            SqlConnection cnn;
            ConexionDB c = new ConexionDB();
            string query;
            cnn = c.conectar;
            List<int> retornoId = new List<int>();
            using (cnn)
            {
                query = "SELECT IDPROYECTO FROM PROYECTO WHERE carrera='"+carrera+"'";
                SqlCommand cmd = new SqlCommand(query, cnn);
                SqlDataReader read = cmd.ExecuteReader();
                while (read.Read())
                {
                    retornoId.Add(Convert.ToInt32(read[0]));
                }
            }
            return retornoId;
        }

    }
}
