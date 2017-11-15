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
    public partial class Archivos : System.Web.UI.Page,IEspecialista
    {
        CEspecialista objLoggerinf;
        WEspecialista vistaEspecialista;

        protected void Page_Load(object sender, EventArgs e)
        {
            

            objLoggerinf = (CEspecialista)Session["UsuarioLogeadoEspecialista"];
            if (objLoggerinf != null && objLoggerinf.Rol == 2)
            {
                vistaEspecialista = new WEspecialista(this);
            }
            else
            {
                Response.Redirect("/Sesion.aspx", true);//
            }
        }
 

        protected void UploadFile(object sender, EventArgs e)
        {
            string carpeta = Server.MapPath("~/Files/");//carpeta de archivos    
            string nombreReal =  TextBoxNombre.Text!="" ? TextBoxNombre.Text : FileUpload1.PostedFile.FileName;


       
            if (FileUpload1.PostedFile.FileName == "")
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "ErrorAlert", "alert('No se seleccino archivo');", true);
            }
            else
            {
                if (File.Exists(Server.MapPath("~/Files/" + nombreReal + ".pdf")))
                {
                    ClientScriptManager CSM = Page.ClientScript;
                   
                        string strconfirm = "if(!window.confirm('Desea reemplazarlo?')){window.location.href='Archivos.aspx'}";
                    // CSM.RegisterClientScriptBlock(this.GetType(), "Confirm", strconfirm, false);
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "ErrorAlert", strconfirm, true);
                    if (true)
                    {
                      //  cargarArchivo(carpeta, nombreReal);
                    }
                }
                else {
                    cargarArchivo(carpeta, nombreReal);
                  
                }
            }
       }
        private void cargarArchivo(string carpeta,string nombreReal) {
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
                FileUpload1.PostedFile.SaveAs(carpeta + nombreReal + extencion);
            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                Response.Redirect(Request.RawUrl);
                TextBoxNombre.Text = "";
            }

        }
        public void OnConfirm(object sender, EventArgs e)
        {
            string confirmValue = Request.Form["confirm_value"];

            if (confirmValue == "Yes")
            {
                this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('You clicked YES!')", true);
            }
            else
            {
                this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('You clicked NO!')", true);
            }
        }

        #region IEspecialista
        public CEspecialista UsuarioLogeadoEspecialista { get => throw new NotImplementedException(); set => throw new NotImplementedException(); }

        public void Mensaje(string Mensaje, int tipo)
        {
            throw new NotImplementedException();
        }
        #endregion

    }

}