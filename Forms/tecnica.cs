using gestor_calificaciones.Classes_Tecnicas;
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

namespace gestor_calificaciones.Forms
{
    public partial class tecnica : Form
    {
        public tecnica()
        {
            InitializeComponent();
            string nombre = guna2TextBox2.Text;
            dataGridView1.DataSource = TecnicaRE.BuscarTecnicaPorNombre(nombre);

        }

        private void tecnica_Load(object sender, EventArgs e)
        {
            refreshPantalla();
        }

        public static int EliminarTecnica(int ID)
        {
            int retorna = 0;

            using (SqlConnection conexion = BD.ObtenerConexion())
            {
                string query = "delete from TECNICA where ID_TECNICA =" + ID + "";
                SqlCommand comando = new SqlCommand(query, conexion);

                retorna = comando.ExecuteNonQuery();
                return retorna;
            }
        }

        private void pictureBox4_Click(object sender, EventArgs e)
        {
            Crear_Tecnica formulario = new Crear_Tecnica();
            formulario.Show();
        }

        private void pictureBox2_Click(object sender, EventArgs e)
        {
            Form3 formulario = new Form3();
            formulario.Show();

        }

        private void guna2Button2_Click(object sender, EventArgs e)
        {
            if (dataGridView1.SelectedRows.Count == 1)
            {
                int ID_TECNICA = Convert.ToInt32(dataGridView1.CurrentRow.Cells["ID_TECNICA"].Value);
                int resultado = TecnicaRE.EliminarTecnica(ID_TECNICA);
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
        public void refreshPantalla()
        {
            dataGridView1.DataSource = TecnicaRE.MostrarTecnica();
        }

        private void guna2Button1_Click(object sender, EventArgs e)
        {
            string nombre = guna2TextBox2.Text;
            dataGridView1.DataSource = TecnicaRE.BuscarTecnicaPorNombre(nombre);
        }
    }
}
