using gestor_calificaciones.Classes_Tecnicas;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace gestor_calificaciones.Forms
{
    public partial class Crear_Tecnica : Form
    {
        public Crear_Tecnica()
        {
            InitializeComponent();
        }

        private void guna2Button1_Click(object sender, EventArgs e)
        {
            Tecnica tecnica = new Tecnica();
            tecnica.nombre = txtNombre.Text;
            tecnica.descripcion = txtDescripcion.Text;


            int result = TecnicaRE.AgregarTecnica(tecnica);

            if (result > 0)
            {
                MessageBox.Show("Exito al Guardar");

            }
            else
            {
                MessageBox.Show("Error al guardar");
            }
        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void Crear_Tecnica_Load(object sender, EventArgs e)
        {

        }
    }
}
