using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using TecnicaDiseño;

namespace gestor_calificaciones.Forms
{
    public partial class RegistroDeDocentes : Form
    {
        public RegistroDeDocentes()
        {
            InitializeComponent();
            textBox1.TextChanged += textBox1_TextChanged;
            dataGridView1.DataSource = PersonaDAL.PresentarRegistro();
            refreshPantalla();

        }

        public static int EliminarPersona(int ID_DOCENTE)
        {
            int retorna = 0;

            using (SqlConnection conexion = BDGeneral.ObtenerConexion())
            {
                string query = "delete from DOCENTE where ID_DOCENTE=" + ID_DOCENTE + "";
                SqlCommand comando = new SqlCommand(query, conexion);

                retorna = comando.ExecuteNonQuery();
                return retorna;
            }
        }

        private void RegistroDeDocentes_Load(object sender, EventArgs e)
        {
            refreshPantalla();

        }

        private void pictureBox5_Click(object sender, EventArgs e)
        {

        }

        private void guna2Button3_Click(object sender, EventArgs e)
        {

        }

        private void pictureBox2_Click(object sender, EventArgs e)
        {
            Docente formulari0 = new Docente();
            formulari0.Show();
        }

        public void refreshPantalla()
        {
            dataGridView1.DataSource = PersonaDAL.PresentarRegistro();
        }

        private void guna2Button2_Click(object sender, EventArgs e)
        {
            if (dataGridView1.SelectedRows.Count == 1)
            {
                int ID_DOCENTE = Convert.ToInt32(dataGridView1.CurrentRow.Cells["ID_DOCENTE"].Value);
                int resultado = PersonaDAL.EliminarPersona(ID_DOCENTE);
                if (resultado > 0)
                {
                    MessageBox.Show("Eliminado con exito");
                }
                else
                {
                    MessageBox.Show("Error al eliminar");
                }

            }
            refreshPantalla();
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {
            string nombre = textBox1.Text.Trim(); // Obtener el nombre del TextBox y limpiar espacios en blanco

            // Verificar si el nombre no está vacío antes de buscar
            if (!string.IsNullOrEmpty(nombre))
            {
                // Realizar la búsqueda por nombre
                dataGridView1.DataSource = PersonaDAL.BuscarPorNombre(nombre);
            }
            else
            {
                // Si el texto está vacío, mostrar todos los registros
                dataGridView1.DataSource = PersonaDAL.PresentarRegistro();
            }
        }
    }
}
