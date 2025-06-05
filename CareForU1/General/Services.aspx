<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Services.aspx.cs" Inherits="General_Services" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Our Services - Care ForU </title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" />
    <style>
        body {
            background-color: #f8f9fa;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        .navbar-nav .nav-link {
            font-size: 1.2rem;
            padding: 10px 15px;
            transition: background-color 0.3s, color 0.3s;
            border-radius: 8px;
        }
        
        .navbar-nav .nav-link:hover {
            background-color: #ffffff;
            color: #007bff;
            font-weight: 600;
        }
        
        .navbar-nav .dropdown-menu {
            border-radius: 10px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.15);
        }
        
        .navbar-nav .dropdown-menu .dropdown-item:hover {
            background-color: #007bff;
            color: #fff;
        }
        

        .service-card {
            background-color: #fff;
            border-radius: 12px;
            padding: 30px;
            margin-bottom: 30px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease;
        }

        .service-card:hover {
            transform: translateY(-15px);
        }


        .row {
            display: flex;
            justify-content: space-around;

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
            position: fixed;
            bottom: 0;
            width: 100%;

        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
       <!-- navbar-->
   
<nav class="navbar navbar-expand-lg navbar-dark bg-primary py-3">
    <div class="container">
        
        <a class="navbar-brand d-flex align-items-center" href="Index.aspx" style="font-size: 1.8rem;">
            <img src="../Images/care_forU_logo-2.png" alt="Care ForU Logo" width="45" height="45" class="me-2 rounded-circle">
            <span>Care ForU</span>
        </a>

        
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>

        
        <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
            <ul class="navbar-nav gap-4 fs-5"> <!-- gap-4 = spacing between items, fs-5 = larger font -->
                <li class="nav-item">
                    <a class="nav-link active" href="Index.aspx">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="about.aspx">About</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Services.aspx">Services</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="contact.aspx">Contact</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                        aria-expanded="false">
                        Login
                    </a>
                    <ul class="dropdown-menu">
                         <li><a class="dropdown-item" href="Adminlogin.aspx">Admin login</a></li>
                        <li><a class="dropdown-item" href="Userlogin.aspx">User login</a></li>
                        <li><a class="dropdown-item" href="nurselogin.aspx">Nurse login</a></li>
                            <li><a class="dropdown-item" href="Ayalogin.aspx">Aya login</a></li>

                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>


    <!-- Services Section -->
    <section class="py-5 main">
        <div class="container">
            <h2 class="text-center mb-5">Our Services</h2>
            <div class="row">

                <!-- Nurse Recruitment -->
                <div class="col-md-6 col-lg-3">
                    <div class="service-card text-center">
                        <div class="service-icon">
                            <i class="fas fa-user-nurse"></i>
                        </div>
                        <h5><a href="nurserecruitment.aspx">Nurse Appointment</a></h5>
                        <p>We provide skilled and compassionate male & female nurses for hospitals, clinics, and in-home
                            care, ensuring top-tier patient support.</p>
                    </div>
                </div>

                <!-- Ambulance Service -->
                <div class="col-md-6 col-lg-3">
                    <div class="service-card text-center">
                        <div class="service-icon">
                            <i class="fas fa-ambulance"></i>
                        </div>
                        <h5><a href="ambulance.aspx">Ambulance Services</a></h5>
                        <p>Quick, reliable emergency and non-emergency ambulance services equipped with advanced
                            life-support systems and trained staff.</p>
                    </div>
                </div>


                <!-- Daycare Services -->
                <div class="col-md-6 col-lg-3">
                    <div class="service-card text-center">
                        <div class="service-icon">
                            <i class="fas fa-hands-helping"></i>
                        </div>
                        <h5><a href="daycare.aspx">Daycare Services</a></h5>
                        <p>Comprehensive daycare services tailored to patient needs, providing safe, supervised care
                            during daytime hours with health monitoring.</p>
                    </div>
                </div>

            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer>
        <p>&copy; 2025 Care ForU . All rights reserved.</p>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        crossorigin="anonymous"></script>
    </form>
</body>
</html>
