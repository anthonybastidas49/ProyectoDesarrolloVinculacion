using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConexionDatos.Model
{
    public class Estudiante
    {
        public int idProyecto { get; set; }
        public int idPersona { get; set; }
        public int numHorasCumplidas { get; set; }
        public int idMaPersona { get; set; }
        public String nombre { get; set; }
        public String apellido { get; set; }
        public Estudiante()
        {

        }
        public Estudiante(int idProyecto, int idPersona, int numHorasCumplidas, int idMaPersona)
        {
            this.idProyecto = idProyecto;
            this.idPersona = idPersona;
            this.numHorasCumplidas = numHorasCumplidas;
            this.idMaPersona = idMaPersona;
        }

        public Estudiante(int idProyecto, int idPersona, int numHorasCumplidas, int idMaPersona, string nombre, string apellido) : this(idProyecto, idPersona, numHorasCumplidas, idMaPersona)
        {
            this.nombre = nombre;
            this.apellido = apellido;
        }
    }
}
