using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConexionDatos.Model
{
    public class MaestroDAO
    {
        SqlConnection cnn;
        String query;
        SqlCommand cmd = new SqlCommand();
        ConexionDB c = new ConexionDB();
        String retorno = "";
        public String nombreDirector(int idProyecto)
        {
            cnn = c.conectar;
            
            using (cnn)
            {
                query = "SELECT  p.NOMBREPERSONA,p.APELLIDOPERSONA FROM MAESTRO m, PERSONA p,PROYECTO pr " +
                "WHERE m.IDPERSONA=p.IDPERSONA AND m.CARGO='DP' AND pr.IDPROYECTO=" + idProyecto + " AND m.IDPROYECTO=pr.IDPROYECTO;";
                cmd = new SqlCommand(query, cnn);
                SqlDataReader read = cmd.ExecuteReader();
                while (read.Read())
                {
                    retorno=Convert.ToString(read[0])+" "+Convert.ToString(read[1]) ;
                ;
                }
            }

            c.desconectar();
            return retorno;
        }
        public void agregarMaestro(Maestro ma)
        {
            cnn = c.conectar;
            query = @"INSERT INTO MAESTRO(IDPROYECTO, IDPERSONA, CARGO, CARRERA) VALUES(" + ma.idProyecto + ","
                + ma.idPersona + ",'" + ma.cargo + "','" + ma.carrera.Trim()+"')";
            cmd = new SqlCommand(query, cnn);
            cmd.ExecuteNonQuery();
            cnn.Close();
            c.desconectar();
        }
        public List<Maestro> queryDocentesProyecto()
        {
            List<Maestro> listaMaestro = new List<Maestro>();
                cnn = c.conectar;
                using (cnn)
                {
                    query = @"SELECT DISTINCT m.IDPROYECTO,m.IDPERSONA,m.CARGO,m.CARGO,P.NOMBREPERSONA, p.APELLIDOPERSONA FROM Persona p,MAESTRO m, ESTUDIANTE e WHERE m.CARGO = 'MP' AND M.IDPERSONA=P.IDPERSONA";
                    SqlCommand cmd = new SqlCommand(query, cnn);
                    SqlDataReader read = cmd.ExecuteReader();
                    while (read.Read())
                    {
                        Maestro maestro = new Maestro(Convert.ToInt16(read[0]), Convert.ToInt16(read[1]),
                            Convert.ToString(read[2]), Convert.ToString(read[3]), Convert.ToString(read[4]),
                            Convert.ToString(read[5]));
                        listaMaestro.Add(maestro);
                    }
                }            
            cnn.Close();
            c.desconectar();
            return listaMaestro;
        }
    }
}
