using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace gestor_calificaciones.Classes_Tecnicas
{
    public class TecnicaRE
    {

        public static int AgregarTecnica(Tecnica tecnica)
        {
            int retorna = 0;

            using (SqlConnection conexion = BD.ObtenerConexion())
            {
                string query = "INSERT INTO TECNICA (nombre, descripcion) VALUES ('" + tecnica.nombre + "', '" + tecnica.descripcion + "')";
                SqlCommand comando = new SqlCommand(query, conexion);

                retorna = comando.ExecuteNonQuery();
            }

            return retorna;
        }



        public static List<Tecnica> MostrarTecnica()
        {
            List<Tecnica> Lista = new List<Tecnica>();
            using (SqlConnection conexion = BD.ObtenerConexion())
            {
                string query = "SELECT * FROM TECNICA";
                SqlCommand comando = new SqlCommand(query, conexion);

                SqlDataReader reader = comando.ExecuteReader();

                while (reader.Read())
                {
                    Tecnica tecnica = new Tecnica();
                    tecnica.ID_TECNICA = reader.GetInt32(0);
                    tecnica.nombre = reader.GetString(1);
                    tecnica.descripcion = reader.GetString(2);


                    Lista.Add(tecnica);
                }

                conexion.Close();
                return Lista;
            }
        }

        public static int ModificarTecnica(Tecnica tecnica)
        {
            int result = 0;
            using (SqlConnection conexion = BD.ObtenerConexion())
            {
                string query = "update TECNICA set nombre='" + tecnica.nombre + "', descripcion='" + tecnica.descripcion + "', where ID_TECNICA= " + tecnica.ID_TECNICA + " ";
                SqlCommand comando = new SqlCommand(query, conexion);

                result = comando.ExecuteNonQuery();
                conexion.Close();
            }
            return result;
        }
        public static int EliminarTecnica(int ID_TECNICA)
        {
            int retorna = 0;

            using (SqlConnection conexion = BD.ObtenerConexion())
            {
                string query = "DELETE FROM TECNICA WHERE ID_TECNICA  =" + ID_TECNICA + "";
                SqlCommand comando = new SqlCommand(query, conexion);

                retorna = comando.ExecuteNonQuery();
                return retorna;
            }
        }

        public static List<Tecnica> BuscarTecnicaPorNombre(string nombre)
        {
            List<Tecnica> Lista = new List<Tecnica>();
            using (SqlConnection conexion = BD.ObtenerConexion())
            {
                string query = "SELECT * FROM TECNICA WHERE nombre LIKE @Nombre";
                SqlCommand comando = new SqlCommand(query, conexion);
                comando.Parameters.AddWithValue("@Nombre", "%" + nombre + "%");

                SqlDataReader reader = comando.ExecuteReader();

                while (reader.Read())
                {
                    Tecnica tecnica = new Tecnica();
                    tecnica.ID_TECNICA = reader.GetInt32(0);
                    tecnica.nombre = reader.GetString(1);
                    tecnica.descripcion = reader.GetString(2);

                    Lista.Add(tecnica);
                }

                conexion.Close();
                return Lista;
            }
        }
    }
}
