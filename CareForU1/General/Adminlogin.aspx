<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Adminlogin.aspx.cs" Inherits="General_Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Admin Login | Care ForU</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet" />
    <style>
        * {
            box-sizing: border-box;
        }

        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(120deg, #a1c4fd, #c2e9fb);
            min-height: 100vh;
            display: flex;
            flex-direction: column;
        }

        .navbar-nav .nav-link {
            font-size: 1.2rem;
            padding: 10px 15px;
            transition: background-color 0.3s ease, color 0.3s ease;
            border-radius: 8px;
            color: white;
        }

        .navbar-nav .nav-link:hover,
        .navbar-nav .nav-link:focus {
            background-color: #ffffff;
            color: #007bff;
            font-weight: 600;
            text-decoration: none;
        }

        .navbar-nav .dropdown-menu {
            border-radius: 10px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.15);
        }

        .navbar-nav .dropdown-item:hover,
        .navbar-nav .dropdown-item:focus {
            background-color: #007bff;
            color: #fff;
        }

        .login-box {
            background: #fff;
            border-radius: 20px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.15);
            padding: 40px;
            max-width: 400px;
            margin: auto;
            margin-top: 120px;
            animation: fadeInUp 1s ease;
        }

        @keyframes fadeInUp {
            0% {
                transform: translateY(40px);
                opacity: 0;
            }
            100% {
                transform: translateY(0);
                opacity: 1;
            }
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            font-weight: 600;
            display: block;
            margin-bottom: 6px;
            color: #444;
        }

        .form-group input {
            width: 100%;
            padding: 10px 15px;
            border: 1px solid #ddd;
            border-radius: 10px;
            transition: 0.3s;
        }

        .form-group input:focus {
            border-color: #007bff;
            outline: none;
            box-shadow: 0 0 5px rgba(0, 123, 255, 0.3);
        }

        .btn-login {
            background: #007bff;
            color: #fff;
            border: none;
            padding: 12px;
            width: 100%;
            border-radius: 10px;
            font-size: 16px;
            font-weight: 600;
            cursor: pointer;
            transition: 0.3s ease;
        }

        .btn-login:hover {
            background: #0056b3;
        }

        .extra-links {
            text-align: center;
            margin-top: 15px;
        }

        .extra-links a {
            color: #007bff;
            text-decoration: none;
            font-size: 14px;
        }

        .extra-links a:hover {
            text-decoration: underline;
        }

        footer {
            background-color: #007bff;
            color: white;
            text-align: center;
            padding: 15px 0;
            margin-top: auto;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
     <!-- Navbar -->
        <nav class="navbar navbar-expand-lg navbar-dark bg-primary py-3 fixed-top">
            <div class="container">
                <a class="navbar-brand d-flex align-items-center" href="Index.aspx">
                    <img src="../Images/care_forU_logo-2.png" alt="Care ForU Logo" width="45" height="45" class="me-2 rounded-circle" />
                    <span style="font-size: 1.8rem;">Care ForU</span>
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
                    <ul class="navbar-nav gap-4">
                        <li class="nav-item"><a class="nav-link" href="Index.aspx">Home</a></li>
                        <li class="nav-item"><a class="nav-link" href="about.aspx">About</a></li>
                        <li class="nav-item"><a class="nav-link" href="Services.aspx">Services</a></li>
                        <li class="nav-item"><a class="nav-link" href="contact.aspx">Contact</a></li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">Login</a>
                            <ul class="dropdown-menu">
                                 <li><a class="dropdown-item" href="Adminlogin.aspx">Admin login</a></li>
                                <li><a class="dropdown-item" href="Userlogin.aspx">User Login</a></li>
                                <li><a class="dropdown-item" href="nurselogin.aspx">Nurse Login</a></li>
                                <li><a class="dropdown-item" href="Ayalogin.aspx">Aya Login</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <!-- Login Form -->
        <div class="login-box">
            <h2>Welcome Back,  Admin</h2>
            <form onsubmit="return validateLogin()">
                <div class="form-group">
                    <label>Email</label>
                  <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control form-control-lg" placeholder="Enter Email"></asp:TextBox>

                     
                </div>
                <div class="form-group">
                    <label>Password</label>
                   <asp:TextBox runat="server" ID="txtPassword" CssClass="form-control form-control-lg" TextMode="Password" placeholder="Enter Password"></asp:TextBox>

                </div>
                 <center><asp:Label runat="server" ID="lblError" CssClass="fw-bold" ></asp:Label></center>
                 <asp:Button ID="Button1" runat="server" CssClass="btn-login" OnClick="SignIn_Click" Text="Login" />

            </form>
            
        </div>

        <!-- Footer -->
        <footer>
            &copy; 2025 Care ForU. All rights reserved.
        </footer>
    </form>
</body>
</html>
