using Practica.Datos;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Practica.LogicaNegocio
{
    public class DatosTrabajador
    {
        public string Rut { get; set; }
        public string Nombres { get; set; }
        public string Direccion { get; set; }
        public int DiasTrabajados { get; set; }
        public int HorasExtras { get; set; }
        public string EstadoCivil { get; set; }
        public string SumidoBase { get; set; }
        public string NroCargaFam { get; set; }
        public int NuevoRegistro(DatosTrabajador trabajador)
        {
            DatosSistema datos = new DatosSistema();
            string[] parametros = { "@operacion",
                                    "@rut",
                                    "@nombres",
                                    "@direccion" ,
                                    "@diastrabajados",
                                    "@horasExtras",
                                    "@estadocivil",
                                    "@sumidobase",
                                    "@nrocargafam" };
            return datos.Ejecutar("spdatostrabajadorIA", parametros, "I",
                                    trabajador.Rut,
                                    trabajador.Nombres,
                                    trabajador.Direccion,
                                    trabajador.DiasTrabajados,
                                    trabajador.HorasExtras,
                                    trabajador.EstadoCivil,
                                    trabajador.SumidoBase,
                                    trabajador.NroCargaFam);
        }

        public int ActualizarRegistro(DatosTrabajador trabajador)
        {
            DatosSistema datos = new DatosSistema();
            string[] parametros = { "@operacion",
                                    "@rut",
                                    "@nombres",
                                    "@direccion" ,
                                    "@diastrabajados",
                                    "@horasExtras",
                                    "@estadocivil",
                                    "@sumidobase",
                                    "@nrocargafam" };
            return datos.Ejecutar("spdatostrabajadorIA", parametros,                            "A",
                                    trabajador.Rut,
                                    trabajador.Nombres,
                                    trabajador.Direccion,
                                    trabajador.DiasTrabajados,
                                    trabajador.HorasExtras,
                                    trabajador.EstadoCivil,
                                    trabajador.SumidoBase,
                                    trabajador.NroCargaFam);
        }


        public int EliminarRegistro(string rut) {

            DatosSistema datos = new DatosSistema();
            string[] parametros = { "@operacion", "@rut" };

            return datos.Ejecutar("spdatostrabajadorSE", parametros, "E", rut);
        }
        public DataTable MostrarRegistros()
        {

            DatosSistema datos = new DatosSistema();

            string[] parametros = { "@operacion", "@rut" };

            return datos.getDatos("spdatostrabajadorSE", parametros, "q", 0);

        }
        public DatosTrabajador getPersona(string rut)
        {

            DataTable dt = new DataTable();
            DatosSistema datos = new DatosSistema();

            string[] parametros = { "@operacion", "@rut" };
            dt = datos.getDatos("spdatostrabajadorSE", parametros, "S", 0);

            DatosTrabajador p = new DatosTrabajador();
            foreach (DataRow fila in dt.Rows)
            {

                p.Rut = fila["Rut"].ToString();
                p.Nombres = fila["Nombres"].ToString();
                p.Direccion = fila["Direccion"].ToString();
                p.DiasTrabajados = Convert.ToInt32(fila["DiasTrabajados"].ToString());
                p.HorasExtras = Convert.ToInt32(fila["HorasExtras"].ToString());
                p.EstadoCivil = fila["EstadoCivil"].ToString();
                p.SumidoBase = fila["SumidoBase"].ToString();
                p.NroCargaFam = fila["NroCargaFam"].ToString();

            }

            return p;



        }

    }
}

