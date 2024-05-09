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
    public partial class Agregar : Form
    {

        SqlConnection con = new SqlConnection("Data Source=DESKTOP-SIOEA9N\\MSSQLSERVER01;Initial Catalog=RegistrarEstudiantes;Integrated Security=True");
        SqlCommand cmd;
        SqlDataReader dr;

        public Agregar()
        {
            InitializeComponent();
        }

        private void Agregar_Load(object sender, EventArgs e)
        {

        }

        private void btnGuardar_Click(object sender, EventArgs e)
        {
            cmd = new SqlCommand("INSERT INTO ESTUDIANTE (NOMBRE, APELLIDO, FECHA_NACIMIENTO, FECHA_INGRESO, FECHA_SALIDA, CONTACTO, TIPO_CONTACTO, TECNICA) VALUES (@NOMBRE, @APELLIDO, @FECHA_NACIMIENTO, @FECHA_INGRESO, @FECHA_SALIDA, @CONTACTO, @TIPO_CONTACTO, @TECNICA)", con);

            cmd.Parameters.AddWithValue("@nombre", txtnombre.Text);
            cmd.Parameters.AddWithValue("@apellido", txtapellido.Text);
            cmd.Parameters.AddWithValue("@fecha_nacimiento", dtFechaNacimiento.Value.ToString("yyyy-MM-dd"));
            cmd.Parameters.AddWithValue("@fecha_ingreso", dtFechaIngreso.Value.ToString("yyyy-MM-dd"));
            cmd.Parameters.AddWithValue("@fecha_salida", dtFechaSalida.Value.ToString("yyyy-MM-dd"));
            cmd.Parameters.AddWithValue("@tecnica", cbtecnica.Text);
            cmd.Parameters.AddWithValue("@contacto", txtContacto.Text);
            cmd.Parameters.AddWithValue("@tipo_contacto", txtTipoContacto.Text);




            con.Open();
            int rowsAffected = cmd.ExecuteNonQuery();

            if (rowsAffected > 0)
            {

                MessageBox.Show("Estudiante agregado satisfactoriamente");
            }
            else
            {
                MessageBox.Show("No se pudo agregar el estudiante, inténtelo nuevamente");
            }

            con.Close();
        }

        private void btnexit_Click(object sender, EventArgs e)
        {
            Form formulario = new Estudiante();
            formulario.Show();
        }
    }
}

