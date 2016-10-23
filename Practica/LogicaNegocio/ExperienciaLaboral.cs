using Practica.Datos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Practica.LogicaNegocio
{
    public class ExperienciaLaboral
    {

        public string Institucion { get; set; }
        public string Cargo { get; set; }
        public string Periodo { get; set; }
        public string Rut { get; set; }


        public int NuevoRegistro(ExperienciaLaboral experiencia)
        {
            DatosSistema datos = new DatosSistema();
            string[] parametros = { "@operacion",
                                    "@institucion",
                                    "@cargo",
                                    "@periodo" ,
                                    "@rut" };
            return datos.Ejecutar("spExperienciaLab", parametros, "I",
                                    experiencia.Institucion,
                                    experiencia.Cargo,
                                    experiencia.Periodo,
                                    experiencia.Rut);
        }
    }
}
