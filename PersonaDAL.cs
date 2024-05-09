using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TecnicaDiseño
{
    public class PersonaDAL
    {
        public static int AgregarPersona(Persona persona)
        {
            int retorna = 0;

            using (SqlConnection conexion = BDGeneral.ObtenerConexion())
            {
                // Construir la consulta SQL con parámetros
                string query = @"INSERT INTO DOCENTE (primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, cedula) 
                         VALUES (@primer_nombre, @segundo_nombre, @primer_apellido, @segundo_apellido, @cedula);
                         SELECT SCOPE_IDENTITY();"; // Esta consulta retorna el ID generado automáticamente

                SqlCommand comando = new SqlCommand(query, conexion);

                // Asignar valores a los parámetros
                comando.Parameters.AddWithValue("@primer_nombre", persona.primer_nombre);
                comando.Parameters.AddWithValue("@segundo_nombre", persona.segundo_nombre);
                comando.Parameters.AddWithValue("@primer_apellido", persona.primer_apellido);
                comando.Parameters.AddWithValue("@segundo_apellido", persona.segundo_apellido);
                comando.Parameters.AddWithValue("@cedula", persona.cedula);

                retorna = Convert.ToInt32(comando.ExecuteScalar()); // Ejecutar y obtener el ID generado

                // Asignar el ID generado a la persona
                persona.ID_DOCENTE = retorna;
            }

            return retorna;
        }


        public static List<Persona> PresentarRegistro()
        {
            List<Persona> Lista = new List<Persona>();
            using (SqlConnection conexion = BDGeneral.ObtenerConexion())
            {
                string query = "SELECT * FROM DOCENTE";
                SqlCommand comando = new SqlCommand(query, conexion);

                SqlDataReader reader = comando.ExecuteReader();

                while (reader.Read())
                {
                    Persona persona = new Persona();
                    persona.ID_DOCENTE = reader.GetInt32(0);
                    persona.primer_nombre = reader.GetString(1);
                    persona.segundo_nombre = reader.GetString(2);
                    persona.primer_apellido = reader.GetString(3);
                    persona.segundo_apellido = reader.GetString(4);
                    persona.cedula = reader.GetString(5);

                    Lista.Add(persona);
                }

                conexion.Close();
                return Lista;
            }
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

        public static List<Persona> BuscarPorNombre(string nombre)
        {
            List<Persona> Lista = new List<Persona>();

            using (SqlConnection conexion = BDGeneral.ObtenerConexion())
            {
                // Construir la consulta SQL con parámetros
                string query = "SELECT * FROM DOCENTE WHERE primer_nombre LIKE @Nombre";
                SqlCommand comando = new SqlCommand(query, conexion);

                // Asignar el valor al parámetro
                comando.Parameters.AddWithValue("@Nombre", "%" + nombre + "%");

                SqlDataReader reader = comando.ExecuteReader();

                while (reader.Read())
                {
                    Persona persona = new Persona();
                    persona.ID_DOCENTE = reader.GetInt32(0);
                    persona.primer_nombre = reader.GetString(1);
                    persona.segundo_nombre = reader.GetString(2);
                    persona.primer_apellido = reader.GetString(3);
                    persona.segundo_apellido = reader.GetString(4);
                    persona.cedula = reader.GetString(5);

                    Lista.Add(persona);
                }

                conexion.Close();
                return Lista;
            }
        }

    }
}
