using Practica.LogicaNegocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Practica
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DatosPersona persona = new DatosPersona();
           
            dgpersonas.DataSource = persona.getPersonas();
            dgpersonas.DataBind();
             
        }
    }
}