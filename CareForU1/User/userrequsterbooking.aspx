<%@ Page Language="C#" AutoEventWireup="true" CodeFile="userrequsterbooking.aspx.cs" Inherits="User_userrequsterbooking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <title>Booking Requests | Care Foru</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
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
        .profile-picture {
      width: 120px;
      height: 120px;
      border-radius: 50%;
      object-fit: cover;
      border: 3px solid white;
      margin: 0 auto 15px auto;
      display: block;
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

        .dashboard-header {
            background-color: #007bff;
            color: white;
            padding: 25px 0;
            text-align: center;
            border-radius:20px;
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
            margin-top: 100px;
            border-radius:20px;
        }

        .table th, .table td {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
     <!-- Sidebar -->
        <div class="sidebar">
      <img runat="server" id="ProfilePicture" class="profile-picture" />
            <h5 class="text-center mt-2">Welcome</h5>
            <p class="text-center"><asp:Label ID="lblUsername" runat="server" Text="User"></asp:Label></p>
            <hr style="border-color: rgba(255,255,255,0.2);" />
            <a href="Index.aspx">🏠 Home</a>
            <a href="Myprofile.aspx">👤 My Profile</a>
            <a href="userrequsterbooking.aspx">📅 Booking Requests</a>
            <a href="NurseAvailability.aspx">🧑‍⚕️ Nurse Availability</a>
            <a href="AyaAvailability.aspx">🧑‍⚕️ Aya Availability</a>
            <a href="Myservices.aspx">🛠 My Services</a>
            <a href="payhistory.aspx">💳 Payment History</a>
            <a href="support.aspx">💬 Support</a>
            <a href="../General/Index.aspx" class="text-danger">🚪 Logout</a>
        </div>

        <!-- Main Content -->
        <div class="main-content">
            <!-- Header -->
            <div class="dashboard-header position-relative">
                <h1 class="mb-3">Booking Requests</h1>
                <p>Request nurse services and view pending booking requests.</p>
            </div>

            <!-- Main Section -->
            <div class="container mt-5">
                <div class="row g-4">
                    <div class="col-md-12">
                        <div class="dashboard-card">
                            <h5>Pending Nurse Booking Requests</h5>
                            <p>Here are the nurses you have requested and their current status:</p>

                            <!-- Booking Table -->
                            <table class="table table-bordered">
                                <thead>
                                    <tr>
                                        <th>Request ID</th>
                                        <th>Nurse Name</th>
                                        <th>Contact</th>
                                        <th>Status</th>
                                    </tr>
                                </thead>
                                <tbody id="bookingRequests">
                                     <asp:Repeater runat="server" ID="rptNurse">
                        <ItemTemplate>
                                    <tr>
                                       
                                        <td><%#Eval("ID") %></td>
                                        <td><%#Eval("Name") %></td>
                                        <td><%#Eval("Contact") %></td>
                                       <td><%#Eval("Status") %></td>
                                    </tr>
                             </ItemTemplate>
                                  </asp:Repeater>
                                </tbody>
                            </table>

                        </div>

                    </div>

                     <div class="col-md-12">
                        <div class="dashboard-card">
                            <h5>Pending Aya Booking Requests</h5>
                            <p>Here are the nurses you have requested and their current status:</p>

                            <!-- Booking Table -->
                            <table class="table table-bordered">
                                <thead>
                                    <tr>
                                        
                                        <th>Request ID</th>
                                        <th>Aya Name</th>
                                        <th>Contact</th>
                                        <th>Status</th>
                                    </tr>
                                </thead>
                                <tbody id="Tbody1">
                                    <asp:Repeater runat="server" ID="rptAya">
                        <ItemTemplate>
                                    <tr>
                                        
                                        <td><%#Eval("ID") %></td>
                                        <td><%#Eval("Name") %></td>
                                        <td><%#Eval("Number") %></td>
                                       <td><%#Eval("Status") %></td>
                                    </tr>
                             </ItemTemplate>
                                  </asp:Repeater>
                                </tbody>
                            </table>

                        </div>

                    </div>
                </div>
            </div>

            <!-- Footer -->
            <footer>
                <p>&copy; 2025 Care ForU. All rights reserved.</p>
            </footer>
        </div>

       

    </form>
</body>
</html>
