using Practica.Datos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Practica.LogicaNegocio
{
    public class Antecedentes
    {
        public string Institucion { get; set; }
        public int numSemestre { get; set; }
        public string Titulo { get; set; }
        public string Rut { get; set; }


        public int NuevoRegistro(Antecedentes antecedente)
        {
            DatosSistema datos = new DatosSistema();
            string[] parametros = { "@operacion",
                                    "@institucion",
                                    "@numSemestres",
                                    "@titulo" ,
                                    "@rut" };
            return datos.Ejecutar("spAntecedentesAc", parametros, "I",
                                    antecedente.Institucion,
                                    antecedente.numSemestre,
                                    antecedente.Titulo,
                                    antecedente.Rut);
        }

    }
}
