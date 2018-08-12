using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConexionDatos.Model
{

    public class DocumentoDAO
    {
        
        List<Documento> listaDocumento = new List<Documento>();
        public List<Documento> desplegarEstudiantes(List<int> listaEstudiante)
        {
            SqlConnection cnn;
            ConexionDB c = new ConexionDB();
            string query;
            cnn = c.conectar;
            List<Documento> retorno = new List<Documento>();
            using (cnn)
            {
                foreach (int aux in listaEstudiante)
                {
                    query = "SELECT d.IDPROYECTO,d.IDDOCUMENTO,d.IDPERSONA,d.NOMDOCUMENTO,d.ESTADODOCUMENTO,d.DOCUMENTO,d.EXTENSION FROM DOCUMENTO d, PERSONA p WHERE d.IDPERSONA=p.IDPERSONA AND d.IDPROYECTO=" + aux + "";
                    SqlCommand cmd = new SqlCommand(query, cnn);
                    SqlDataReader read = cmd.ExecuteReader();
                    if (read.Read())
                    {
                        while (read.Read())
                        {

                            Documento documento = new Documento(Convert.ToInt16(read[0]), Convert.ToInt16(read[1])
                                , Convert.ToInt16(read[2]), Convert.ToString(read[3]), Convert.ToString(read[4]),
                                (byte[])read[5], Convert.ToString(read[6]));
                            retorno.Add(documento);

                        }
                    }

                }

            }
            return retorno;
        }
        public void registrarDocumento(Documento aux)
        {
            ConexionDB c = new ConexionDB();
            SqlConnection cnx = c.conectar;
            SqlCommand cmd = cnx.CreateCommand();
            cmd.CommandText = "INSERT INTO DOCUMENTO(IDPROYECTO,IDPERSONA,NOMDOCUMENTO,ESTADODOCUMENTO,DOCUMENTO,EXTENSION) VALUES(@idProyecto,@idPersona,@nomDocumento,@estadoDocumento,@documento,@extension)";
            cmd.Parameters.AddWithValue("@idProyecto", aux.idProyecto);
            cmd.Parameters.AddWithValue("idPersona", aux.idPersona);
            cmd.Parameters.AddWithValue("@nomDocumento", aux.nombreDocumento);
            cmd.Parameters.AddWithValue("@estadoDocumento", aux.estadoDocumento);
            cmd.Parameters.AddWithValue("@documento", aux.documento);
            cmd.Parameters.AddWithValue("@extension", aux.extension);
            cmd.ExecuteNonQuery();
        }
        public List<Documento> enviarEstadoDocumentos(int id)
        {
            SqlConnection cnn;
            ConexionDB c = new ConexionDB();
            string query;
            cnn = c.conectar;
            List<Documento> retorno = new List<Documento>();
            query = "SELECT * FROM DOCUMENTO WHERE IDPERSONA=" + id + "";
            SqlCommand cmd = new SqlCommand(query, cnn);
            SqlDataReader read = cmd.ExecuteReader();
            using (cnn)
            {
                while (read.Read())
                {
                    Documento documento = new Documento(Convert.ToInt16(read[0]), Convert.ToInt16(read[1])
                                , Convert.ToInt16(read[2]), Convert.ToString(read[3]), Convert.ToString(read[4]),
                                (byte[])read[5], Convert.ToString(read[6]));
                    retorno.Add(documento);
                }
            }
            return retorno;
        }
        public Documento retornoDocumento(int idDocumento)
        {

            ConexionDB c = new ConexionDB();
        SqlConnection cnx = c.conectar;
        String query = "SELECT * FROM DOCUMENTO WHERE IDDOCUMENTO="+idDocumento+"";
        SqlCommand cmd = new SqlCommand(query, cnx);
        SqlDataReader reader = cmd.ExecuteReader();
            using (cmd)
            {
                while (reader.Read())
                {
                    Documento retorno = new Documento(Convert.ToInt16(reader[0]), Convert.ToInt16(reader[1]),
                        Convert.ToInt16(reader[2]), Convert.ToString(reader[3]), Convert.ToString(reader[4]), (byte[])reader[5], Convert.ToString(reader[6]));
                    return retorno;
                }
                return null;

            }
        } 
    }
}
