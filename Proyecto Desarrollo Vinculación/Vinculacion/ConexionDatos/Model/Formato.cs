using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConexionDatos.Model
{
   public  class Formato
    {
        public int idFormato { get; set; }
        public String nomFormato { get; set; }
        public Byte[] Documento { get; set; }
        public String Extension { get; set; }

        public Formato()
        {

        }

        public Formato(int idFormato, string nomFormato, byte[] documento)
        {
            this.idFormato = idFormato;
            this.nomFormato = nomFormato;
            Documento = documento;
        }

        public Formato(int idFormato, string nomFormato)
        {
            this.idFormato = idFormato;
            this.nomFormato = nomFormato;
        }

        public Formato(int idFormato, string nomFormato, byte[] documento, string extension) : this(idFormato, nomFormato, documento)
        {
            Extension = extension;
        }

        public byte[] retorno(int id)
        {
            ConexionDB c = new ConexionDB();
            SqlConnection cnx = c.conectar;
            String query = "SELECT DOCUMENTO FROM FORMATO WHERE IDFORMATO = " + id + "";
            SqlCommand cmd = new SqlCommand(query, cnx);
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                return (byte[])reader[0];
            }
            else
                return null;

        }
    }
}
