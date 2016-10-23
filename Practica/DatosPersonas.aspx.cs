using Practica.LogicaNegocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Practica
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnguardar_Click(object sender, EventArgs e)
        {

            DatosPersona persona = new DatosPersona();
            Antecedentes antecedentes = new Antecedentes();
            ExperienciaLaboral experiencia = new ExperienciaLaboral();
            Capacitacion capacitacion = new Capacitacion();



            Boolean fileOK = false;
            String path = Server.MapPath("~/UploadedImages/");
            if (FUAvatar.HasFile)
            {
                String fileExtension =
                    System.IO.Path.GetExtension(FUAvatar.FileName).ToLower();
                String[] allowedExtensions =
                    {".gif", ".png", ".jpeg", ".jpg"};
                for (int i = 0; i < allowedExtensions.Length; i++)
                {
                    if (fileExtension == allowedExtensions[i])
                    {
                        fileOK = true;
                    }
                }
            }

            if (fileOK)
            {
                try
                {
                    FUAvatar.PostedFile.SaveAs(path
                        + FUAvatar.FileName);
                    mensaje.Text = "File uploaded!";

                    persona.Rut = txtRut.Text.ToString();
                    persona.Nombres = txtNombres.Text.ToString();
                    persona.Email = txtemail.Text.ToString();
                    persona.FechaNacimiento = txtfNacimiento.Text.ToString();
                    persona.Edad = int.Parse(txtEdad.Text.ToString());
                    persona.Region = txtRegion.Text.ToString();
                    persona.Profesion = txtprofesion.Text.ToString();
                    persona.Semestre = int.Parse(txtNumSemestre.Text.ToString());
                    persona.Direccion = txtDireccion.Text.ToString();
                    persona.Telefono = txtTelefono.Text.ToString();
                    persona.Celular = txtCelular.Text.ToString();
                    persona.Imagen = FUAvatar.FileName;

                    antecedentes.Institucion = txtinstitucionantecedente.Text.ToString();
                    antecedentes.numSemestre = int.Parse(txtnumsemestresantecedente.Text.ToString());
                    antecedentes.Titulo = txttituloantecedente.Text.ToString();
                    antecedentes.Rut = txtRut.Text.ToString();

                    experiencia.Institucion = txtinstitucionesperiencia.Text.ToString();
                    experiencia.Cargo = txtcargoexperiencia.Text.ToString();
                    experiencia.Periodo = txtperiodoexperiencia.Text.ToString();
                    experiencia.Rut = txtRut.Text.ToString();

                    capacitacion.Institucion = txtintitucioncapasitacion.Text.ToString();
                    capacitacion.NombreCurso = txtnombrecurso.Text.ToString();
                    capacitacion.NumHorasAcademicas = txthorasacademicas.Text.ToString();
                    capacitacion.Rut = txtRut.Text.ToString();
                    if (persona.NuevoRegistro(persona) > 0)
                    {
                        mensaje.Text = "Registro ingresado correctamente";
                        if (antecedentes.NuevoRegistro(antecedentes) > 0)
                        {
                            mensaje.Text = "Antecedente ingresado correctamente";
                        }
                        if (experiencia.NuevoRegistro(experiencia) > 0)
                        {
                            mensaje.Text = "Experiencia ingresado correctamente";
                        }
                        if (capacitacion.NuevoRegistro(capacitacion) > 0)
                        {
                            mensaje.Text = "Capacitacion ingresado correctamente";
                        }

                    }
                    else {
                        mensaje.Text = "Registro ingresado correctamente";
                    }
                }
                catch (Exception ex)
                {
                    mensaje.Text = "File could not be uploaded.";
                }
            }

            
        }
    }
}