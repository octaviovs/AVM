using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Core.Model;
using Core.View;
using System.Data;
using System.Data.SqlClient;

namespace Core.Presenter
{
    public class WEspecialista
    {
        ManagerBD Manager;
        IEspecialista ViewEspecialista;
        CEspecialista objEspecialista;

        public WEspecialista(IEspecialista InterfazEspecialista)
        {
            objEspecialista = new CEspecialista();
            Manager = new ManagerBD();
            ViewEspecialista = InterfazEspecialista;
        }

        public bool ExisteConexion()
        {
            bool ConexcionAvierta = false;
            SqlConnection sqlCon = Manager.GetConnection();
            if (sqlCon.State == ConnectionState.Open)
            {
                ConexcionAvierta = true;
            }
            return ConexcionAvierta;
        }

        public void ObtenerDatosDeEspecialista(int opcion, CEspecialista EspecialistaIngregsado)
        {
            DataSet datLoggerUserInformation = new DataSet();
            CEspecialista objAuthenticatedUser = new CEspecialista();
            bool ExisteUsuario = false;
            if (ExisteConexion())
            {
                ExisteUsuario = objAuthenticatedUser.ValidarUsuario(opcion, ref datLoggerUserInformation, EspecialistaIngregsado);
                if (ExisteUsuario)
                {
                    try
                    {
                        objAuthenticatedUser.pk_Especialista = datLoggerUserInformation.Tables[0].Rows[0][0].ToString();
                        objAuthenticatedUser.Activo = datLoggerUserInformation.Tables[0].Rows[0][1].ToString();
                        objAuthenticatedUser.Cedula = datLoggerUserInformation.Tables[0].Rows[0][2].ToString();
                        objAuthenticatedUser.Numero_Control = datLoggerUserInformation.Tables[0].Rows[0][3].ToString();
                        objAuthenticatedUser.Nombre = datLoggerUserInformation.Tables[0].Rows[0][5].ToString();
                        objAuthenticatedUser.Apellido = datLoggerUserInformation.Tables[0].Rows[0][6].ToString();
                        objAuthenticatedUser.Correo = datLoggerUserInformation.Tables[0].Rows[0][10].ToString();
                        objAuthenticatedUser.fk_Especialidad = datLoggerUserInformation.Tables[0].Rows[0][12].ToString();
                        objAuthenticatedUser.Rol = Convert.ToInt32(datLoggerUserInformation.Tables[0].Rows[0][13].ToString());
                        objAuthenticatedUser.Especialidad_texto = datLoggerUserInformation.Tables[0].Rows[0][15].ToString();

                        ViewEspecialista.UsuarioLogeadoEspecialista = objAuthenticatedUser;
                    }
                    catch (Exception)
                    {
                        ViewEspecialista.UsuarioLogeadoEspecialista = null;


                    }
                }
                else
                {
                    ViewEspecialista.Mensaje("No valido", 2);
                }
            }
            else
            {
                ViewEspecialista.Mensaje("No hay conexion en red", 2);
            }
        }

    }
}
