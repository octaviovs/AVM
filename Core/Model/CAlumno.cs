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
    public class CAlumno
    {
        public CAlumno() {
            objManagerBD = new ManagerBD();
        }


        //Validar Alumno
        public bool ValidarAlumno(int opcion, ref DataSet objDatos, CAlumno objAlumno)
        {
            bool ExisteDatos = false;
            List<SqlParameter> lstParametros = new List<SqlParameter>();
            lstParametros.Add(new SqlParameter("@Op", SqlDbType.Int) { Value = opcion });
            lstParametros.Add(new SqlParameter("@alu_NumControl", SqlDbType.NVarChar, 50) { Value = objAlumno.alu_NumControl });
            lstParametros.Add(new SqlParameter("@alu_Password", SqlDbType.NVarChar, 50) { Value = objAlumno.alu_Password });
            lstParametros.Add(new SqlParameter("@alu_Rol", SqlDbType.NVarChar, 50) { Value = objAlumno.alu_Rol });
            objDatos = objManagerBD.GetData("PAlumno", lstParametros.ToArray());
            if (objDatos.Tables.Count > 0)
            {
                ExisteDatos = true;
            }
            return ExisteDatos;
        }
        public bool ActualizarDatos( ref DataSet objDatos, CAlumno objAlumno)
        {
            bool ExisteDatos = false;
            List<SqlParameter> lstParametros = new List<SqlParameter>();
            lstParametros.Add(new SqlParameter("@Op", SqlDbType.Int) { Value = 2 });
            lstParametros.Add(new SqlParameter("@alu_NumControl", SqlDbType.NVarChar, 50) { Value =  objAlumno.alu_NumControl });

            objDatos = objManagerBD.GetData("PAlumno", lstParametros.ToArray());
            if (objDatos.Tables.Count > 0)
            {
                ExisteDatos = true;
            }
            return ExisteDatos;
        }

        ManagerBD objManagerBD;

        //para consulta
        public string pk_Reservacion { get; set; }

        //Datos
        public int alu_E1 { get; set; }
        public int alu_E2 { get; set; }
        public int alu_E3 { get; set; }
        public int alu_ConestetoEncuesta { get; set; }
        public int alu_ID   { get; set; }
        public int alu_Rol { get; set; }
        public string alu_NumControl { get; set; }
        public string alu_Nombre { get; set; }
        public string alu_ApePaterno { get; set; }
        public string alu_ApeMaterno { get; set; }
        public string alu_Sexo { get; set; }
        public int esp_Id { get; set; }
        public int pes_Id { get; set; }
        public int alu_CreditosAcum { get; set; }
        public string alu_StatusAct { get; set; }
        public string alu_SemestreAct { get; set; }
        public int  per_ID_Ingreso { get; set; }
        public string alu_inscrito { get; set; }
        public string alu_Preinscrito { get; set; }
        public int alu_CreditosActu { get; set; }
        public string alu_AnioIngreso { get; set; }
        public int per_ID_Termin { get; set; }
        public string alu_AnioTermin { get; set; }
        public string alu_Password { get; set; }
        public string alu_MotivoBaja { get; set; }
        public string alu_ClaveAutorizSem { get; set; }
        public int alu_SemProrro { get; set; }
        public int per_ID_BajaTem { get; set; }
        public int alu_AnioBajaTem { get; set; }
        public string alu_FolioCertificado { get; set; }
        public string alu_LibroCertificado { get; set; }
        public string alu_aFojasCertificado { get; set; }
        public string alu_FechaCertificado { get; set; }
        public int moe_ID { get; set; }
        public int alu_SemAutorizado { get; set; }
        public int alu_CruceHoras { get; set; }
        public string alu_Foto  { get; set; }
        public string alu_FotoNombre { get; set; }
        public bool alu_InsBProtesta { get; set; }
        public bool alu_Bloqueado { get; set; }
        public int tut_ID { get; set; }
        public string alu_FechaNacimiento { get; set; }
    }
}
