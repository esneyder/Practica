using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Practica.Datos
{
    public class Conexion

    {

        public SqlConnection con { get; set; }



        private string cadenaconexion()
        {

            return @"data source=(LocalDb)\MSSQLLocalDB;initial catalog=DefaultConnection;Integrated Security=True";

        }





        public SqlConnection conectar()
        {

            con = new SqlConnection(cadenaconexion());

            try

            {

                con.Open();

                return this.con;

            }

            catch (Exception)

            {

                return null;

            }

        }



        //desconectar



        public void desconectar()
        {

            if (this.con != null)

            {

                this.con.Close();

            }



        }

    }

}