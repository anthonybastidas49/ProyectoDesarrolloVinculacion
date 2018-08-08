using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConexionDatos.Model
{
    public class Actividad
    {
        public int idActividad { get; set; }
        public int idPoryecto { get; set; }
        public int idPersona { get; set; }
        public String diaPractica { get; set; }
        public int numHoras { get; set; }
        public String descripcion { get; set; }
        public Actividad(int idActividad, int idPoryecto, int idPersona, string diaPractica, int numHoras, string descripcion)
        {
            this.idActividad = idActividad;
            this.idPoryecto = idPoryecto;
            this.idPersona = idPersona;
            this.diaPractica = diaPractica;
            this.numHoras = numHoras;
            this.descripcion = descripcion;
        }

        public Actividad()
        {
        }

        public Actividad(int idPoryecto, int idPersona, string diaPractica, int numHoras, string descripcion)
        {
            this.idPoryecto = idPoryecto;
            this.idPersona = idPersona;
            this.diaPractica = diaPractica;
            this.numHoras = numHoras;
            this.descripcion = descripcion;
        }
    }
}
