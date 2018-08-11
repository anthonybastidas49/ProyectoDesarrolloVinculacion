using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConexionDatos.Model
{
    public class Planificacion
    {
        public Planificacion(string nomPlanificacion, string fechaInicion, string fechaFin, string lugar, int idProyecto, string estado)
        {
            this.nomPlanificacion = nomPlanificacion;
            this.fechaInicion = fechaInicion;
            this.fechaFin = fechaFin;
            this.lugar = lugar;
            this.idProyecto = idProyecto;
            this.estado = estado;
        }

        public Planificacion(int idPlanificacion, string nomPlanificacion, string fechaInicion, string fechaFin, string lugar, int idProyecto, string estado)
        {
            this.idPlanificacion = idPlanificacion;
            this.nomPlanificacion = nomPlanificacion;
            this.fechaInicion = fechaInicion;
            this.fechaFin = fechaFin;
            this.lugar = lugar;
            this.idProyecto = idProyecto;
            this.estado = estado;
        }

        public int idPlanificacion { get; set; }
        public String nomPlanificacion { get; set; }
        public String fechaInicion { get; set; }
        public String fechaFin { get; set; }
        public String lugar { get; set; }
        public int idProyecto { get; set; }
        public String estado { get; set; }
      
    }
}
