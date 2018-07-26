using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConexionDatos.Model
{ 
    public class Maestro
    {
        public int idProyecto { get; set; }
        public int idPersona { get; set; }
        public String cargo { get; set; }
        public String  carrera { get; set; }
        public String nombre { get; set; }
        public String apellido { get; set; }
        public Maestro(int idProyecto, int idPersona, string cargo, string carrera)
        {
            this.idProyecto = idProyecto;
            this.idPersona = idPersona;
            this.cargo = cargo;
            this.carrera = carrera;
        }

        public Maestro()
        {
        }

        public Maestro(int idProyecto, int idPersona, string cargo, string carrera, string nombre, string apellido) : this(idProyecto, idPersona, cargo, carrera)
        {
            this.nombre = nombre;
            this.apellido = apellido;
        }
    }
}
