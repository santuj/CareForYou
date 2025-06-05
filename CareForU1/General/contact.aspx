<%@ Page Language="C#" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="General_contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>Contact Us - Care ForU</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">
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
  
    .contact-section {
      padding: 60px 0;
    }
    .form-control, .btn {
      border-radius: 8px;
    }
    .contact-info {
      background-color: #3931af;
      color: white;
      padding: 30px;
      border-radius: 10px;
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
     <!--navbar-->
<nav class="navbar navbar-expand-lg navbar-dark bg-primary py-3">
  <div class="container">
      <!-- Logo + Brand Name -->
      <a class="navbar-brand d-flex align-items-center" href="Index.aspx" style="font-size: 1.8rem;">
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


  <!-- Contact Section -->
  <section class="contact-section">
    <div class="container">
      <h2 class="text-center mb-5">Get in Touch</h2>
      <div class="row">
        <!-- Contact Form -->
        <div class="col-md-7 mb-4">
          <form>
            <div class="mb-3">
              <label for="name" class="form-label">Full Name</label>
              <input type="text" class="form-control" id="name" placeholder="Enter your name" required>
            </div>
            <div class="mb-3">
              <label for="email" class="form-label">Email Address</label>
              <input type="email" class="form-control" id="email" placeholder="Email" required>
            </div>
            <div class="mb-3">
              <label for="subject" class="form-label">Subject</label>
              <input type="text" class="form-control" id="subject" placeholder="Subject of your message">
            </div>
            <div class="mb-3">
              <label for="message" class="form-label">Message</label>
              <textarea class="form-control" id="message" rows="5" placeholder="Write your message here..." required></textarea>
            </div>
            <button type="submit" class="btn btn-primary px-4">Send Message</button>
          </form>
        </div>

        <!-- Contact Info -->
        <div class="col-md-5">
          <div class="contact-info">
            <h4>Contact Information</h4>
            <p><strong>Care ForU</strong></p>
            <p>Email: support@careforu.com</p>
            <p>Phone: +91 1234567890</p>
            <p>Address: 123 Health Street, Midnapore City, India</p>
            <hr />
            <p>Working Hours: Mon - Sat | 9 AM - 6 PM</p>
          </div>
        </div>
      </div>

      <!-- Google Map (Placeholder) -->
      <div class="row mt-5">
        <div class="col-12">
          <h5>Find Us on Map</h5>
          <div class="ratio ratio-16x9">
            <iframe src="https://maps.google.com/maps?q=midnapore,India&t=&z=13&ie=UTF8&iwloc=&output=embed" 
                    frameborder="0" style="border:0;" allowfullscreen="" loading="lazy">
            </iframe>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- Footer -->
  <footer>
    <p>&copy; 2025 Care ForU. All rights reserved.</p>
  </footer>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    </form>
</body>
</html>
