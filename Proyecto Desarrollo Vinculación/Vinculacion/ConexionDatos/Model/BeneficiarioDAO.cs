using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConexionDatos.Model
{
    public class BeneficiarioDAO
    {
        public void insertar(Beneficiario aux)
        {
            SqlConnection cnn = new SqlConnection();
            ConexionDB c = new ConexionDB();
            cnn = c.conectar;
            SqlCommand cmd = new SqlCommand();
            String query = "INSERT INTO BENEFICIARIO VALUES("+aux.idProyecto+",'"+aux.nomPersona+"','"+aux.apellidoPersona+"'," +
                "'"+aux.cedula+"','"+aux.contraseña+"')";
            cmd = new SqlCommand(query, cnn);
            cmd.ExecuteNonQuery();
        }
    }
}
