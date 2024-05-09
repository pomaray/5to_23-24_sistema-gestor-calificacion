using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TecnicaDiseño
{
    public class Persona
    {
        public int ID_DOCENTE { get; set; }
        public string primer_nombre { get; set; }
        public string segundo_nombre { get; set; }

        public string primer_apellido { get; set; }

        public string segundo_apellido { get; set; }

        public string cedula { get; set; }




        public Persona() { }

        public Persona(int ID_DOCENTE, string primer_nombre, string segundo_nombre, string primer_apellido, string segundo_apellido, string cedula, int ID_AC1, int ID_TE1, int ID_MATERIA1)
        {
            this.ID_DOCENTE = ID_DOCENTE;
            this.primer_nombre = primer_nombre;
            this.segundo_nombre = segundo_nombre;
            this.primer_apellido = primer_apellido;
            this.segundo_apellido = segundo_apellido;
            this.cedula = cedula;





        }
    }
}
