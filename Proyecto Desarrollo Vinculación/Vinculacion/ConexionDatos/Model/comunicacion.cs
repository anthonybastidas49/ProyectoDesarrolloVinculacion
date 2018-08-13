using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Net.Mail;
namespace ConexionDatos.Model
{
    public class comunicacion
    {
        public void enviarMensaje(String receptor,String Proyecto)
        {
           MailMessage mail = new MailMessage();
            mail.To.Add(receptor);
            mail.From = new MailAddress("desarrollosistemasespe@gmail.com", "NOTIFICACIÓN DE ACEPTACIÓN", System.Text.Encoding.UTF8);
            mail.Subject = "Aceptación al proyecto ";
            mail.SubjectEncoding = System.Text.Encoding.UTF8;
            mail.Body = "Mensaje autoGenerado para la notificación de aceptacion en el proyecto:" +
                ""+Proyecto+",a formar parate del grupo de estudiantes para su cumplimiento.Gracias Por su atención";
            mail.BodyEncoding = System.Text.Encoding.UTF8;
            mail.IsBodyHtml = true;
            mail.Priority = MailPriority.High;
            SmtpClient client = new SmtpClient();
            client.Credentials = new System.Net.NetworkCredential("desarrollosistemasespe@gmail.com", "1723551055");
            client.Port = 587;
            client.Host = "smtp.gmail.com";
            client.EnableSsl = true;
            try
            {
                client.Send(mail);
                
            }
            catch (Exception ex)
            {
                Exception ex2 = ex;
                string errorMessage = string.Empty;
                while (ex2 != null)
                {
                    errorMessage += ex2.ToString();
                    ex2 = ex2.InnerException;
                }
                
            }
        }
    }
}
