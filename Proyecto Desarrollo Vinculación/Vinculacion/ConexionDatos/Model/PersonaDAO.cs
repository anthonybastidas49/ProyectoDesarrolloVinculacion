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
        public Persona extraerSolicitante(String cedua)
        {
            SqlConnection cnn = new SqlConnection();
            ConexionDB c = new ConexionDB();
            cnn = c.conectar;
            SqlDataReader read;
            query = "SELECT p.IDPERSONA,p.CI_PER,p.NOMBREPERSONA,p.APELLIDOPERSONA,p.CORREOPERSONA,p.TELEFONOPERSONA FROM CATALOGOESTUDIANTE ca, PERSONA p WHERE ca.IDPERSONA NOT IN (SELECT IDPERSONA FROM ESTUDIANTE) AND ca.IDPERSONA NOT IN (SELECT IDPERSONA FROM SOLICITUD) AND p.IDPERSONA=ca.IDPERSONA AND p.CI_PER='"+cedua+"'";
            SqlCommand cmd = new SqlCommand(query, cnn);
            using (cmd)
            {
                read = cmd.ExecuteReader();
                while (read.Read())
                {
                    Persona pro = new Persona(Convert.ToInt16(read[0]), Convert.ToString(read[1]),
                    Convert.ToString(read[2]), Convert.ToString(read[3]), Convert.ToString(read[4]), Convert.ToString(read[5]));
                    return pro;
                }
            }
            return null;
        }
        public List<Persona> extraerMaestrosDisponibles()
        {
            List<Persona> retorno = new List<Persona>();
            SqlConnection cnn = new SqlConnection();
            ConexionDB c = new ConexionDB();
            cnn = c.conectar;
            SqlDataReader read;
            query = "	SELECT P.IDPERSONA,P.CI_PER,P.NOMBREPERSONA,P.APELLIDOPERSONA,P.CORREOPERSONA,P.TELEFONOPERSONA	 FROM CATALOGOPROFESOR ca, PERSONA p WHERE ca.IDPERSONA NOT IN(SELECT IDPERSONA FROM MAESTRO) AND ca.IDPERSONA=p.IDPERSONA;";
            SqlCommand cmd = new SqlCommand(query, cnn);
            using (cmd)
            {
                read = cmd.ExecuteReader();
                while (read.Read())
                {
                    Persona pro = new Persona(Convert.ToInt16(read[0]), Convert.ToString(read[1]),
                    Convert.ToString(read[2]), Convert.ToString(read[3]), Convert.ToString(read[4]), Convert.ToString(read[5]));
                    retorno.Add(pro);
                }
            }
            return retorno; 
        }
        public String extraerTutor(int idEstudiante)
        {
            List<Persona> retorno = new List<Persona>();
            SqlConnection cnn = new SqlConnection();
            ConexionDB c = new ConexionDB();
            cnn = c.conectar;
            SqlDataReader read;
            query = "SELECT DISTINCT p.NOMBREPERSONA,p.APELLIDOPERSONA FROM PERSONA p, ESTUDIANTE e, MAESTRO m WHERE e.IDMAPERSONA = p.IDPERSONA AND e.IDPERSONA = "+idEstudiante+";";
            SqlCommand cmd = new SqlCommand(query, cnn);
            using (cmd)
            {
                read = cmd.ExecuteReader();
                while (read.Read())
                {
                    return Convert.ToString(read[0]) + " " + Convert.ToString(read[1]);
                }
            }
            return "no";

        }
        public void administrador(Persona aux,String contraseña)
        {
            SqlConnection cnn = new SqlConnection();
            ConexionDB c = new ConexionDB();
            SqlCommand cmd = new SqlCommand();
            cnn = c.conectar;
            query = "INSERT INTO PERSONA(CI_PER,NOMBREPERSONA,APELLIDOPERSONA,CORREOPERSONA,TELEFONOPERSONA,PASSWORDPERSONA)VALUES('"+aux.CI_PER+"','"+aux.NOMBREPERSONA+"'," +
                "'"+aux.APELLIDOPERSONA+"','"+aux.CORREOPERSONA+"','"+aux.TELEFONOPERSONA+"','"+contraseña+"')";
            cmd = new SqlCommand(query, cnn);
            cmd.ExecuteNonQuery();
        }
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
                read = cmd.ExecuteReader();
                using (cmd)
                {
                    
                    while (read.Read())
                    {
                        Persona pro = new Persona(Convert.ToInt16(read[0]), Convert.ToString(read[1]),
                       Convert.ToString(read[2]), Convert.ToString(read[3]), Convert.ToString(read[4]),
                       Convert.ToString(read[5]));
                        retorno.Add(pro);
                    }
                }
                read.Close();

            }
           
            return retorno;
        }
        public List<Persona>registrarCertificadosDisponibles(String carrera)
        {
            List<Persona> retorno = new List<Persona>();
            SqlConnection cnn = new SqlConnection();
            ConexionDB c = new ConexionDB();
            cnn = c.conectar;
            SqlDataReader read;
            query = "SELECT DISTINCT  per.IDPERSONA,per.CI_PER,per.NOMBREPERSONA,per.APELLIDOPERSONA,per.CORREOPERSONA,per.TELEFONOPERSONA,p.IDPROYECTO FROM ESTUDIANTE e, PROYECTO p,PERSONA per WHERE e.IDPROYECTO=p.IDPROYECTO AND p.carrera='"+carrera+"' and e.IDPERSONA=per.IDPERSONA AND e.NUMHORASCUMPLIDAS>0";
            SqlCommand cmd = new SqlCommand(query, cnn);
            using (cmd)
            {
                read = cmd.ExecuteReader();
                while (read.Read())
                {
                    Persona pro = new Persona(Convert.ToInt16(read[0]), Convert.ToString(read[1]),
                    Convert.ToString(read[2]), Convert.ToString(read[3]), Convert.ToString(read[4]), Convert.ToString(read[5]), Convert.ToInt16(read[6]));
                    retorno.Add(pro);
                }
            }
            return retorno;
        }
        public List<Persona>validarDatos(int idProyecto1)
        {
            List<Persona> retorno = new List<Persona>();
            SqlConnection cnn = new SqlConnection();
            ConexionDB c = new ConexionDB();
            cnn = c.conectar;
            SqlDataReader read;
            query = "SELECT p.IDPERSONA,p.CI_PER,p.NOMBREPERSONA,p.APELLIDOPERSONA,p.CORREOPERSONA,p.TELEFONOPERSONA FROM ESTUDIANTE e,Persona p WHERE e.IDPROYECTO=" + idProyecto1+" AND e.IDPERSONA=p.IDPERSONA";
            SqlCommand cmd = new SqlCommand(query, cnn);
            using (cmd)
            {
                read = cmd.ExecuteReader();
                while (read.Read())
                {
                    Persona pro = new Persona(Convert.ToInt16(read[0]), Convert.ToString(read[1]),
                    Convert.ToString(read[2]), Convert.ToString(read[3]), Convert.ToString(read[4]), Convert.ToString(read[5]),idProyecto1);
                    retorno.Add(pro);
                }
            }
            return retorno;
        }
        public int extraerId(String cedula)
        {
            int retorno=0;
            SqlConnection cnn = new SqlConnection();
            ConexionDB c = new ConexionDB();
            cnn = c.conectar;
            SqlDataReader read;
            query = "SELECT IDPERSONA FROM PERSONA WHERE CI_PER='"+cedula+"';";
            SqlCommand cmd = new SqlCommand(query, cnn);
            using (cmd)
            {
                read = cmd.ExecuteReader();
                while (read.Read())
                {
                    retorno = Convert.ToInt16(read[0]);
                }
            }
            return retorno;
        }
        public List<Persona> queryEstudiante(int idProyectoAux)
        {
            SqlConnection cnn = new SqlConnection();
            ConexionDB c = new ConexionDB();
            cnn = c.conectar;
            SqlDataReader read;
            List<Persona> retorno = new List<Persona>();
            query = "SELECT p.IDPERSONA,p.CI_PER,p.NOMBREPERSONA,p.APELLIDOPERSONA,p.CORREOPERSONA,p.TELEFONOPERSONA FROM ESTUDIANTE e,PERSONA p WHERE e.IDPROYECTO=" + idProyectoAux + "AND e.IDPERSONA=p.IDPERSONA";
            SqlCommand cmd = new SqlCommand(query, cnn);
            using (cmd)
            {
                read = cmd.ExecuteReader();
                while (read.Read())
                {
                    Persona pro = new Persona(Convert.ToInt16(read[0]), Convert.ToString(read[1]),
                    Convert.ToString(read[2]), Convert.ToString(read[3]), Convert.ToString(read[4]),Convert.ToString(read[5]), idProyectoAux);
                    retorno.Add(pro);
                }
            }
            return retorno;
        }
        public List<Persona> depurarLista(List<Persona> retorno,String privilegio)
        {
            SqlConnection cnn = new SqlConnection();
            ConexionDB c = new ConexionDB();
            cnn = c.conectar;
            List<Persona> retornoReal = new List<Persona>();
            SqlDataReader readID;
            foreach (Persona aux in retorno)
            {
                query = "SELECT IDPERSONA FROM CALIFICACION WHERE IDPERSONA=" + aux.idPersona + " AND privilegio='" + privilegio + "'";
                SqlCommand cmdID = new SqlCommand(query, cnn);
               
                using (cmdID)
                {
                    readID = cmdID.ExecuteReader();
                    if (readID.Read() == false)
                    {
                        retornoReal.Add(aux);
                    }
                    readID.Close();
                }
            }
            return retornoReal;
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
            return retorno;
        }
        public int idPoryecto(int id)
        {
            SqlConnection cnn = new SqlConnection();
            ConexionDB c = new ConexionDB();
            SqlDataReader read;
            int retorno=0;
            cnn = c.conectar;
            query = "SELECT IDPROYECTO FROM ESTUDIANTE WHERE IDPERSONA =" + id + "";
            SqlCommand cmd = new SqlCommand(query, cnn);
            using (cmd)
            {
                read = cmd.ExecuteReader();
                while (read.Read())
                {
                    retorno = Convert.ToInt16(read[0]);

                }
            }
            return retorno;
        }
        public List<Persona> mostrarEstudiantes(List<int> aux)
        {
            SqlConnection cnn = new SqlConnection();
            ConexionDB c = new ConexionDB();
            SqlDataReader read;
            List<Persona> retorno = new List<Persona>();
            cnn = c.conectar;
            foreach(int auxE in aux)
            {
                query = "SELECT p.IDPERSONA,p.NOMBREPERSONA,p.APELLIDOPERSONA,e.IDPROYECTO FROM ESTUDIANTE e, PERSONA p WHERE e.IDPERSONA = p.IDPERSONA AND e.IDPROYECTO ="+auxE+"";
                SqlCommand cmd = new SqlCommand(query, cnn);
                using (cmd)
                {
                    read = cmd.ExecuteReader();
                    while (read.Read())
                    {
                        Persona pro = new Persona(Convert.ToInt16(read[0]), Convert.ToString(read[1]), Convert.ToString(read[2]),
                            Convert.ToInt16(read[3]));
                        retorno.Add(pro);

                    }
                    read.Close();
                }

            }
            return retorno;
            
        }
    }
}
