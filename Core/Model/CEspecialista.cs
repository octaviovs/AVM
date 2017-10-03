using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Configuration;
using System.Data;
using System.Data.OleDb;
using System.Data.SqlClient;

using Core.Model;
namespace Core.Model
{
    public class CEspecialista
    {
        ManagerBD objManagerBD;
        public CEspecialista() {
            objManagerBD = new ManagerBD();
        }

        public bool ValidarUsuario(int opcion, ref DataSet objDatos, CEspecialista obEspecialista)
        {
            bool ExisteDatos = false;
            List<SqlParameter> lstParametros = new List<SqlParameter>();
            lstParametros.Add(new SqlParameter("@Op", SqlDbType.Int) { Value = opcion });
            lstParametros.Add(new SqlParameter("@Numero_Control", SqlDbType.Int) { Value = obEspecialista.Numero_Control });
            lstParametros.Add(new SqlParameter("@Contrasena", SqlDbType.NVarChar, 50) { Value = obEspecialista.Contrasena });

            objDatos = objManagerBD.GetData("PEspecialista", lstParametros.ToArray());

            if (objDatos.Tables.Count > 0)
            {
                ExisteDatos = true;
            }
            return ExisteDatos;
        }

        #region variables del especialista
        public string pk_Especialista { get; set; }
        public string Activo { get; set; }
        public string Cedula { get; set; }
        public string Numero_Control { get; set; }
        public string Contrasena { get; set; }
        public string Nombre { get; set; }
        public string Apellido { get; set; }
        public string fk_Especialidad { get; set; }
        public string Especialidad_texto { get; set; }
        public int Rol { get; set; }
        public string Correo { get; set; }

        #endregion

    }
}
