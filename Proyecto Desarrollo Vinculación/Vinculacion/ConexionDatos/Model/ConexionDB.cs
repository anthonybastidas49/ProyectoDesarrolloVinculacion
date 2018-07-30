using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConexionDatos
{
    public class ConexionDB
    {
        public SqlConnection conectar { get; set; }
        public ConexionDB()
        {
            conectar = new SqlConnection(Configuracion.Default.cadena);
            conectar.Open();
            
        }
        public void desconectar()
        {
            conectar.Close();
        }

    }
}
