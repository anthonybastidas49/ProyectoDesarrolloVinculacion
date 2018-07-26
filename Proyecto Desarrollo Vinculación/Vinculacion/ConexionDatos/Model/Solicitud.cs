    using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConexionDatos.Model
{
    public class Solicitud
    {
        public int IDSOLICITUD { get; set; }
        public int IDPROYECTO { get; set; }
        public int IDPERSONA { get; set; }
        public Solicitud(int iDSOLICITUD, int iDPROYECTO, int iDPERSONA)
        {
            IDSOLICITUD = iDSOLICITUD;
            IDPROYECTO = iDPROYECTO;
            IDPERSONA = iDPERSONA;
        }

        public Solicitud()
        {
        }
    }
}
