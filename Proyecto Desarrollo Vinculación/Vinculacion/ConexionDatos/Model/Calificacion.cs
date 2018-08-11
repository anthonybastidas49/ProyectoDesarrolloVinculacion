using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConexionDatos.Model
{
    public class Calificacion
    {

        public int idCalificacion { get; set; }
        public int idProyecto { get; set; }
        public int idPersona { get; set; }
        public int dominio { get; set; }
        public int respeto { get; set; }
        public int puntualidad { get; set; }
        public int honestidad { get; set; }
        public String privilegio { get; set; }
        public String Nombre { get; set; }
        public String Apellido { get; set; }
        public Calificacion(int idCalificacion, int idProyecto, int idPersona, int dominio, int respeto, int puntualidad, int honestidad, string privilegio)
        {
            this.idCalificacion = idCalificacion;
            this.idProyecto = idProyecto;
            this.idPersona = idPersona;
            this.dominio = dominio;
            this.respeto = respeto;
            this.puntualidad = puntualidad;
            this.honestidad = honestidad;
            this.privilegio = privilegio;
        }

        public Calificacion()
        {
        }

        public Calificacion(int idProyecto, int idPersona, int dominio, int respeto, int puntualidad, int honestidad, string privilegio)
        {
            this.idProyecto = idProyecto;
            this.idPersona = idPersona;
            this.dominio = dominio;
            this.respeto = respeto;
            this.puntualidad = puntualidad;
            this.honestidad = honestidad;
            this.privilegio = privilegio;
        }

        public Calificacion(int idCalificacion, int idProyecto, int idPersona, int dominio, int respeto, int puntualidad, int honestidad, string privilegio, string nombre, string apellido) : this(idCalificacion, idProyecto, idPersona, dominio, respeto, puntualidad, honestidad, privilegio)
        {
            Nombre = nombre;
            Apellido = apellido;
        }

        public Calificacion(int idCalificacion, int dominio, int respeto, int puntualidad, int honestidad)
        {
            this.idCalificacion = idCalificacion;
            this.dominio = dominio;
            this.respeto = respeto;
            this.puntualidad = puntualidad;
            this.honestidad = honestidad;
        }

        public Calificacion(int idCalificacion, int idProyecto, int idPersona, int dominio, int respeto, int puntualidad, int honestidad) : this(idCalificacion, idProyecto, idPersona, dominio, respeto)
        {
            this.puntualidad = puntualidad;
            this.honestidad = honestidad;
        }
    }
}
