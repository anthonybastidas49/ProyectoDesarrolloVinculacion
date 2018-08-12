using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConexionDatos.Model
{
    public class validaciones
    {
        public bool validarCedulaBeneficiario(string idCedula)
        {
                bool retorno= false;
            SqlConnection cnn = new SqlConnection();
            ConexionDB c = new ConexionDB();
            cnn = c.conectar;
            SqlDataReader read;
            String query = "SELECT CEDULA FROM BENEFICIARIO WHERE CEDULA='"+idCedula+"';";
            SqlCommand cmd = new SqlCommand(query, cnn);
            using (cmd)
            {
                read = cmd.ExecuteReader();
                while (read.Read())
                {
                    retorno = true;
                }
            }
            return retorno;
        }
        public bool validarCedula(String cedula)
        {
            int acum1 = 0, acum2 = 0;
            for (int i = 0; i <= cedula.Length - 2; i++)
            {
                int dig = int.Parse(cedula.Substring(i, 1));
                if (i % 2 == 0)
                {
                    int resul = dig * 2;
                    if (resul >= 9)
                        resul = resul - 9;
                    acum1 = acum1 + resul;
                }
                else
                    acum2 = acum2 + dig;
            }
            int suma = acum1 + acum2;
            int decena = ((suma / 10) + 1) * 10;
            int auto = decena - suma;
            if (Convert.ToString(auto).Equals(cedula.Substring(9, 1)))
            {
                return true;
            }
            else
            {
                return false;
            }
            
        }
    }
}
