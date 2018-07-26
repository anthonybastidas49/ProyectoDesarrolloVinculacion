using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConexionDatos.Model
{
    public class Persona
    {

        public int idPersona { get; set; }
        public String CI_PER { get; set; }
        public String NOMBREPERSONA { get; set; }
        public String APELLIDOPERSONA { get; set; }
        public String CORREOPERSONA { get; set; }
        public String TELEFONOPERSONA { get; set; }
        public Persona(int idPersona, string cI_PER, string nOMBREPERSONA, string aPELLIDOPERSONA, string cORREOPERSONA, string tELEFONOPERSONA)
        {
            this.idPersona = idPersona;
            CI_PER = cI_PER;
            NOMBREPERSONA = nOMBREPERSONA;
            APELLIDOPERSONA = aPELLIDOPERSONA;
            CORREOPERSONA = cORREOPERSONA;
            TELEFONOPERSONA = tELEFONOPERSONA;
        }
        public Persona()
        {

        }


    }
}
