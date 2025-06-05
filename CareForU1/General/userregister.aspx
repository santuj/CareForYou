<%@ Page Language="C#" AutoEventWireup="true" CodeFile="userregister.aspx.cs" Inherits="General_userregister" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>User Registration | Care ForU</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: -webkit-linear-gradient(left, #3931af, #00c6ff);
            background-image: url("https://images.rawpixel.com/image_800/czNmcy1wcml2YXRlL3Jhd3BpeGVsX2ltYWdlcy93ZWJzaXRlX2NvbnRlbnQvbHIvcm0zNzNiYXRjaDE1LWJnLTExLmpwZw.jpg");
            background-repeat:no-repeat;
            background-size: cover;
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

        .register {
            margin-top: 3%;
            padding: 3%;
        }

        .register-left {
            text-align: center;
            color: #fff;
            margin-top: 4%;
        }

        .register-left img {
            margin-top: 15%;
            width: 50%;
            animation: moveUpDown 1.5s infinite alternate;
        }

        @keyframes moveUpDown {
            0% {
                transform: translateY(0);
            }

            100% {
                transform: translateY(-10px);
            }
        }

        .register-right {
            background: #fff;
            border-radius: 10px;
            padding: 30px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        .register-heading {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }

        .btnRegister {
            width: 100%;
            border: none;
            border-radius: 25px;
            padding: 10px;
            background: #0062cc;
            color: #fff;
            font-size: 18px;
            cursor: pointer;
            margin-top: 20px;
        }

        .btnRegister:hover {
            background: #004a99;
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

     <div class="container register">
        <div class="row">
            <div class="col-md-4 register-left">
                <img src="../Images/care forU logo.jpg" alt="Care ForU Logo">
                <h3>Welcome</h3>
                <p>Join us and get the best healthcare services!</p>
               <%-- <a href="Userlogin.aspx"class="btn btn-warning fs-5"> Login</a>--%>
            </div>
            <div class="col-md-8 register-right">
                <h3 class="register-heading">User Registration</h3>
                
                    <div class="row">
                        <div class="col-md-6">
                            <!-- Full Name -->
                            <div class="mb-3">
                                <label class="form-label">Full Name</label>
                                <asp:TextBox runat="server" CssClass="form-control" placeholder="Enter full name" ID="txtName" required></asp:TextBox>
                            </div>

                            <!-- Gender -->
                            <div class="mb-3">
                                <asp:DropDownList ID="ddlGender" runat="server" CssClass="form-select" Required="true">
                                     <asp:ListItem Text="-- Select Gender --" Value="" />
                                   <asp:ListItem Text="Male" Value="Male" />
                                   <asp:ListItem Text="Female" Value="Female" />
                                  </asp:DropDownList>

                            </div>

                            <!-- Contact Number -->
                            <div class="mb-3">
                                <label class="form-label">Contact Number</label>
                                <asp:TextBox runat="server" CssClass="form-control" ID="txtNumber" placeholder="Enter your number" required></asp:TextBox>
                            </div>

                            <!-- Email -->
                            <div class="mb-3">
                                <label class="form-label">Email Address</label>
                                <asp:TextBox runat="server" CssClass="form-control"  ID="txtEmail" TextMode="Email" placeholder="Enter Your Email" required></asp:TextBox>
                            </div>

                            <!-- Date of Birth -->
                            <div class="mb-3">
                                <label class="form-label">Date of Birth</label>
                                <asp:TextBox runat="server" CssClass="form-control" ID="txtDOB" TextMode="Date" required></asp:TextBox>
                            </div>

                             <div class="mb-3">
                                  <label class="form-label">Add Your Photo</label>
                               <asp:FileUpload runat="server" ID="profilePic"  CssClass="form-control"/>
                            </div>
                            <!-- Address -->
                            <div class="mb-3">
                                <label class="form-label">Address</label>
                                <asp:TextBox runat="server" CssClass="form-control"  ID="txtAddress" placeholder="Enter Your Address" required></asp:TextBox>
                            </div>
                        </div>

                        <div class="col-md-6">
                             
                   <div class="md-6">
                <asp:Label ID="lblIDType" runat="server" Text="Select ID Type" CssClass="form-label"></asp:Label>
                <asp:DropDownList ID="ddlIDType" runat="server" CssClass="form-select">
                    <asp:ListItem Text="-- Select ID Type --" Value="" />
                    <asp:ListItem Text="Aadhar" Value="aadhar" />
                    <asp:ListItem Text="PAN" Value="pan" />
                    <asp:ListItem Text="Voter ID" Value="voter" />
                    <asp:ListItem Text="Driving License" Value="license" />
                    <asp:ListItem Text="Passport" Value="passport" />
                </asp:DropDownList>
            </div>

                                        <div class="md-6">
                <asp:Label ID="Label12" runat="server" AssociatedControlID="Txtidnumber" Text="Enter ID Number" CssClass="form-label" />
                <asp:TextBox ID="Txtidnumber" runat="server" CssClass="form-control" placeholder="ID Number" required="true"></asp:TextBox>
            </div>
                                        <div class="md-6">
                <asp:Label ID="Label13" runat="server" AssociatedControlID="profilePic" Text="Upload ID Proof" CssClass="form-label" />
                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control" />
            </div>
                            <!-- City -->
                            <div class="mb-3">
                                <label class="form-label">City</label>
                                <asp:TextBox runat="server" CssClass="form-control"  ID="txtCity" placeholder="Enter Your City" required></asp:TextBox>
                            </div>

                            <!-- State -->
                            <div class="mb-3">
                                <label class="form-label">State</label>
                                <asp:TextBox runat="server" CssClass="form-control"  ID="txtState" placeholder="Enter Your State" required></asp:TextBox>
                            </div>

                            <!-- Password -->
                            <div class="mb-3">
                                <label class="form-label">Enter a Password</label>
                                <asp:TextBox runat="server" CssClass="form-control"  ID="txtPassword" TextMode="Password" placeholder="Password" required></asp:TextBox>
                            </div>

                            <div class="mb-3">
                                <label class="form-label">Re-enter a Password</label>
                                <asp:TextBox runat="server" CssClass="form-control"  ID="txtConfirmPassword"  placeholder="Confirm Password" required></asp:TextBox>
                            </div>


                             
                        </div>
                    </div>
                    <center><asp:Label runat="server" CssClass="fw-bold" ID="lblError"></asp:Label></center>
                    <!-- Submit Button -->
                    <asp:Button ID="Button1" runat="server" CssClass="btnRegister" Text="Register Now" OnClick="btn_Click"/>
                
            </div>
        </div>
    </div>

        <!-- Footer -->
    <footer>
        <p>&copy; 2025 Care ForU . All rights reserved.</p>
    </footer>

    </form>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
