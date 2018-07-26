using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConexionDatos.Model
{

    public class PersonaDAO
    {

        Proyecto pro = new Proyecto();
       
        string query;
        public List<Persona> extraerInformación(List<Solicitud> aux)
        {
            SqlConnection cnn = new SqlConnection();
            ConexionDB c = new ConexionDB();
            cnn = c.conectar;
            List<Persona> retorno = new List<Persona>();
            SqlDataReader read;
            foreach (Solicitud lista in aux)
            {
               
                    query = "SELECT * FROM PERSONA p WHERE p.IDPERSONA="+Convert.ToString(lista.IDPERSONA)+"";
                    SqlCommand cmd = new SqlCommand(query, cnn);
                using (cmd)
                {
                    read = cmd.ExecuteReader();
                    while (read.Read())
                    {
                        Persona pro = new Persona(Convert.ToInt16(read[0]), Convert.ToString(read[1]),
                       Convert.ToString(read[2]), Convert.ToString(read[3]), Convert.ToString(read[4]),
                       Convert.ToString(read[5]));
                        retorno.Add(pro);
                    }
                    read.Close();
                }
                    

            }

            c.desconectar();
            return retorno;
        }
        public List<Persona> queryDocente()
        {
            SqlConnection cnn = new SqlConnection();
            ConexionDB c = new ConexionDB();
            cnn = c.conectar;
            List<Persona> retorno = new List<Persona>();
            SqlDataReader read;

            query = @"SELECT DISTINCT p.IDPERSONA,p.CI_PER,p.NOMBREPERSONA,p.APELLIDOPERSONA,p.CORREOPERSONA,p.TELEFONOPERSONA 
                FROM CATALOGOPROFESOR c, PERSONA p WHERE c.IDPERSONA NOT IN(SELECT IDPERSONA FROM MAESTRO)AND
                c.IDPERSONA = p.IDPERSONA";
              SqlCommand cmd = new SqlCommand(query, cnn);
            using (cmd)
            {
                read = cmd.ExecuteReader();
                while (read.Read())
                {
                    Persona pro = new Persona(Convert.ToInt16(read[0]), Convert.ToString(read[1]),
                   Convert.ToString(read[2]), Convert.ToString(read[3]), Convert.ToString(read[4]),
                   Convert.ToString(read[5]));
                    retorno.Add(pro);
                }
                read.Close();
            }
            c.desconectar();
            return retorno;
        }
    }
}
