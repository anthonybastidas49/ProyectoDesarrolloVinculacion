using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConexionDatos.Model
{
    public class Certificado
    {
        public Certificado(int idProyecto, int idPersona)
        {
            this.idProyecto = idProyecto;
            this.idPersona = idPersona;
        }

        public Certificado(int idProyecto, int idCertificado, int idPersona)
        {
            this.idProyecto = idProyecto;
            this.idCertificado = idCertificado;
            this.idPersona = idPersona;
        }

        public int idProyecto { get; set; }
        public int idCertificado { get; set; }
        public int idPersona { get; set; }

    }
}
