<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="General_Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Care ForU - Home</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" />
    <style>
        body {
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


        .hero {
            background: linear-gradient(to right, #508bfc, #6eafff);
            color: white;
            padding: 100px 0;
            text-align: center;
        }

        .hero h1 {
            font-size: 3rem;
            margin-bottom: 20px;
        }

        .hero p {
            font-size: 1.2rem;
        }

        .services-preview .card {
            border: none;
            border-radius: 15px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease;
        }

        .row {
            display: flex;
            justify-content: space-around;

        }

        .services-preview .card:hover {
            transform: translateY(-5px);
        }

        .cta {
            background-color: #f8f9fa;
            padding: 50px 0;
            text-align: center;
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


    <!-- Hero Section -->
    <section class="hero">
        <div class="container">
            <h1>Welcome to Care ForU</h1>
            <p>Your trusted partner in healthcare support—nurses, equipment, and emergency care, all in one place.</p>
            <a href="Services.aspx" class="btn btn-light btn-lg mt-4">Explore Our Services</a>
        </div>
    </section>
 


    <!-- Services Preview -->
    <section class="services-preview py-5">
        <div class="container">
            <h2 class="text-center mb-5">What We Offer</h2>
            <div class="row">

                <div class="col-md-6 col-lg-3 mb-4">
                    <div class="card text-center p-3">
                        <div class="card-body">
                            <i class="fas fa-user-nurse fa-2x mb-3 text-primary"></i>
                            <h5 class="card-title"><a href="nurserecruitment.aspx">Nurse Appointment</a></h5>

                            <p class="card-text">Qualified nurses for hospitals and in-home care, available daily for
                                patient support.</p>
                        </div>
                    </div>
                </div>

                <div class="col-md-6 col-lg-3 mb-4">
                    <div class="card text-center p-3">
                        <div class="card-body">
                            <i class="fas fa-ambulance fa-2x mb-3 text-primary"></i>
                            <h5 class="card-title"><a href="ambulance.aspx">Ambulance Services</a></h5>
                            <p class="card-text">Rapid emergency response with fully equipped ambulances for safe
                                transport.</p>
                        </div>
                    </div>
                </div>



                <div class="col-md-6 col-lg-3 mb-4">
                    <div class="card text-center p-3">
                        <div class="card-body">
                            <i class="fas fa-hands-helping fa-2x mb-3 text-primary"></i>
                            <h5 class="card-title"><a href="daycare.aspx">Daycare Services</a></h5>
                            <p class="card-text">Professional daycare tailored for patients needing short-term health
                                monitoring.</p>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </section>

    <!-- Call to Action -->
    <section class="cta">
        <div class="container">
            <h3>Ready to enhance your healthcare journey?</h3>
            <p>Join us today and access professional support tailored to your needs.</p>
            <a href="Userlogin.aspx" class="btn btn-primary btn-lg mt-3">Get Started</a>
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
