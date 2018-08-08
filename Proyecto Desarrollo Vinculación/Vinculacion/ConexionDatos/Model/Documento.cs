using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConexionDatos.Model
{
    public class Documento
    {

        public int idProyecto { get; set; }
        public int idDocumento { get; set; }
        public int idPersona { get; set; }
        public String nombreDocumento { get; set; }
        public String estadoDocumento { get; set; }
        public byte[] documento { get; set; }
        public String extension { get; set; }
        public Documento(int idProyecto, int idDocumento, int idPersona, string nombreDocumento, string estadoDocumento, byte[] documento, string extension)
        {
            this.idProyecto = idProyecto;
            this.idDocumento = idDocumento;
            this.idPersona = idPersona;
            this.nombreDocumento = nombreDocumento;
            this.estadoDocumento = estadoDocumento;
            this.documento = documento;
            this.extension = extension;
        }

        public Documento(int idProyecto, int idDocumento, string nombreDocumento, string estadoDocumento)
        {
            this.idProyecto = idProyecto;
            this.idDocumento = idDocumento;
            this.nombreDocumento = nombreDocumento;
            this.estadoDocumento = estadoDocumento;
        }

        public Documento()
        {
        }

        public Documento(int idProyecto, int idPersona, string nombreDocumento, string estadoDocumento, byte[] documento, string extension)
        {
            this.idProyecto = idProyecto;
            this.idPersona = idPersona;
            this.nombreDocumento = nombreDocumento;
            this.estadoDocumento = estadoDocumento;
            this.documento = documento;
            this.extension = extension;
        }
    }
}
