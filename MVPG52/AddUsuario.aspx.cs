using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Core.Model;
using Core.Presenter;
using Core.View;

namespace MVPG52
{
    public partial class AddUsuario : System.Web.UI.Page,IEspecialista,IConsulta
    {
        CEspecialista objLoggerinf;
        WEspecialista vistaEspecialista;

        protected void Page_Load(object sender, EventArgs e)
        {

            objLoggerinf = (CEspecialista)Session["UsuarioLogeadoEspecialista"];
            if (objLoggerinf != null && objLoggerinf.Rol == 2)
            {
                vistaEspecialista = new WEspecialista(this);

               // vistaEspecialista.ObtenerDatosDeEspecialista(2,objLoggerinf);
            }
            else
            {
                Response.Redirect("/Sesion.aspx", true);//
            }


        }

        #region Especialista
        public CEspecialista UsuarioLogeadoEspecialista {
            get {
                CEspecialista ObjEspecialista = new CEspecialista();
                ObjEspecialista.Activo = "1";
                ObjEspecialista.Cedula = "";
                ObjEspecialista.Numero_Control = "";
                ObjEspecialista.Contrasena = "";
                ObjEspecialista.Nombre = "";
                ObjEspecialista.Apellido = "";
                ObjEspecialista.FechaNacimiento = "";
                ObjEspecialista.Direccion = "";
                ObjEspecialista.Correo = "";
                ObjEspecialista.Telefono = "";
                ObjEspecialista.fk_Especialidad = "";
                ObjEspecialista.Rol = 0;

                return ObjEspecialista ;
            }
            set {
            }
        }
        public DataSet Empleados {
            set {
                if (value!=null)
                {
                    GridViewEmpleados.DataSource = value;
                    GridViewEmpleados.DataBind();
                }
            }
        }

        public void Mensaje(string Mensaje, int tipo)
        {
           
        }
        #endregion
        #region

        public CConsulta DatosPasienteConsulta => throw new NotImplementedException();

        public CConsulta NewConsulta => throw new NotImplementedException();

        public int EliminarConsulta => throw new NotImplementedException();

        public DataSet ListadoConsulta { set => throw new NotImplementedException(); }
        public DataSet HistorialCitas { set => throw new NotImplementedException(); }
        public DataSet Odontograma { set => throw new NotImplementedException(); }
        public List<CConsulta> LlenarComboEspecialidad { get => throw new NotImplementedException(); set => throw new NotImplementedException(); }
        public List<CConsulta> LlenarComboEspecialista { get => throw new NotImplementedException(); set => throw new NotImplementedException(); }
        public List<CConsulta> LlenarComboHora { get => throw new NotImplementedException(); set => throw new NotImplementedException(); }
        public List<CConsulta> LlenarEnfermedad { get => throw new NotImplementedException(); set => throw new NotImplementedException(); }
        
        #endregion

    }
}