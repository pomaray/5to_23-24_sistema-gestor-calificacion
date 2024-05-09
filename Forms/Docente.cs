using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using TecnicaDiseño;

namespace gestor_calificaciones.Forms
{
    public partial class Docente : Form
    {
        public Docente()
        {
            InitializeComponent();
        }

        private void Docente_Load(object sender, EventArgs e)
        {

        }

        private void guna2Button1_Click(object sender, EventArgs e)
        {
            Persona persona = new Persona();
            persona.primer_nombre = txtPrimerN.Text;
            persona.segundo_nombre = txtSegundoN.Text;
            persona.primer_apellido = txtPrimerN.Text;
            persona.segundo_apellido = txtSegundoA.Text;
            persona.cedula = txtCedula.Text;


            int result = PersonaDAL.AgregarPersona(persona);

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
    }
}
