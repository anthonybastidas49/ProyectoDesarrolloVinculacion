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
        Proyecto pro = new Proyecto();
        SqlConnection cnn;
        ConexionDB c = new ConexionDB();
        string query;
        public ProyectoDAO()
        {

        }
        public List<Proyecto> mostrarInformacion(String carrera)
        {
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
                    //read.NextResult();
                }
            }
            return retorno;
        }

    }
}
