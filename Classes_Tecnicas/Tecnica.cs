using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace gestor_calificaciones.Classes_Tecnicas
{
    public class Tecnica
    {
        public int ID_TECNICA { get; set; }
        public string nombre { get; set; }
        public string descripcion { get; set; }





        public Tecnica() { }

        public Tecnica(int ID_TECNICA, string nombre, string descripcion)
        {
            this.ID_TECNICA = ID_TECNICA;
            this.nombre = nombre;
            this.descripcion = descripcion;




        }
    }
}
