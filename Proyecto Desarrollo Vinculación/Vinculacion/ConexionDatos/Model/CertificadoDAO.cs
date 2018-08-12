using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConexionDatos.Model
{
    public class CertificadoDAO
    {
        public void ingresarCertficado(int idProyecto, int idPersona)
        {
            SqlConnection cnn = new SqlConnection();
            ConexionDB c = new ConexionDB();
            SqlCommand cmd = new SqlCommand();
            cnn = c.conectar;
            String query = "INSERT INTO CETIFICADO(IDPROYECTO,IDPERSONA) VALUES(" + idProyecto + "," + idPersona + ")";
            cmd = new SqlCommand(query, cnn);
            cmd.ExecuteNonQuery();
        }
    }
}
