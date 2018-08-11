using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConexionDatos.Model
{
    public class PlanificacionDAO
    {
        public void confirmarPlanificacion(int idPlanificacion)
        {
            SqlConnection cnn = new SqlConnection();
            ConexionDB c = new ConexionDB();
            SqlCommand cmd = new SqlCommand();
            cnn = c.conectar;
            String query = "UPDATE PLANIFICACION SET estado='SI' WHERE idplanificación=" + idPlanificacion + "";
            cmd = new SqlCommand(query, cnn);
            cmd.ExecuteNonQuery();
        }
        public List<Planificacion>queryPlanificacionBeneficiario(int idProyecto)
        {
            List<Planificacion> retorno = new List<Planificacion>();
            SqlConnection cnn = new SqlConnection();
            ConexionDB c = new ConexionDB();
            cnn = c.conectar;
            SqlDataReader read;
            String query = "SELECT * FROM PLANIFICACION WHERE idProyecto=" + idProyecto + "AND estado='NO'";
            SqlCommand cmd = new SqlCommand(query, cnn);
            using (cmd)
            {
                read = cmd.ExecuteReader();
                while (read.Read())
                {
                    Planificacion aniadir = new Planificacion(Convert.ToInt16(read[0]), Convert.ToString(read[1]),
                        Convert.ToString(read[2]), Convert.ToString(read[3]), Convert.ToString(read[4]),
                        Convert.ToInt16(read[5]), Convert.ToString(read[6]));
                    retorno.Add(aniadir);
                }
            }

            return retorno;
        }
        public void registrarInformacion(Planificacion aux)
        {
            SqlConnection cnn = new SqlConnection();
            ConexionDB c = new ConexionDB();
            SqlCommand cmd = new SqlCommand();
            cnn = c.conectar;
            String query = "INSERT INTO PLANIFICACION(nomPlanificacion,fechaInicio,fechaFin,lugar,idProyecto,estado)" +
                " VALUES('"+aux.nomPlanificacion+"','"+aux.fechaInicion+"','"+aux.fechaFin+"','"+aux.lugar+"',"+aux.idProyecto+",'"+aux.estado+"')";
            cmd = new SqlCommand(query, cnn);
            cmd.ExecuteNonQuery();
        }
        public List<Planificacion> queryPlanificacion(int idProyecto)
        {
            List<Planificacion> retorno = new List<Planificacion>();
            SqlConnection cnn = new SqlConnection();
            ConexionDB c = new ConexionDB();
            cnn = c.conectar;
            SqlDataReader read;
            String query = "SELECT * FROM PLANIFICACION WHERE idProyecto="+idProyecto+"";
            SqlCommand cmd = new SqlCommand(query, cnn);
            using (cmd)
            {
                read = cmd.ExecuteReader();
                while (read.Read())
                {
                    Planificacion aniadir = new Planificacion(Convert.ToInt16(read[0]),Convert.ToString(read[1]),
                        Convert.ToString(read[2]), Convert.ToString(read[3]), Convert.ToString(read[4]),
                        Convert.ToInt16(read[5]),Convert.ToString(read[6]));
                    retorno.Add(aniadir);
                }
            }

            return retorno;
        }
        public void registrarCambios(String fechaIni,String fechaFin,int idPla)
        {
            SqlConnection cnn = new SqlConnection();
            ConexionDB c = new ConexionDB();
            cnn = c.conectar;
            SqlCommand command;
            SqlDataAdapter adapter = new SqlDataAdapter();
            String sql = "";
            sql = "UPDATE PLANIFICACION SET fechaInicio='"+fechaIni + "',fechaFin='" +fechaFin+ "' WHERE idPlanificación=" + idPla + ";";
            command = new SqlCommand(sql, cnn);
            adapter.InsertCommand = new SqlCommand(sql, cnn);
            adapter.InsertCommand.ExecuteNonQuery();
        }
        public void confirmarEliminacion(int idPla)
        {
            SqlConnection cnn = new SqlConnection();
            ConexionDB c = new ConexionDB();
            cnn = c.conectar;
            SqlCommand command;
            SqlDataAdapter adapter = new SqlDataAdapter();
            String sql = "";
            sql = "DELETE FROM PLANIFICACION WHERE idPlanificación=" + idPla+"";
            command = new SqlCommand(sql, cnn);
            adapter.InsertCommand = new SqlCommand(sql, cnn);
            adapter.InsertCommand.ExecuteNonQuery();
        }
    }
}
