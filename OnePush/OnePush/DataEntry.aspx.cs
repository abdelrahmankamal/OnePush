using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;


namespace OnePush
{
    public partial class DataEntry : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void addCamera(object sender, EventArgs e)
        {
            String id = camera_id.Value;
            String location_en = camera_location_en.Value;
            String location_ar = camera_location_ar.Value;

            DataSet1TableAdapters.camerasTableAdapter cameraTableAdapter = new DataSet1TableAdapters.camerasTableAdapter();
            try
            {
                cameraTableAdapter.InsertInCamera(id, location_en, location_ar);
                string script = "alert(\"Successfully Inserted!\");";
                ScriptManager.RegisterStartupScript(this, GetType(),
                                      "ServerControlScript", script, true);
            }
            catch (Exception ex)
            {
                string script = "alert(\""+ ex.Message +"\");";
                ScriptManager.RegisterStartupScript(this, GetType(),
                                      "ServerControlScript", script, true);
            }
        }

        protected void addCriminal(object sender, EventArgs e)
        {
            String id = criminal_id.Value;
            String name_ar = criminal_name_ar.Value;
            String name_en = criminal_name_en.Value;
            HttpPostedFile postedFile = criminal_photo.PostedFile;
            Stream stream = postedFile.InputStream;
            BinaryReader binaryReader = new BinaryReader(stream);
            byte[] bytes = binaryReader.ReadBytes((int)stream.Length);

            DataSet1TableAdapters.watchlistTableAdapter watchlistTableAdapter = new DataSet1TableAdapters.watchlistTableAdapter();
            try
            {
                watchlistTableAdapter.InsertCriminal(id, bytes, name_ar, name_en);
                string script = "alert(\"Successfully Inserted!\");";
                ScriptManager.RegisterStartupScript(this, GetType(),
                                      "ServerControlScript", script, true);
            }
            catch (Exception ex)
            {
                string script = "alert(\"" + ex.Message + "\");";
                ScriptManager.RegisterStartupScript(this, GetType(),
                                      "ServerControlScript", script, true);
            }
        }

    }
}