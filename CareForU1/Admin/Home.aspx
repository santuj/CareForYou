<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Admin_Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Dashboard | Care Foru</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet" />
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f4f8fd;
        }

        .sidebar {
            height: 100vh;
            position: fixed;
            left: 0;
            top: 0;
            width: 260px;
            background-color: #007bff;
            color: white;
            padding-top: 20px;
        }

        .sidebar .profile-photo {
            width: 100px;
            height: 100px;
            object-fit: cover;
            border-radius: 50%;
            border: 3px solid #fff;
            margin: 0 auto 15px;
            display: block;
        }

        .sidebar h4 {
            text-align: center;
            margin-bottom: 25px;
        }

        .sidebar .nav-heading {
            padding-left: 20px;
            font-size: 14px;
            margin-top: 10px;
            color: #d9edf7;
        }

        .sidebar a {
            color: white;
            display: block;
            padding: 12px 20px;
            text-decoration: none;
            transition: 0.3s;
        }

        .sidebar a:hover {
            background-color: #0056b3;
        }

        .sidebar i {
            margin-right: 10px;
        }

        .main-content {
            margin-left: 260px;
            padding: 40px 20px;
        }

        .card {
            border-radius: 15px;
            transition: transform 0.3s;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        .card:hover {
            transform: translateY(-5px);
        }

        footer {
            background-color: #007bff;
            color: white;
            text-align: center;
            padding: 15px 0;
            margin-top: 100px;
             margin-right:60px;
            margin-left:310px;
            border-radius:20px;
        }

        .section-title {
            color: #007bff;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
     <!-- Sidebar -->
        <div class="sidebar">
            <img src="../Images/Adminpic.jpg" alt="Admin" class="profile-photo" />
            <h4><asp:Label runat="server" ID="UserName"></asp:Label></h4>

            <div class="nav-heading"></div>
            <a href="Home.aspx">🏠 Home</a>
              
            <a href="Usermanagement.aspx"><i class="bi bi-people-fill"></i>User Management</a>
            <a href="NurseVerification.aspx"><i class="bi bi-person-check-fill"></i>Nurse Verification</a>
            
             <a href="AyaVerification.aspx"><i class="bi bi-person-bounding-box"></i>Aya Verification</a>

            <div class="nav-heading">More</div>
            <a href="reports.aspx"><i class="bi bi-graph-up-arrow"></i>Reports</a>
            <a href="settings.aspx"><i class="bi bi-gear-fill"></i>Settings</a>
            <a href="../General/Index.aspx" style="color: #ffc107;"><i class="bi bi-box-arrow-right"></i>Logout</a>
        </div>

        <!-- Main Content -->
        <div class="main-content">
            <h2 class="text-center section-title mb-4">Admin Dashboard</h2>
            <div class="row g-4">
                <!-- Cards -->
                <div class="col-md-4">
                    <div class="card text-center p-4">
                        <h5>User Management</h5>
                        <p>Manage patients and users.</p>
                        <a href="usermanagement.aspx" class="btn btn-primary">Go</a>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="card text-center p-4">
                        <h5>Nurse Verification</h5>
                        <p>Approve nurse registrations.</p>
                        <a href="nurseverification.aspx" class="btn btn-primary">Review</a>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="card text-center p-4">
                        <h5>Aya Verification</h5>
                        <p>Approve Aya registrations.</p>
                        <a href="AyaVerification.aspx" class="btn btn-primary">Review</a>
                    </div>
                </div>

                 

                 
            </div>
        </div>

        <!-- Footer -->
        <footer class="mt-5">
            <p>&copy; 2025 Care Foru. Admin Panel. All rights reserved.</p>
        </footer>


    </form>
    </form>
</body>
</html>
