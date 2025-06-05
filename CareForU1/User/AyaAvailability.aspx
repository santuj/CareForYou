<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AyaAvailability.aspx.cs" Inherits="User_AyaAvailability" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Nurse Availability - Care ForU</title>
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

        .dashboard-header {
            background-color: #007bff;
            color: white;
            padding: 25px 0;
            text-align: center;
            border-radius:20px;
        }

        footer {
            background-color: #007bff;
            color: white;
            text-align: center;
            padding: 15px 0;
            margin-top: 40px;
            border-radius:20px;

        }

        .card-title {
            font-weight: bold;
        }

        .card {
            transition: transform 0.3s ease;
        }

        .card:hover {
            transform: scale(1.03);
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
            <h5 class="text-center mt-2">Welcome</h5>
            <p class="text-center"><asp:Label ID="lblUsername" runat="server" Text="User"></asp:Label></p>
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

            <!-- Header -->
            <div class="dashboard-header position-relative">
                <h1 class="mb-3">Aya Availability</h1>
                <p>Request Aya services and view pending booking requests.</p>
            </div>

            <!-- Nurses List -->
            <div class="container mt-5">
                <div class="row g-4">
                    <center>
                        <asp:Label runat="server" ID="lblNoAya" Text="No Aya available" CssClass="fw-bold text-danger" Visible="False"></asp:Label>
                    </center>

                    <asp:Repeater runat="server" ID="rptAya">
                        <ItemTemplate>
                            <div class="col-md-4">
                                <div class="card shadow-sm border-0 rounded-4">
                                    <div class="card-body">
                                        <h5 class="card-title"><%#Eval("Name") %></h5>
                                        <p class="card-text mb-1"><strong>Qualification:</strong> <%#Eval("Number") %></p>
                                        <p class="card-text"><strong>Experience:</strong> <%#Eval("Experience") %></p>
                                        <p class="card-text"><strong>Policeverification:</strong> <%#Eval("Policeverification") %></p>

                                        <a href='AyaDetails.aspx?ID=<%#Eval("ID") %>' class="btn btn-outline-primary">View & Request</a>
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>

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
