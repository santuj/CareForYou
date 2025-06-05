<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Myservices.aspx.cs" Inherits="User_Myservices" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <title>Our Services - Care ForU</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" />
    <style>
        body {
            background-color: #f8f9fa;
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

        .service-card {
            background-color: #fff;
            border-radius: 12px;
            padding: 30px;
            margin-bottom: 30px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease;
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
        .service-card:hover {
            transform: translateY(-15px);
        }

        .service-icon {
            font-size: 40px;
            color: #508bfc;
            margin-bottom: 20px;
        }

        footer {
            background-color: #3931af;
            color: white;
            text-align: center;
            padding: 20px 0;
           margin-left: 10px;
          width: calc(100% - 20px);
          border-radius:20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

 <!-- Sidebar -->
        <div class="sidebar">
      <img runat="server" id="ProfilePicture" class="profile-picture" />
            <h5 class="text-center mt-2">Welcome</h5>
            <p class="text-center"><asp:Label ID="lblUsername3" runat="server" Text="User"></asp:Label></p>
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
            <!-- Welcome Section -->
            <div class="container mt-3">
                <div class="alert alert-primary text-center fw-bold" role="alert">
                    Welcome, <asp:Label ID="lblUsername2" runat="server" Text="User"></asp:Label>!
                </div>
            </div>

            <!-- Services Section -->
            <section class="py-4">
                <div class="container">
                    <h2 class="text-center mb-5">Our Services</h2>
                    <div class="row">
                        <!-- Nurse Recruitment -->
                        <div class="col-md-6 col-lg-4">
                            <div class="service-card text-center">
                                <div class="service-icon">
                                    <i class="fas fa-user-nurse"></i>
                                </div>
                                <h5><a href="../General/nurserecruitment.aspx">Nurse  Appointment</a></h5>
                                <p>We provide skilled and compassionate nurses for hospitals, clinics, and home care.</p>
                            </div>
                        </div>

                        <!-- Ambulance Service -->
                        <div class="col-md-6 col-lg-4">
                            <div class="service-card text-center">
                                <div class="service-icon">
                                    <i class="fas fa-ambulance"></i>
                                </div>
                                <h5><a href="../General/ambulance.aspx">Ambulance Services</a></h5>
                                <p>Quick, reliable ambulance services with trained staff and life-support systems.</p>
                            </div>
                        </div>

                        <!-- Daycare Services -->
                        <div class="col-md-6 col-lg-4">
                            <div class="service-card text-center">
                                <div class="service-icon">
                                    <i class="fas fa-hands-helping"></i>
                                </div>
                                <h5><a href="../General/daycare.aspx">Daycare Services</a></h5>
                                <p>Safe and supervised daytime care tailored to patient needs with health monitoring.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <!-- Footer -->
            <footer>
                <p>&copy; 2025 Care ForU. All rights reserved.</p>
            </footer>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    </form>
</body>
</html>
