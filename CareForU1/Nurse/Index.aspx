<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Nurse_Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
       <title>Nurse Home | Care Foru</title>
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

        .header {
            background-color: #007bff;
            color: white;
            padding: 20px 0;
            text-align: center;
            border-radius:20px;
        }

        .card {
            border-radius: 15px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s;
        }

        .card:hover {
            transform: translateY(-5px);
        }

        .section-title {
            margin-bottom: 20px;
            color: #007bff;
            font-weight: bold;
        }

        .nurse-profile-picture {
            width: 150px;
            height: 150px;
            object-fit: cover;
            border-radius: 50%;
            border: 4px solid white;
            background-color: #ddd;
        }

        footer {
            background-color: #007bff;
            color: white;
            text-align: center;
            padding: 15px 0;
            margin-top: 100px;
            border-radius:20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

    <!-- Sidebar -->
        <div class="sidebar">
                 <img runat="server" id="ProfilePicture" class="rounded-circle border border-white mx-3"
                     style="width: 150px; height: 150px; background-color: #ddd;" />
                        <h5 class="text-center mt-2">Welcome</h5>
            <p class="text-center"><asp:Label ID="lblUserName" runat="server" Text="Nurse"></asp:Label></p>
            <hr style="border-color: rgba(255,255,255,0.2);" />
            <a href="Index.aspx">🏠 Dashboard</a>
            <a href="nurseProfileupdate.aspx">👤 Update Profile</a>
            <a href="bookingrequest.aspx">📅 Booking Requests</a>
            <a href="#">💳 Payment History</a>
            <a href=" ../General/contact.aspx">💬 Support</a>
            <a href="../General/Index.aspx" class="text-danger">🚪 Logout</a>
        </div>

        <!-- Main Content -->
        <div class="main-content">
            <!-- Header -->
            <div class="header">
                <h1>Welcome, <asp:Label runat="server" ID="Label1"></asp:Label></h1>
                <p>Care Foru | Patient Care at Home</p>
            </div>

            <!-- Profile Picture -->
            <div class="d-flex justify-content-center mt-4">
               
            </div>

            <!-- Dashboard Cards -->
            <div class="container">
                <h2 class="section-title text-center">Your Dashboard</h2>
                <div class="row g-4">
                    <div class="col-md-4">
                        <div class="card text-center p-3">
                            <h5>Profile & Update</h5>
                            <p>Update your details and certifications.</p>
                            <a href="nurseProfileupdate.aspx" class="btn btn-primary">View Profile</a>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card text-center p-3">
                            <h5>Booking Request</h5>
                            <p>Manage incoming patient requests and update your schedule.</p>
                            <a href="bookingrequest.aspx" class="btn btn-primary">View Request</a>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card text-center p-3">
                            <h5>Payments</h5>
                            <p>Check your payment history and dues.</p>
                            <a href="#" class="btn btn-primary">View Payments</a>
                        </div>
                    </div>
                </div>

                <!-- Upcoming Shifts -->
                <h3 class="section-title text-center mt-5">Upcoming Shifts</h3>
                <div class="card p-3">
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item">Patient: John Doe | Date: 28-Apr-2025 | Time: 9 AM - 3 PM</li>
                        <li class="list-group-item">Patient: Priya Sharma | Date: 29-Apr-2025 | Time: 10 AM - 4 PM</li>
                        <li class="list-group-item">Patient: Rahul Verma | Date: 30-Apr-2025 | Time: 8 AM - 2 PM</li>
                    </ul>
                </div>
            </div>

            <!-- Footer -->
            <footer>
                <p>&copy; 2025 Care Foru. All rights reserved.</p>
            </footer>
        </div>

    </form>
</body>
</html>
