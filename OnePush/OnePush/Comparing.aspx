<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Comparing.aspx.cs" Inherits="OnePush.Comparing" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
          <meta charset="utf-8" />
          <meta name="viewport" content="width=device-width, initial-scale=1" />
          <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
          <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
          <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<body>
    <form id="form1" runat="server">
    <div class="jumbotron text-center" style="background:url(../images/Crime.jpg); font-family:'Segoe UI';">
    <h1 style="color:#fb7f09">CRIME SEARCH</h1>
    <p>You can find from here the location of the criminal using our tracking and matching system</p> 
    </div>
    <div class="container" style="font-family:'Segoe UI';">       
    <table class="table">
    <thead>
      <tr>
        <th><h3>Search</h3></th>
        <th><h3>Results</h3></th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td style="width:50%;">
            <div class="compare-form" style="width:90%;margin-top:3%;">
            <label for="camera_id">Camera ID</label> 
            <input type="text" class="form-control" id="camera_id2" runat="server"/> <br />
            <label for="criminal_photo">Upload Photo</label>
            <asp:FileUpload id="FileUpload2" runat="server" Class="btn" />
            <label for="submit_button"></label>
            <div style="text-align:center;margin-left:2%;">
                <button id="Button3" type="submit" class="btn btn-primary" runat="server" style="width:50%;" onserverclick="Compare">
                Find
                </button>
            </div>
            </div>
        </td>
        <td>
           <table class="table">
                <tbody>
                  <tr>
                    <td style="font-weight:bold;">
                        <span class="glyphicon glyphicon-credit-card"></span>
                        &nbsp;&nbsp;Criminal ID</td>
                      <td><asp:Label for="CriminalID" runat="server" ID="results_id" style="color:#3c9ae4"></asp:Label><br /></td>
                  </tr>
                  <tr>
                    <td style="font-weight:bold;">
                        <span class="glyphicon glyphicon-user"></span>
                        &nbsp;&nbsp;Criminal Name</td>
                      <td><asp:Label for="CriminalID" runat="server" ID="results_name_en" style="color:#3c9ae4"></asp:Label><br /></td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                    <td><asp:Label for="CriminalID" runat="server" ID="results_name_ar" style="font-family:'GE SS Two';font-style:normal;color:#3c9ae4"></asp:Label><br />
                  </td>
                  </tr>
                  <tr>
                    <td style="font-weight:bold;">
                        <span class="glyphicon glyphicon-map-marker"></span>
                        &nbsp;&nbsp;Camera Location</td>
                    <td><asp:Label for="CriminalID" runat="server" ID="results_loc_en" style="color:#3c9ae4"></asp:Label><br /></td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                    <td><asp:Label for="CriminalID" runat="server" ID="results_loc_ar" style="font-family:'GE SS Two';font-style:normal;color:#3c9ae4"></asp:Label></td>
                  </tr>
                  <tr>
                    <td></td>
                      <td></td>
                  </tr>
                </tbody>
              </table>
        </td>
      </tr>
    </tbody>
    </table>
    </div>
    </form>
</body>
</html>
