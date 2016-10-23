using Practica.Datos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Practica.LogicaNegocio
{
   public  class Capacitacion
    {

        public string Institucion { get; set; }
        public string NombreCurso { get; set; }
        public string NumHorasAcademicas { get; set; }
        public string Rut { get; set; }


        public int NuevoRegistro(Capacitacion capacitacion)
        {
            DatosSistema datos = new DatosSistema();
            string[] parametros = { "@operacion",
                                    "@institucion",
                                    "@nombreCurso",
                                    "@numHorasAcademicas" ,
                                    "@rut" };
            return datos.Ejecutar("spCapasitacion", parametros, "I",
                                    capacitacion.Institucion,
                                    capacitacion.NombreCurso,
                                    capacitacion.NumHorasAcademicas,
                                    capacitacion.Rut);
        }
    }
}
