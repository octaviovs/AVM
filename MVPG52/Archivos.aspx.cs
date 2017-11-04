using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Core.Model;
using Core.Presenter;
using Core.View;
using System.Data;
using System.IO;

namespace MVPG52
{
    public partial class Archivos : System.Web.UI.Page
    {
       

        protected void Page_Load(object sender, EventArgs e)
        {
            CEspecialista objLoggerinf;

            objLoggerinf = (CEspecialista)Session["UsuarioLogeadoEspecialista"];
            if (objLoggerinf != null && objLoggerinf.Rol == 2)
            {
                
               
            }
            else
            {
                Response.Redirect("/Sesion.aspx", true);//
            }
        }
 

        protected void UploadFile(object sender, EventArgs e)
        {
            string carpeta = Server.MapPath("~/Files/");
            // carpeta = Path.Combine(Request.PhysicalApplicationPath, "Files");
            if (FileUpload1.PostedFile.FileName == "")
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "ErrorAlert", "alert('No se seleccino archivo');", true);
            }
            else
            {
                string extencion = Path.GetExtension(FileUpload1.PostedFile.FileName);
                switch (extencion.ToLower())
                {
                    case ".pdf": break;

                    default:
                        Page.ClientScript.RegisterStartupScript(this.GetType(), "ErrorAlert", "alert('Formato no correcto   >:v');", true);
                        return;
                }
                try
                {
                    string archivo = Path.GetFileName(FileUpload1.PostedFile.FileName);
                    FileUpload1.PostedFile.SaveAs(carpeta + "credencial" + extencion);
                }
                catch (Exception)
                {
                    throw;
                }
                finally
                {
                    Response.Redirect(Request.RawUrl);
                }
            }

        }
    }

}