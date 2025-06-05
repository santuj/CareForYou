<%@ Page Language="C#" AutoEventWireup="true" CodeFile="nurserecruitment.aspx.cs" Inherits="General_nurserecruitement" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Nurse Recruitment - Care ForU</title>
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
      background-color: #508bfc;
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
            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
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
      <h1>Nurse Appointment</h1>
      <p class="mt-3">Professional Care with a Human Touch</p>
    </div>
  </section>

  <!-- Info Section -->
  <section class="info-section">
    <div class="container">
      <div class="row align-items-center">
        <div class="col-md-6 mb-4">
          <img src="../Images/image copy.png" class="img-fluid rounded" alt="Nurse recruitment">
        </div>
        <div class="col-md-6">
          <div class="highlight">
            <h3>Skilled and Compassionate Nurses</h3>
            <p>
              At Care ForU , we specialize in the recruitment of qualified male and female nurses for a variety of
              healthcare settings including hospitals, clinics, and in-home care environments.
            </p>
            <ul>
              <li>✅ Certified and experienced nursing professionals</li>
              <li>✅ Available for full-time, part-time, and daily needs</li>
              <li>✅ Specialized care for elderly, post-operative, and chronic patients</li>
              <li>✅ Background-checked and trained for patient safety</li>
            </ul>
            <a href="../User/requestnurse_payment.aspx" class="btn btn-primary mt-3">Request Nurses Now</a>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- Call to Action -->
  <section class="cta text-center py-5" style="background-color: #f1f1f1;">
    <div class="container">
      <h4 class="mb-3">Need urgent nursing support?</h4>
      <p>We’re just a call or message away. Let us know your requirements and we’ll ensure the right support reaches you
        promptly.</p>
      <a href="contact.aspx" class="btn btn-success btn-lg mt-3"><i class="fas fa-phone-alt me-2"></i>Contact Us</a>
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
