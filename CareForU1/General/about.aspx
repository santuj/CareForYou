<%@ Page Language="C#" AutoEventWireup="true" CodeFile="about.aspx.cs" Inherits="General_about" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <title>About Us - Care ForU</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        crossorigin="anonymous">
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f8f9fa;
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
        

        .hero-section {
            background: linear-gradient(to right, #3931af, #00c6ff);
            color: white;
            padding: 80px 0;
            text-align: center;
        }

        .hero-section h1 {
            font-size: 3rem;
            font-weight: bold;
        }

        .content-section {
            padding: 60px 0;
        }

        .container ul li a {
            text-decoration: none;
        }


        .card {
            border: none;
            border-radius: 15px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);

        }

            .card h4 a {
                text-decoration: none;
            }

        footer {
            background-color: #3931af;
            color: white;
            text-align: center;
            padding: 20px 0;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
       <!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-primary py-3">
    <div class="container">
        <!-- Logo + Brand Name -->
        <a class="navbar-brand d-flex align-items-center" href="index.html" style="font-size: 1.8rem;">
            <img src="../Images/care_forU_logo-2.png" alt="Care ForU Logo" width="45" height="45" class="me-2 rounded-circle">
            <span>Care ForU</span>
        </a>

        <!-- Toggler for Mobile -->
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>

        <!-- Nav Items -->
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
                        <li><a class="dropdown-item" href="Userlogin.html">User login</a></li>
                        <li><a class="dropdown-item" href="nurselogin.html">Nurse login</a></li>
                        <li><a class="dropdown-item" href="Ayalogin.aspx">Aya login</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>


    <!-- Hero Section -->
    <section class="hero-section">
        <div class="container">
            <h1>About Care ForU</h1>
            <p class="lead mt-3">Empowering Healthcare Through Technology & Compassion</p>
        </div>
    </section>

    <!-- About Content -->
    <section class="content-section">
        <div class="container">
            <div class="row mb-5">
                <div class="col-md-6">
                    <h2>Our Mission</h2>
                    <p>
                        Care ForU is dedicated to improving patient care, safety, and nurse support by leveraging
                        digital tools and real-time data. Our mission is to bridge the gap between healthcare providers
                        and patients through smart solutions, ensuring accurate health information and enhanced
                        communication.
                    </p>
                </div>
                <div class="col-md-6">
                    <h2>What We Offer</h2>
                    <ul>
                        <li><a href="nurserecruitment.aspx">✔ Nurse Appointment (Male & Female)</a></li>
                        <li><a href="nurserecruitment.aspx">✔ Ambulance Services</a> </li>
                        <li><a href="nurserecruitment.aspx">✔ Daycare Services</a> </li>
                    </ul>
                </div>
            </div>

            <!-- Features Cards -->

            <div class="row text-center">
                <div class="col-md-4 mb-4">
                    <div class="card p-4">
                        <h4>Nurse Registration</h4>
                        <p>Join our network of professional caregivers. Register, manage schedules, and connect with
                            patients securely.</p>
                    </div>
                </div>
                <div class="col-md-4 mb-4">
                    <div class="card p-4">
                        <h4>Hirer Access</h4>
                        <p>Hospitals and clinics can easily hire skilled nurses. Manage staff and services with our
                            user-friendly interface.</p>
                    </div>
                </div>
                <div class="col-md-4 mb-4">
                    <div class="card p-4">
                        <h4>Smart Features</h4>
                        <p>Includes medication reminders, vitals monitoring, patient education, and secure messaging
                            between teams.</p>
                    </div>
                </div>
            </div>


           <%-- <!-- Technologies Used -->
            <div class="row mt-5">
                <div class="col-md-12">
                    <h2 class="text-center mb-4">Technologies We Use</h2>
                    <p class="text-center">
                        We build with HTML, CSS, JavaScript, and Python to deliver seamless web experiences. Data is
                        securely managed and compliant with healthcare regulations (HIPAA). We're integrating services
                        with apps like Tata 1mg, Truemeds, Apollo 24|7, Netmeds for enhanced healthcare access.
                    </p>
                </div>
            </div>--%>
        </div>
    </section>

    <!-- Footer -->
    <footer>
        <p>&copy; 2025 Care Foru. All rights reserved.</p>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        crossorigin="anonymous"></script>
    </form>
</body>
</html>
