<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Ayaregister.aspx.cs" Inherits="General_Ayaregister" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Aya Registration | Care ForU</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        body {
            background: linear-gradient(135deg, #c2e9fb, #e0f7fa);
            font-family: 'Segoe UI', sans-serif;
            
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

        .navbar-nav .dropdown-item:hover {
            background-color: #007bff;
            color: #fff;
        }

        .register-left {
            text-align: center;
            color: #fff;
            padding: 30px;
        }

        .register-left img {
            width: 60%;
            margin-bottom: 20px;
            animation: moveUpDown 1.5s infinite alternate;
        }

        .register-left h3 {
            color: #3931af;
            margin-bottom: 10px;
        }

        .register-form {
            background: white;
            padding: 40px;
            border-radius: 20px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            animation: fadeIn 0.7s ease;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(30px); }
            to { opacity: 1; transform: translateY(0); }
        }

          @keyframes moveUpDown {
            0% {
                transform: translateY(0);
            }

            100% {
                transform: translateY(-10px);
            }
        }

        .form-title {
            text-align: center;
            font-size: 28px;
            margin-bottom: 30px;
            font-weight: 600;
            color: #3931af;
        }

        .form-label {
            font-weight: 600;
            color: #444;
        }

        .form-control, .form-select {
            border-radius: 12px;
            padding: 10px 15px;
            border: 1px solid #ccc;
            transition: 0.3s;
        }

        .form-control:focus, .form-select:focus {
            border-color: #007bff;
            box-shadow: 0 0 0 0.2rem rgba(0, 123, 255, 0.25);
            outline: none;
        }

        button[type="submit"] {
            border-radius: 12px;
            padding: 12px;
            font-weight: 600;
            font-size: 16px;
        }

        footer {
            margin-top: 60px;
            background-color: #3931af;
            color: white;
            text-align: center;
            padding: 15px 0;
        }

        @media (max-width: 768px) {
            .register-form {
                padding: 25px;
            }

            .register-left {
                text-align: center;
            }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
          <!-- Navigation -->
        <nav class="navbar navbar-expand-lg navbar-dark bg-primary py-3">
            <div class="container">
                <a class="navbar-brand d-flex align-items-center" href="Index.aspx">
                    <img src="../Images/care_forU_logo-2.png" alt="Care ForU Logo" width="45" height="45" class="me-2 rounded-circle" />
                    <span class="fs-4">Care ForU</span>
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
                    <ul class="navbar-nav gap-3 fs-5">
                        <li class="nav-item"><a class="nav-link active" href="Index.aspx">Home</a></li>
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

        <!-- Registration Content -->
        <div class="container my-5">
            <div class="row">
                <!-- Left Section -->
<div class="col-md-4 register-left rounded-start text-dark d-flex flex-column align-items-center justify-content-center">
    <img src="../Images/care forU logo.jpg" alt="Care Foru Logo" class="img-fluid mb-3" />
    <h3>Welcome</h3>
    <p>Join us as a registered Aya and provide quality care!</p>
<%--    <a href="Ayalogin.aspx" class="btn btn-warning fs-5">Login</a>--%>
</div>

                <!-- Right Section -->
                <div class="col-md-8">
                    <div class="register-form">
                        <div class="form-title">🧑‍⚕️ Aya Registration</div>
                        <!-- All input fields -->
                       <div class="row g-3">
        <div class="col-md-6">
            <asp:Label ID="Label1" runat="server" AssociatedControlID="txtName" Text="Full Name*" CssClass="form-label" />
            <asp:TextBox ID="txtName" runat="server" CssClass="form-control" required="true" />
        </div>
        <div class="col-md-6">
            <asp:Label ID="Label2" runat="server" AssociatedControlID="txtDOB" Text="Date of Birth*" CssClass="form-label" />
            <asp:TextBox ID="txtDOB" runat="server" CssClass="form-control" TextMode="Date" required="true" />
        </div>
        <div class="col-md-6">
            <asp:Label ID="Label3" runat="server" AssociatedControlID="txtPhone" Text="Phone Number*" CssClass="form-label" />
            <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" required="true" />
        </div>
        <div class="col-md-6">
            <asp:Label ID="Label4" runat="server" AssociatedControlID="txtEmail" Text="Email Address*" CssClass="form-label" />
            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" TextMode="Email" required="true" />
        </div>
        <div class="col-12">
            <asp:Label ID="Label5" runat="server" AssociatedControlID="txtAddress" Text="Address*" CssClass="form-label" />
            <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="2" required="true" />
        </div>
        <div class="col-md-6">
            <asp:Label ID="Label6" runat="server" AssociatedControlID="ddlExperience" Text="Year of Experience*" CssClass="form-label" />
            <asp:DropDownList ID="ddlExperience" runat="server" CssClass="form-select" required="true">
                <asp:ListItem Text="-- Select --" Value="" />
                <asp:ListItem>0-1 years</asp:ListItem>
                <asp:ListItem>1-3 years</asp:ListItem>
                <asp:ListItem>3+ years</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="col-md-6">
            <asp:Label ID="Label7" runat="server" AssociatedControlID="txtCountry" Text="Country*" CssClass="form-label" />
            <asp:TextBox ID="txtCountry" runat="server" CssClass="form-control" required="true" />
        </div>
        <div class="col-md-6">
            <asp:Label ID="Label8" runat="server" AssociatedControlID="txtZipCode" Text="Zip Code*" CssClass="form-label" />
            <asp:TextBox ID="txtZipCode" runat="server" CssClass="form-control" required="true" />
        </div>
        
        <div class="col-md-6">
            <asp:Label ID="Label10" runat="server" AssociatedControlID="txtSpecialty" Text="Primary Specialty*" CssClass="form-label" />
            <asp:TextBox ID="txtSpecialty" runat="server" CssClass="form-control" required="true" />
        </div>
        <div class="col-md-6">
            <asp:Label ID="Label11" runat="server" AssociatedControlID="txtQualification" Text="Medical Qualification" CssClass="form-label" />
            <asp:TextBox ID="txtQualification" runat="server" CssClass="form-control" />
        </div>

        <div class="row g-3 mb-6">
            <div class="col-md-6">
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
            <div class="col-md-6">
                <asp:Label ID="Label12" runat="server" AssociatedControlID="Txtidnumber" Text="Enter ID Number" CssClass="form-label" />
                <asp:TextBox ID="Txtidnumber" runat="server" CssClass="form-control" placeholder="ID Number" required="true"></asp:TextBox>
            </div>
            <div class="col-md-6">
                <asp:Label ID="Label13" runat="server" AssociatedControlID="profilePic" Text="Upload ID Proof" CssClass="form-label" />
                <asp:FileUpload ID="profilePic" runat="server" CssClass="form-control" />
            </div>
        </div>

        <div class="col-md-6">
            <asp:Label ID="Label14" runat="server" AssociatedControlID="ddlPoliceVerification" Text="Have you undergone police verification?*" CssClass="form-label" />
            <asp:DropDownList ID="ddlPoliceVerification" runat="server" CssClass="form-select" required="true">
                <asp:ListItem Text="-- Select --" Value="" />
                <asp:ListItem Text="Yes" />
                <asp:ListItem Text="No" />
            </asp:DropDownList>
        </div>
        <div class="col-md-6">
            <asp:Label ID="Label15" runat="server" AssociatedControlID="ddlEmploymentType" Text="Employment Type*" CssClass="form-label" />
            <asp:DropDownList ID="ddlEmploymentType" runat="server" CssClass="form-select" required="true">
                <asp:ListItem Text="-- Select --" Value="" />
                <asp:ListItem Text="Full-Time" />
                <asp:ListItem Text="Part-Time" />
                <asp:ListItem Text="Contract" />
                <asp:ListItem Text="Temporary" />
            </asp:DropDownList>
        </div>
        <div class="col-md-6">
            <asp:Label ID="Label16" runat="server" AssociatedControlID="ddlStartTime" Text="Start Time*" CssClass="form-label" />
            <asp:DropDownList ID="ddlStartTime" runat="server" CssClass="form-select" required="true">
                <asp:ListItem Text="-- Select --" Value="" />
                <asp:ListItem Text="Immediately" />
                <asp:ListItem Text="Within 2 weeks" />
                <asp:ListItem Text="Within a month" />
                <asp:ListItem Text="Flexible" />
            </asp:DropDownList>
        </div>
        <div class="col-md-6">
            <asp:Label ID="Label17" runat="server" AssociatedControlID="txtLocation" Text="Location*" CssClass="form-label" />
            <asp:TextBox ID="txtLocation" runat="server" CssClass="form-control" required="true" />
        </div>
        <div class="col-md-6">
            <asp:Label ID="Label18" runat="server" AssociatedControlID="filePhoto" Text="Upload Photo*" CssClass="form-label" />
            <asp:FileUpload ID="filePhoto" runat="server" CssClass="form-control" />
        </div>
        <div class="col-md-6">
            <asp:Label ID="Label19" runat="server" AssociatedControlID="txtPassword" Text="Password*" CssClass="form-label" />
            <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password" required="true" />
        </div>
        <div class="col-md-6">
            <asp:Label ID="Label20" runat="server" AssociatedControlID="txtConfirmPassword" Text="Confirm Password*" CssClass="form-label" />
            <asp:TextBox ID="txtConfirmPassword" runat="server" CssClass="form-control" TextMode="Password" required="true" />
        </div>
    </div>
                        <center><asp:Label runat="server" CssClass="fw-bold" ID="lblError"></asp:Label></center>
                        <div class="mt-4">
                            
                            <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary w-100" Text="Register Now"   OnClick="btn_Click"  />
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Footer -->
        <footer>&copy; 2025 Care ForU. All rights reserved.</footer>

        <!-- JS Validation -->
      
    </form>
</body>
</html>
