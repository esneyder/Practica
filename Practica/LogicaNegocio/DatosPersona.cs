using Practica.Datos;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Practica.LogicaNegocio
{
    public class DatosPersona
    {
        public string Rut { get; set; }
        public string Nombres { get; set; }
        public string Email { get; set; }
        public string FechaNacimiento { get; set; }
        public int Edad{ get; set; }
        public string Region { get; set; }
        public string Profesion { get; set; }
        public int Semestre { get; set; }
        public string Direccion { get; set; }
        public string Telefono { get; set; }
        public string Celular { get; set; }
        public string Imagen { get; set; }

        public int NuevoRegistro(DatosPersona persona)
        {
            DatosSistema datos = new DatosSistema();
            string[] parametros = {"@operacion",
                                    "@rut",
                                    "@nombres",
                                    "@email",
                                    "@fechaNacimiento",
                                    "@edad",
                                    "@region",
                                    "@profesion",
                                    "@numsemestre",
                                    "@direccion",
                                    "@telefono",
                                    "@celular",
                                    "@imagen" };

            return datos.Ejecutar("spdatospersonalesIA",            parametros,"I",
                persona.Rut,
                persona.Nombres,
                persona.Email,
                persona.FechaNacimiento,
                persona.Edad,
                persona.Region,
                persona.Profesion,
                persona.Semestre,
                persona.Direccion,
                persona.Telefono,
                persona.Celular,
                persona.Imagen);
        }

        public DataTable getPersonas() {
            DatosSistema dato = new DatosSistema();
            string[] parametro = { "@operacion", "@rut" };
            return dato.getDatos("spDatosPersonasSE", parametro, "Q",0);

        }


    }
}
