<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ambulance.aspx.cs" Inherits="General_ambulance" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ambulance Service - Care ForU</title>
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
  

    .header-section {
      background-color: #dc3545;
      color: white;
      padding: 80px 0;
      text-align: center;
    }

    .header-section h1 {
      font-size: 2.5rem;
    }

    .info-section {
      padding: 60px 0;
    }

    .info-section p {
      font-size: 1.1rem;
      line-height: 1.8;
    }

    .highlight {
      background-color: #f8f9fa;
      padding: 40px;
      border-radius: 15px;
      box-shadow: 0 4px 12px rgba(0, 0, 0, 0.05);
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
                      <li><a class="dropdown-item" href="Userlogin.aspx">User login</a></li>
                      <li><a class="dropdown-item" href="nurselogin.aspx">Nurse login</a></li>
                      <li><a class="dropdown-item" href="Ayalogin.aspx">Aya login</a></li>
                  </ul>
              </li>
          </ul>
      </div>
  </div>
</nav>

  <!-- Header Section -->
  <section class="header-section">
    <div class="container">
      <h1>Ambulance Services</h1>
      <p class="mt-3">Fast, Reliable Emergency & Non-Emergency Medical Transport</p>
    </div>
  </section>

  <!-- Info Section -->
  <section class="info-section">
    <div class="container">
      <div class="row align-items-center">
        <div class="col-md-6 mb-4">
          <img src="../Images/image copy 2.png" class="img-fluid rounded" alt="Ambulance Service">
        </div>
        <div class="col-md-6">
          <div class="highlight">
            <h3>Quick Response, Life-Saving Care</h3>
            <p>
              Our ambulance services are equipped with <strong>advanced life-support systems</strong> and staffed by
              trained medical professionals to handle any situation efficiently. We provide:
            </p>
            <ul>
              <li>🚑 Emergency and non-emergency patient transport</li>
              <li>🩺 24/7 availability with trained paramedics</li>
              <li>⚡ GPS-enabled quick dispatch and tracking</li>
              <li>💊 On-board oxygen, cardiac monitors, and first-aid</li>
              <li>🏥 Hospital transfers, home-to-clinic services</li>
            </ul>
            <a href="Ambulancerequest.aspx" class="btn btn-danger mt-3">Request Ambulance</a>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- Call to Action -->
  <section class="cta text-center py-5" style="background-color: #e9ecef;">
    <div class="container">
      <h4 class="mb-3">Need Immediate Help? Call Us Now!</h4>
      <p>Our team is ready to assist at a moment’s notice. Safe, reliable, and rapid transport to the care you need.</p>
      <a href="tel:+911234567890" class="btn btn-success btn-lg mt-3"><i class="fas fa-phone-alt me-2"></i>Call +91
        12345 67890</a>
    </div>
  </section>

  <!-- Footer -->
  <footer>
    <p>&copy; 2025 Care ForU. All rights reserved.</p>
  </footer>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
    crossorigin="anonymous"></script>
    </form>
</body>
</html>
