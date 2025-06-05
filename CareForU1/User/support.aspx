<%@ Page Language="C#" AutoEventWireup="true" CodeFile="support.aspx.cs" Inherits="User_support" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Support | Care ForU</title>
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

        .form-control {
            border-radius: 15px;
        }

        .btn-primary {
            background-color: #007bff;
            border: none;
        }

        .form-group {
            margin-bottom: 15px;
        }

        footer {
            background-color: #007bff;
            color: white;
            text-align: center;
            padding: 15px 0;
            margin-top: 40px;
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
            <a href="logout.aspx" class="text-danger">🚪 Logout</a>
        </div>

        <!-- Main Content -->
        <div class="main-content">

            <!-- Header -->
            <div class="dashboard-header position-relative">
                <h1 class="mb-3">Support</h1>
                <p>If you need help, please contact the Care Foru support team.</p>
            </div>

            <!-- Contact Form -->
            <div class="container mt-5">
                <div class="row g-4">
                    <div class="col-md-8 mx-auto">
                        <div class="dashboard-card">
                            <h5>Contact Support</h5>
                            <p>If you have any questions or need assistance, please fill out the form below and our support team will get back to you as soon as possible:</p>

                            <!-- Contact Form -->
                            <form id="contactForm">
                                <div class="form-group">
                                    <label for="name">Full Name</label>
                                    <input type="text" class="form-control" id="name" placeholder="Enter your full name" required>
                                </div>
                                <div class="form-group">
                                    <label for="email">Email Address</label>
                                    <input type="email" class="form-control" id="email" placeholder="Enter your email address" required>
                                </div>
                                <div class="form-group">
                                    <label for="message">Message</label>
                                    <textarea class="form-control" id="message" rows="4" placeholder="Describe your issue or inquiry" required></textarea>
                                </div>
                                <button type="submit" class="btn btn-primary">Submit</button>
                            </form>

                            <!-- Contact Info -->
                            <div class="mt-4">
                                <h5>Alternatively, you can contact us via:</h5>
                                <ul>
                                    <li>Email: <a href="mailto:support@careforu.com">support@careforu.com</a></li>
                                    <li>Phone: <a href="tel:+1234567890">+1 (234) 567-890</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Footer -->
            <footer>
                <p>&copy; 2025 Care Foru. All rights reserved.</p>
            </footer>
        </div>

        <!-- JS -->
        <script>
            document.getElementById('contactForm').addEventListener('submit', function (event) {
                event.preventDefault();

                const name = document.getElementById('name').value;
                const email = document.getElementById('email').value;
                const message = document.getElementById('message').value;

                alert('Thank you, ' + name + '. Your message has been sent! Our support team will get back to you soon.');
                document.getElementById('contactForm').reset();
            });
        </script>


    </form>
</body>
</html>
