using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConexionDatos.Model
{
    public class FormatoDAO
    {
        
        public List<Formato> buscarDocumento()
        {
            List<Formato> listaFormato =new List<Formato>();
            ConexionDB c = new ConexionDB();
            SqlConnection cnx = c.conectar;
            String query = "SELECT * FROM FORMATO";
            SqlCommand cmd = new SqlCommand(query, cnx);
            SqlDataReader reader = cmd.ExecuteReader();
            using (cmd)
            {
                while (reader.Read())
                {
                    Formato formato = new Formato(Convert.ToInt16(reader[0]), Convert.ToString(reader[1]),Convert.ToString(reader[3]));
                    listaFormato.Add(formato);
                }
            }
            return listaFormato;
        }
        public Formato consultarDoucmento(int id)
        {
            List<Formato> listaFormato = new List<Formato>();
            ConexionDB c = new ConexionDB();
            SqlConnection cnx = c.conectar;
            String query = "SELECT * FROM FORMATO WHERE IDFORMATO="+id+"";
            SqlCommand cmd = new SqlCommand(query, cnx);
            SqlDataReader reader = cmd.ExecuteReader();
            using (cmd)
            {
                    Formato formato = new Formato(Convert.ToInt16(reader[0]), Convert.ToString(reader[1]));
                    return formato;
            }
            
        }
        public void registrarNuevoDocumento(Formato aux)
        {
            ConexionDB c = new ConexionDB();
            SqlConnection cnx = c.conectar;
            SqlCommand cmd = cnx.CreateCommand();
            cmd.CommandText = "INSERT INTO FORMATO VALUES(@nombre,@imagen)";
            cmd.CommandText = "UPDATE FORMATO SET DOCUMENTO=@documento,EXTENSION=@ext WHERE IDFORMATO= @id";
            cmd.Parameters.AddWithValue("@documento", aux.Documento);
            cmd.Parameters.AddWithValue("@id", aux.idFormato);
            cmd.Parameters.AddWithValue("@ext", aux.Extension);
            cmd.ExecuteNonQuery();
        }
        public Formato retorno(int id)
        {
            ConexionDB c = new ConexionDB();
            SqlConnection cnx = c.conectar;
            String query = "SELECT * FROM FORMATO WHERE IDFORMATO = " + id + "";
            SqlCommand cmd = new SqlCommand(query, cnx);
            SqlDataReader reader = cmd.ExecuteReader();
           
            if (reader.Read())
            {
                    byte[] documento = (byte[])reader[2];
                    Formato retornar = new Formato(Convert.ToInt16(reader[0]), Convert.ToString(reader[1]),
                        documento, Convert.ToString(reader[3]));
                    return retornar;
                
            }
            else
                return null;

        }
    }
}
