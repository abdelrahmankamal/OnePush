<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DataEntry.aspx.cs" Inherits="OnePush.DataEntry" %>

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
       <div style="font-family:'Segoe UI';">
       <div>
       <div class="jumbotron text-center" style="background:url(../images/Crime.jpg)">
       <h1 style="color:#fb7f09">ONE PUSH</h1>
       <h2 style="color:#3c9ae4">Investigation Tool</h2>
       <p>You can now limit the crimes in the city by tracking them using our tool</p> 
       </div>
       </div>
       
       <div class="container">
       <div class="row">
       <div class="col-md-4">
       <h2>Cameras Database</h2>
       <p>You can enter from here the new cameras added to the system in order have a greater coverage</p>
           <div class="container">
       <button type="button" class="btn btn-default btn-lg" data-toggle="modal" data-target="#myModal">
           <span class="glyphicon glyphicon-camera"></span>
           &nbsp; Add Camera &nbsp
       </button>
       <div class="modal fade" id="myModal" role="dialog">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal">&times;</button>
              <h4 class="modal-title">Camera Data</h4>
            </div>
            <div class="modal-body">
              <div class="camera-form" style="width:80%;margin-left:10%;margin-top:3%;">
                 <label for="camera_id">Camera ID</label>
                 <input type="text" class="form-control" id="camera_id" runat="server" /> <br />
                 <label for="camera_location_en">Camera Location</label>
                 <input type="text" class="form-control" placeholder="Enter the address in english" id="camera_location_en" runat="server" /> <br />
                 <label for="camera_location_ar" style="font-family:'GE SS TV';font-style:normal;">مكان الكاميرا</label>
                 <input type="text" class="form-control" placeholder="ادخل العنوان باللغة العربية" style="font-family:'GE SS TV';font-style:normal;" id="camera_location_ar" runat="server" />
                 <label for="submit_button"></label>
                 <button id="Button1" type="submit" class="btn btn-warning btn-block" runat="server" onserverclick="addCamera">Add to Cameras</button>
               </div>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
          </div>
      
        </div>
      </div>
       </div>
       </div>
       <div class="col-md-4">
       <h2>Criminals Database</h2>
       <p>You can add from here the new discovered criminals to the system to limit their actions and crimes</p>
           <div class="container">
       <button type="button" class="btn btn-default btn-lg" data-toggle="modal" data-target="#myModal2">
           <span class="glyphicon glyphicon-user"></span>
           &nbsp; Add Criminal &nbsp;
       </button>
       <div class="modal fade" id="myModal2" role="dialog">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal">&times;</button>
              <h4 class="modal-title">Criminal Data</h4>
            </div>
            <div class="modal-body">
                      <div class="watchlist-form" style="width:80%;margin-left:10%;margin-top:3%;">
                          <label for="criminal_id">Criminal ID</label> 
                          <input type="text" class="form-control" id="criminal_id" runat="server"/> <br />
                          <label for="criminal_name_en">Criminal Name</label>
                          <input type="text" class="form-control" placeholder="Enter the name in english" id="criminal_name_en" runat="server"/> <br />
                          <label for="criminal_name_ar" style="font-family:'GE SS TV';font-style:normal;">أسم المجرم</label>
                          <input type="text" class="form-control" placeholder="ادخل الاسم باللغة العربية" style="font-family:'GE SS TV';font-style:normal;" id="criminal_name_ar" runat="server"/> <br />
                          <label for="criminal_photo">Attach Photo</label>
                          <asp:FileUpload id="criminal_photo" runat="server" Class="btn" />
                          <label for="submit_button"></label>
                          <button id="Button2" type="submit" class="btn btn-warning btn-block" runat="server" onserverclick="addCriminal">Add to Criminals</button>
                      </div>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
          </div>
      
        </div>
      </div>
       </div>
       </div>
       <div class="col-md-4">
       <h2>Crime Search</h2>
       <p>You can find from here the location of the criminal using our tracking and matching system</p>
       <p style="color: #808080">Press the button below to find</p>
       <button type="button" runat="server" class="btn btn-primary btn-lg" id="crimesearch" onclick="window.location.href='Comparing.aspx'">
           <span class="glyphicon glyphicon-search"></span>
           &nbsp; Find Now &nbsp
       </button>
       </div>
       </div>
       </div>

       
      </div>
    </form>
</body>
</html>
