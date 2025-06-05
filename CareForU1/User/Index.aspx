<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="User_Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Dashboard | Care Foru</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
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

    .profile-picture {
      width: 120px;
      height: 120px;
      border-radius: 50%;
      object-fit: cover;
      border: 3px solid white;
      margin: 0 auto 15px auto;
      display: block;
    }

    .dashboard-card {
      background-color: #fff;
      padding: 20px;
      border-radius: 15px;
      box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
      transition: 0.3s;
    }

    .dashboard-card:hover {
      transform: translateY(-5px);
    }

   footer {
  background-color: #007bff;
  color: white;
  text-align: center;
  padding: 15px 0;
  width: calc(100vw - 270px);
   margin-left: 250px;
     
  border-radius:20px;
}

  </style>

</head>
<body>
    <form id="form1" runat="server">
      <!-- Sidebar -->
    <div class="sidebar">
      <img runat="server" id="ProfilePicture" class="profile-picture" />
      <h5 class="text-center">Welcome</h5>
      <p class="text-center"><asp:Label runat="server" ID="lblUserName"></asp:Label></p>
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
    <div class="main-content d-flex flex-column min-vh-100">
      <div class="container flex-grow-1">
        <h2 class="mb-4">📋 Dashboard Overview</h2>
        <div class="row g-4">

          <div class="col-md-3">
            <div class="dashboard-card text-center">
              <h5>My Profile</h5>
              <p>View and update your personal details.</p>
              <a href="Myprofile.aspx" class="btn btn-primary">Go to Profile</a>
            </div>
          </div>

          <div class="col-md-3">
            <div class="dashboard-card text-center">
              <h5>Booking Requests</h5>
              <p>Request nurse services and view booking history.</p>
              <a href="userrequsterbooking.aspx" class="btn btn-primary">Manage Bookings</a>
            </div>
          </div>

          <div class="col-md-3">
            <div class="dashboard-card text-center">
              <h5>Nurse Availability</h5>
              <p>View nurse availability and request.</p>
              <a href="NurseAvailability.aspx" class="btn btn-primary">Request</a>
            </div>
          </div>

             <div class="col-md-3">
            <div class="dashboard-card text-center">
              <h5>Aya Availability</h5>
              <p>View Aya availability and request.</p>
              <a href="AyaAvailability.aspx" class="btn btn-primary">Request</a>
            </div>
          </div>

          <div class="col-md-3">
            <div class="dashboard-card text-center">
              <h5>My Services</h5>
              <p>Explore services like nurses, ambulance, daycare.</p>
              <a href="Myservices.aspx" class="btn btn-primary">View Services</a>
            </div>
          </div>

          <div class="col-md-3">
            <div class="dashboard-card text-center">
              <h5>Support</h5>
              <p>Need help? Contact Care Foru support.</p>
              <a href="support.aspx" class="btn btn-primary">Get Support</a>
            </div>
          </div>

          <div class="col-md-6">
            <div class="dashboard-card text-center">
              <h5>Logout</h5>
              <p>Sign out from your account securely.</p>
              <a href="../General/Index.aspx" class="btn btn-danger">Logout</a>
            </div>
          </div>

        </div>
      </div>

      
    </div>
        <!-- Footer -->
      <footer>
        <p>&copy; 2025 Care Foru. All rights reserved.</p>
      </footer>

    <script>
        document.querySelector('.profile-picture').addEventListener('click', function () {
          const newPicture = prompt("Enter the URL of your new profile picture:");
            if (newPicture) {
                this.src = newPicture;
            }
        });
    </script>
  

 

    </form>
</body>
</html>
