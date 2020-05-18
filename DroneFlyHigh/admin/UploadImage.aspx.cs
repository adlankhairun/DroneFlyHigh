using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DroneFlyHigh.admin
{
    public partial class UploadImage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            if (imageFileUploadControl.HasFile)
            {
                label1.Text = "Image uploaded successful";
                label1.ForeColor = System.Drawing.Color.ForestGreen;
            }

            else
            {
                label1.Text = "please insert image!";
                label1.ForeColor = System.Drawing.Color.Red;
            }

            string productId = Request.QueryString["Id"];

            string filename = productId + ".jpg";
            string saveLocation = Server.MapPath("~/ProductImages/" + filename);

            imageFileUploadControl.SaveAs(saveLocation);

        }
    }
}
          
                    
              