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

namespace gestor_calificaciones
{
    public partial class Estudiante : Form
    {
        private string connectionString = "Data Source=DESKTOP-SIOEA9N\\MSSQLSERVER01;Initial Catalog=RegistrarEstudiantes;Integrated Security=True";

        public Estudiante()
        {
            InitializeComponent();
        }

        private void guna2Panel1_Paint(object sender, PaintEventArgs e)
        {

        }

        private void btnbuscar_Click(object sender, EventArgs e)
        {
            // Obtener la tecnica y nombre a buscar
            string tecnica = cbtecnica.Text;
            string nombre = txtbuscar.Text;

            if (string.IsNullOrWhiteSpace(nombre))
            {
                MessageBox.Show("Por favor, ingresa un nombre para realizar la búsqueda.");
                return;
            }


            // Consulta SQL para buscar estudiantes
            string query = "SELECT NOMBRE, APELLIDO, FECHA_NACIMIENTO, FECHA_INGRESO, FECHA_SALIDA, CONTACTO, TIPO_CONTACTO, TECNICA FROM ESTUDIANTE WHERE NOMBRE = @NOMBRE AND TECNICA = @TECNICA";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@NOMBRE", nombre);
                command.Parameters.AddWithValue("@TECNICA", tecnica);

                try
                {
                    connection.Open();
                    SqlDataReader reader = command.ExecuteReader();

                    if (reader.HasRows)
                    {
                        // Crear un DataTable para almacenar los resultados
                        System.Data.DataTable dataTable = new System.Data.DataTable();
                        dataTable.Load(reader);

                        // Mostrar el resultado en el DataGridView
                        dataGridView1.DataSource = dataTable;
                    }
                    else
                    {
                        MessageBox.Show("No se encontraron resultados.");
                    }

                    reader.Close();
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Error al buscar en la base de datos: " + ex.Message);
                }
            }
        }

        private void btnagregar_Click(object sender, EventArgs e)
        {
            Form formulario = new Agregar();
            formulario.Show();
        }
    }
  }

