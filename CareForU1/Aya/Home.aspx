<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Aya_Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Aya Dashboard | Care ForU</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
    body {
      font-family: 'Segoe UI', sans-serif;
      background-color: #f4f7fa;
    }

    .sidebar {
      height: 100vh;
      background-color: #343a40;
      color: white;
      padding-top: 20px;
      position: fixed;
      width: 220px;
    }

    .sidebar a {
      color: white;
      display: block;
      padding: 12px 20px;
      text-decoration: none;
      transition: 0.2s;
    }

    .sidebar a:hover {
      background-color: #495057;
    }

    .main-content {
      margin-left: 220px;
      padding: 30px;
    }

    .card-box {
      background: white;
      border-radius: 15px;
      padding: 20px;
      box-shadow: 0 5px 15px rgba(0,0,0,0.1);
    }

    footer {
      text-align: center;
      padding: 15px 0;
      background: #3931af;
      color: white;
      margin-top: 100vh;
    }

    @media (max-width: 768px) {
      .sidebar {
        position: relative;
        width: 100%;
        height: auto;
      }
      .main-content {
        margin-left: 0;
      }
    }
  </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="sidebar text-center">
        <img runat="server" id="ProfilePicture" class="rounded-circle border border-white mx-3"
                     style="width: 150px; height: 150px; background-color: #ddd;" />
           
            <p class="text-center mt-2"><asp:Label ID="lblUserName"   runat="server" Text="Aya"></asp:Label></p>
            
        <hr style="border-color: rgba(255,255,255,0.2);">
      
        <a href="../Aya/Home.aspx">🏠 Dashboard</a>
        <a href="../Aya/viewbooking.aspx">📅 View Bookings</a>
        <a href="../Aya/AssignedTasks.aspx">📋 Assigned Tasks</a>
        <a href="../Aya/UpdateProfile.aspx">📝 Update Profile</a>
        <a href="../General/Index.aspx">🚪 Logout</a>
      </div>

  <div class="main-content">
    <h2>Welcome,<br /> 
                 <asp:Label runat="server"   ID="lblUserName1" Text="Aya"></asp:Label></h2>

    <p class="text-muted">Here's an overview of your activity</p>

    <div class="row g-4">
      <div class="col-md-4">
        <div class="card-box text-center">
          <h5>Total Assignments</h5>
          <h2>12</h2>
        </div>
      </div>
      <div class="col-md-4">
        <div class="card-box text-center">
          <h5>Upcoming Tasks</h5>
          <h2>3</h2>
        </div>
      </div>
      <div class="col-md-4">
        <div class="card-box text-center">
          <h5>Profile Completion</h5>
          <h2>85%</h2>
        </div>
      </div>
    </div>

    <div class="mt-5">
      <h4>Quick Actions</h4>
      <button class="btn btn-outline-primary mt-2 me-2">View Schedule</button> 
      <a href="UpdateProfile.aspx" class="btn btn-outline-secondary mt-2 me-2">Edit Profile</a> 
      <a href="../General/Index.aspx" class="btn btn-outline-danger mt-2">Logout</a>
    </div>
  </div>

  <footer>
    &copy; 2025 Care ForU - Aya Dashboard
  </footer>

    </form>
</body>
</html>
