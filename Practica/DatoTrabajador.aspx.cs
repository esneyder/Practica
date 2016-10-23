using Practica.LogicaNegocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Practica
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        DatosTrabajador trabajador = new DatosTrabajador();
        protected void Page_Load(object sender, EventArgs e)
        {
            getdatos();
        }

        protected void btnguardar_Click(object sender, EventArgs e)
        {
            trabajador.Rut = txtrut.Text.ToString();
            trabajador.Nombres = txtnombres.Text.ToString();
            trabajador.Direccion = txtdireccion.Text.ToString();
            trabajador.DiasTrabajados = int.Parse(txtdiastrabajados.Text.ToString());
            trabajador.HorasExtras =int.Parse (txthorasextras.Text.ToString());
            trabajador.EstadoCivil = ddlgenero.SelectedItem.ToString();
            trabajador.SumidoBase = txtsumidobase.Text.ToString();
            trabajador.NroCargaFam = txtnrocargafam.Text.ToString();

            if (trabajador.NuevoRegistro(trabajador) > 0)
            {
                msg.Text = "Registro ingresado correctamente.!";
                getdatos();
            }
            else {
                msg.Text = "Fallo el intento de registro!";
                
            }
        }

        private void getdatos()
        {
 
            dgvtrabajador.DataSource = trabajador.MostrarRegistros();
            dgvtrabajador.DataBind();
        }

        protected void btnconsultar_Click(object sender, EventArgs e)
        {
            if (txtrut.Text=="") {
                msg.Text = "Debe ingresar el Rut a consultar";
            }
            else {
                DatosTrabajador tr = trabajador.getPersona(txtrut.Text.ToString());
                if (tr == null)
                {
                    msg.Text = "No se encontreo el registro en la base de datos";
                }
                else {
                    txtrut.Text = tr.Rut;
                    txtnombres.Text = tr.Nombres;
                    txtdireccion.Text = tr.Direccion;
                    txtdiastrabajados.Text = Convert.ToString(tr.DiasTrabajados);
                    txthorasextras.Text = Convert.ToString(tr.HorasExtras);
                    ddlgenero.Text = tr.EstadoCivil;
                    txtsumidobase.Text = tr.SumidoBase;
                    txtnrocargafam.Text = tr.NroCargaFam;
                }
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            trabajador.Rut = txtrut.Text.ToString();
            trabajador.Nombres = txtnombres.Text.ToString();
            trabajador.Direccion = txtdireccion.Text.ToString();
            trabajador.DiasTrabajados = Convert.ToInt32(txtdiastrabajados.Text.ToString());
            trabajador.HorasExtras = Convert.ToInt32(txthorasextras.Text.ToString());
            trabajador.EstadoCivil = ddlgenero.SelectedItem.ToString();
            trabajador.SumidoBase = txtsumidobase.Text.ToString();
            trabajador.NroCargaFam = txtnrocargafam.Text.ToString();

            if (trabajador.ActualizarRegistro(trabajador) > 0)
            {
                msg.Text = "Registro actualizado correctamente.!";
                getdatos();
            }
            else {
                msg.Text = "Fallo el intento de actualización!";

            }
        }

        protected void btneliminar_Click(object sender, EventArgs e)
        {
            if (txtrut.Text=="")
            {
                msg.Text = "Debe ingresar el Rut del trabajador a eliminar";
            }
            else {
                if (trabajador.EliminarRegistro(txtrut.Text.ToString())> 0){
                    msg.Text = "Registro eliminado correctamente.!";
                    getdatos();
                }
                else
                {
                    msg.Text = "No se pudo eliminar el registro!";
                }
            }

            }
    }
}