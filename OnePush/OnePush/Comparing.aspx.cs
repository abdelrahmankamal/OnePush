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
    public partial class Comparing : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Compare(object sender, EventArgs e)
        {
            try
            {
                String id = camera_id2.Value;
                HttpPostedFile postedFile = FileUpload2.PostedFile;
                Stream stream = postedFile.InputStream;
                BinaryReader binaryReader = new BinaryReader(stream);
                byte[] bytes = binaryReader.ReadBytes((int)stream.Length);
                DataSet1TableAdapters.camerasTableAdapter cameraTableAdapter = new DataSet1TableAdapters.camerasTableAdapter();
                DataSet1TableAdapters.watchlistTableAdapter watchlistTableAdapter = new DataSet1TableAdapters.watchlistTableAdapter();
                DataTable dt = watchlistTableAdapter.GetCriminalByPhoto(bytes);
                if (dt.Rows.Count > 0)
                {
                    DataRow r = dt.Rows[0];
                    String id2 = r.Field<string>("Id");
                    String name_ar = r.Field<string>("Name_ar");
                    String name_en = r.Field<string>("Name_en");
                    DataTable dt2 = cameraTableAdapter.GetCameraById(id);
                    if (dt2.Rows.Count > 0)
                    {
                        DataRow c = dt2.Rows[0];
                        String loc_ar = c.Field<string>("Location_ar");
                        String loc_en = c.Field<string>("Location_en");
                        results_id.Text = id2;
                        results_name_ar.Text = name_ar;
                        results_name_en.Text = name_en;
                        results_loc_ar.Text = loc_ar;
                        results_loc_en.Text = loc_en;

                    }
                    else
                    {
                        string script = "alert(\"Camera is not found!\");";
                        ScriptManager.RegisterStartupScript(this, GetType(),
                                              "ServerControlScript", script, true);
                    }
                }
                else
                {
                    string script = "alert(\"No Match is found!\");";
                    ScriptManager.RegisterStartupScript(this, GetType(),
                                          "ServerControlScript", script, true);
                }
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