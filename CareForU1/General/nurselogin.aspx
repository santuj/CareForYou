<%@ Page Language="C#" AutoEventWireup="true" CodeFile="nurselogin.aspx.cs" Inherits="General_nurselogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Nurse login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  

    <style>
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

   <section class="vh-100" style="background-color: #508bfc;">
        <div class="container py-5 h-100">
          <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col-12 col-md-8 col-lg-6 col-xl-5">
              <div class="card shadow-2-strong" style="border-radius: 1rem;">
                <div class="card-body p-5 text-center">
      
                  <h3 class="mb-5">Sign in</h3>
      
                  <div data-mdb-input-init class="form-outline mb-4">
                      <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control form-control-lg" placeholder="Enter Email"></asp:TextBox>
                  </div>
      
                  <div data-mdb-input-init class="form-outline mb-4">
                      <asp:TextBox runat="server" ID="txtPassword" CssClass="form-control form-control-lg" TextMode="Password" placeholder="Enter Password"></asp:TextBox>
                  </div>
      
                  <!-- Checkbox -->
                   
                  <center><asp:Label runat="server" ID="lblError" CssClass="fw-bold" ></asp:Label></center>
                    <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary btn-lg btn-block" OnClick="SignIn_Click" Text="Login" />
      
                  <hr class="my-4">
      
                  <a href="nurseregister.aspx"  class="btn btn-lg btn-block btn-primary fab fa-google me-2" style="background-color: #dd4b39;"> Sign up</a>
                  
                    
                </div>
              </div>
            </div>
          </div>
        </div>

      <footer>
        <p>&copy; 2025 Care ForU . All rights reserved.</p>
    </footer>
      </section>  
        
      
       <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
 
    </form>
</body>
</html>
