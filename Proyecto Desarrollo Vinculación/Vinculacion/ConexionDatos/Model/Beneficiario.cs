using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConexionDatos.Model
{
    public class Beneficiario
    {
        public Beneficiario(int idProyecto, string nomPersona, string apellidoPersona, string cedula, string contraseña)
        {
            this.idProyecto = idProyecto;
            this.nomPersona = nomPersona;
            this.apellidoPersona = apellidoPersona;
            this.cedula = cedula;
            this.contraseña = contraseña;
        }

        public int idProyecto { get; set; }
        public String nomPersona { get; set; }
        public String apellidoPersona { get; set; }
        public String cedula { get; set; }
        public String contraseña { get; set; }

    }
}
