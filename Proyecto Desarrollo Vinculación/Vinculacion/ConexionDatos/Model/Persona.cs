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
        public int idProyecto { get; set; }

        public Persona(int idPersona, string cI_PER, string nOMBREPERSONA, string aPELLIDOPERSONA, string cORREOPERSONA, string tELEFONOPERSONA)
        {
            this.idPersona = idPersona;
            CI_PER = cI_PER;
            NOMBREPERSONA = nOMBREPERSONA;
            APELLIDOPERSONA = aPELLIDOPERSONA;
            CORREOPERSONA = cORREOPERSONA;
            TELEFONOPERSONA = tELEFONOPERSONA;
        }
        public Persona(int idPersona, string cI_PER, string nOMBREPERSONA, string aPELLIDOPERSONA, string cORREOPERSONA, string tELEFONOPERSONA, int idProyecto)
        {
            this.idPersona = idPersona;
            CI_PER = cI_PER;
            NOMBREPERSONA = nOMBREPERSONA;
            APELLIDOPERSONA = aPELLIDOPERSONA;
            CORREOPERSONA = cORREOPERSONA;
            TELEFONOPERSONA = tELEFONOPERSONA;
            this.idProyecto = idProyecto;
        }
        public Persona()
        {

        }
        public Persona(int idPersona, string nOMBREPERSONA, string aPELLIDOPERSONA, int idProyecto)
        {
            this.idPersona = idPersona;
            NOMBREPERSONA = nOMBREPERSONA;
            APELLIDOPERSONA = aPELLIDOPERSONA;
            this.idProyecto = idProyecto;
        }
        public Persona(int idPersona, string cI_PER, string nOMBREPERSONA, string aPELLIDOPERSONA)
        {
            this.idPersona = idPersona;
            CI_PER = cI_PER;
            NOMBREPERSONA = nOMBREPERSONA;
            APELLIDOPERSONA = aPELLIDOPERSONA;
        }

        public Persona(string cI_PER, string nOMBREPERSONA, string aPELLIDOPERSONA, string cORREOPERSONA, string tELEFONOPERSONA)
        {
            CI_PER = cI_PER;
            NOMBREPERSONA = nOMBREPERSONA;
            APELLIDOPERSONA = aPELLIDOPERSONA;
            CORREOPERSONA = cORREOPERSONA;
            TELEFONOPERSONA = tELEFONOPERSONA;
        }
    }
}
