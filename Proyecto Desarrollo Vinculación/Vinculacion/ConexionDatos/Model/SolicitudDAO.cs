using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConexionDatos.Model
{
    public class SolicitudDAO
    {
        Proyecto pro = new Proyecto();
       
        String query;
        public SolicitudDAO()
        {
        }
        public List<Solicitud> extraerInformacion(String carrera)
        {
            SqlConnection cnn = new SqlConnection();
            ConexionDB c = new ConexionDB();
            cnn = c.conectar;
            List<Solicitud> retorno = new List<Solicitud>();
         
            using (cnn)
            {

                query = "SELECT s.IDSOLICITUD_,s.IDPROYECTO,s.IDPERSONA FROM SOLICITUD s, PROYECTO p where p.IDPROYECTO=s.IDPROYECTO AND p.CARRERA='"+carrera+"'";
                SqlCommand cmd = new SqlCommand(query, cnn);
                SqlDataReader read = cmd.ExecuteReader();
                while (read.Read())
                {
                    Solicitud sol = new Solicitud(Convert.ToInt16(read[0]),Convert.ToInt16(read[1]),Convert.ToInt16(read[2]));
                    retorno.Add(sol);
                }
            }
            c.desconectar();
            return retorno;
        }
        public void aprobarSolicitud(Persona per,Solicitud sol)
        {
            SqlConnection cnn = new SqlConnection();
            ConexionDB c = new ConexionDB();

            SqlCommand cmd = new SqlCommand();
            cnn = c.conectar;
                query = "INSERT INTO ESTUDIANTE(IDPROYECTO,IDPERSONA,NUMHORASCUMPLIDAS,IDMAPERSONA) VALUES(" + sol.IDPROYECTO+","+per.idPersona+","+0+","+0+")";
                cmd = new SqlCommand(query, cnn);
                cmd.ExecuteNonQuery();
                query = "DELETE FROM SOLICITUD WHERE IDPERSONA =" + per.idPersona+"";
                cmd = new SqlCommand(query, cnn);
                cmd.ExecuteNonQuery();
            c.desconectar();
        }
        public void eliminarSolicitud(Solicitud sol)
        {
            SqlConnection cnn = new SqlConnection();
            ConexionDB c = new ConexionDB();
            cnn = c.conectar;
            SqlCommand cmd = new SqlCommand();
            query = "DELETE FROM SOLICITUD WHERE IDPERSONA=" + sol.IDPERSONA + "";
            cmd = new SqlCommand(query, cnn);
            cmd.ExecuteNonQuery();
            c.desconectar();
        }
    }
}
