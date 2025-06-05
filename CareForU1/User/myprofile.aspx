<%@ Page Language="C#" AutoEventWireup="true" CodeFile="myprofile.aspx.cs" Inherits="User_myprofile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>My Profile | Care ForU</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
  <style>
    body {
      background-color: #eef4fc;
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }

    .sidebar {
      height: 100vh;
      background-color: #007bff;
      color: white;
      padding: 20px;
      position: fixed;
      width: 240px;
      top: 0;
      left: 0;
    }

    .sidebar a {
      color: white;
      text-decoration: none;
      display: block;
      padding: 10px 0;
      font-weight: 500;
    }

    .sidebar a:hover {
      background-color: #0056b3;
      padding-left: 10px;
    }

    .main-content {
      margin-left: 250px;
      padding: 20px;
    }

    .profile-header {
      background-color: #007bff;
      color: white;
      padding: 25px 0;
      text-align: center;
      border-radius: 10px;
    }

    .profile-picture {
      width: 150px;
      height: 150px;
      border-radius: 50%;
      object-fit: cover;
      border: 4px solid white;
      margin: 10px auto;
      display: block;
      background-color: #ddd;
      cursor: pointer;
    }

    .profile-card {
      background-color: #fff;
      padding: 20px;
      border-radius: 15px;
      box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
      transition: 0.3s;
    }

    .profile-card:hover {
      transform: translateY(-5px);
    }

    footer {
      background-color: #007bff;
      color: white;
      text-align: center;
      padding: 15px 0;
      margin-top: 50px;
      margin-left: 10px;
      width: calc(100% - 20px);
      border-radius:20px;
    }
     .profile-picture {
      width: 120px;
      height: 120px;
      border-radius: 50%;
      object-fit: cover;
      border: 3px solid white;
      margin: 0 auto 15px auto;
      display: block;
       
    }
  </style>
</head>
<body>
    <form id="form1" runat="server">
     <!-- Sidebar -->
    <div class="sidebar">
      <img runat="server" id="ProfilePicture" class="profile-picture" />
      <h5 class="text-center">Welcome</h5>
      <p class="text-center"><asp:Label runat="server" ID="lblUserName" Text="User Name"></asp:Label></p>
      <hr style="border-color: rgba(255,255,255,0.2);" />
      <a href="Index.aspx">🏠 Home</a>
      <a href="Myprofile.aspx">👤 My Profile</a>
      <a href="userrequsterbooking.aspx">📅 Booking Requests</a>
      <a href="NurseAvailability.aspx">🧑‍⚕️ Nurse Availability</a>
        <a href="AyaAvailability.aspx">🧑‍⚕️ Aya Availability</a>
      <a href="Myservices.aspx">🛠 My Services</a>
      <a href="support.aspx">💬 Support</a>
      <a href="../General/Index.aspx" class="text-danger">🚪 Logout</a>
    </div>

    <!-- Main Content -->
    <div class="main-content">
      <div class="profile-header">
        <h1 class="mb-3">My Profile</h1>
        <p>Update your personal details.</p>
      </div>

      <div class="container mt-5">
        <div class="row">
          <div class="col-md-8 offset-md-2">
            <div class="profile-card">
              <h5>Personal Information</h5>
              <!-- Using standard inputs; you may replace with ASP.NET controls if needed -->
              <div class="mb-3">
                <label for="fullName" class="form-label">Full Name</label>
                  <asp:TextBox runat="server" ID="txtName" CssClass="form-control" required></asp:TextBox>
              </div>
             
              <div class="mb-3">
                <label for="phone" class="form-label">Phone Number</label>
                  <asp:TextBox runat="server" ID="txtPhone" CssClass="form-control" required></asp:TextBox>

              </div>
              <div class="mb-3">
                <label for="address" class="form-label">Address</label>
                  <asp:TextBox runat="server" ID="txtAddress" CssClass="form-control" TextMode="MultiLine" placeholder="Enter Address" required></asp:TextBox>

              </div>
                <asp:Button runat="server" CssClass="btn btn-primary" OnClick="Update_Click" Text="Save Changes" />
            </div>
          </div>
        </div>
      </div>

      <footer>
        <p>&copy; 2025 Care ForU. All rights reserved.</p>
      </footer>
    </div>

    
    </form>
</body>
</html>
