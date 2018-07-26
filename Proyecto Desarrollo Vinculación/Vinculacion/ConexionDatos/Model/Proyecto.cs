using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConexionDatos.Model
{
    public class Proyecto
    {
        public int idProyecto { get; set; }
        public String nomProyecto { get; set; }
        public DateTime fechaInicio { get; set; }
        public String nomComunidad { get; set; }
        public int numMaxestudin { get; set; }
        public DateTime fechaFin { get; set; }
        public int MaxMaestro { get; set; }
        public String carrera { get; set; }
        public Proyecto()
        {

        }
        public Proyecto(int idProyecto, string nomProyecto, DateTime fechaInicio, string nomComunidad, int numMaxestudin, DateTime fechaFin, int maxMaestro,String carrera)
        {
            this.idProyecto = idProyecto;
            this.nomProyecto = nomProyecto;
            this.fechaInicio = fechaInicio;
            this.nomComunidad = nomComunidad;
            this.numMaxestudin = numMaxestudin;
            this.fechaFin = fechaFin;
            this.MaxMaestro = maxMaestro;
            this.carrera = carrera;
        }
    }
}
