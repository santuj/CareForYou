<%@ Page Language="C#" AutoEventWireup="true" CodeFile="bookdaycare_payment.aspx.cs" Inherits="General_bookdaycare_payment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <title>Daycare Booking | Care ForU</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f2f6fc;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

         /*.navbar-nav .nav-link {
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
        }*/

      
        .form-section {
            background-color: #fff;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
            margin-top: 40px;
        }

        footer {
            background-color: #007bff;
            color: white;
            text-align: center;
            padding: 15px 0;
            margin-top: 50px;
        }

        .text-danger {
            font-size: 0.9rem;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

<%--       <nav class="navbar navbar-expand-lg navbar-dark bg-primary py-3">
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
                        <a class="nav-link active" href="../General/Index.aspx">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="../General/about.aspx">About</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="../General/Services.aspx">Services</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="../Generalcontact.aspx">Contact</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                            aria-expanded="false">
                            Login
                        </a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="Userlogin.aspx">User login</a></li>
                            <li><a class="dropdown-item" href="nurselogin.aspx">Nurse login</a></li>
                            <li><a class="dropdown-item" href="Ayalogin.aspx">Aya login</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </nav>--%>
         

     <div class="container">
        <div class="form-section">
            <h2 class="text-center text-primary mb-4">Book Daycare Service</h2>
            <form id="daycareForm">

                <!-- Patient Info -->
                <h5 class="text-secondary mb-3">Patient Information</h5>
                <div class="row g-3">
                    <div class="col-md-6">
                        <label class="form-label">Full Name</label>
                        <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="Enter your full name" required></asp:TextBox>
                    </div>
                    <div class="col-md-6">
                        <label class="form-label">Email Address</label>
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Enter your email" required></asp:TextBox>
                    </div>
                    <div class="col-md-6">
                        <label class="form-label">Contact Number</label>
                        <asp:TextBox ID="txtNumber" runat="server" CssClass="form-control" placeholder="Enter contact number" required></asp:TextBox>
                    </div>
                </div>

                <div class="mb-3">
                    <label class="form-label">Address</label>
                    <asp:TextBox ID="txtadress" runat="server" CssClass="form-control" placeholder="Enter your address" required></asp:TextBox>
                </div>

                

                <hr class="my-4" />

                <h5 class="text-secondary">ID Verification</h5>
                <div class="row g-3 mb-4">
                    <div class="col-md-4">
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
                    <div class="col-md-4">
                        <label class="form-label">Enter ID Number</label>
                        <asp:TextBox ID="Txtidnumber" runat="server" CssClass="form-control" placeholder="ID Number" required></asp:TextBox>
                    </div>
                    <div class="col-md-4">
                        <label class="form-label">Upload ID Proof</label>
                        <asp:FileUpload ID="File" runat="server" CssClass="form-control" />
                    </div>
                </div>

               
              <h5 class="text-secondary">Confirm Date & Time</h5>
<div class="row mb-3">
    <div class="col-md-6">
        <label class="form-label">From Date</label>
        <asp:TextBox ID="txtFromDate" runat="server" CssClass="form-control" TextMode="Date" required></asp:TextBox>
    </div>
    <div class="col-md-6">
        <label class="form-label">From Time</label>
        <asp:TextBox ID="txtFromTime" runat="server" CssClass="form-control" TextMode="Time" required></asp:TextBox>
    </div>
</div>

<div class="row mb-3">
    <div class="col-md-6">
        <label class="form-label">To Date</label>
        <asp:TextBox ID="txtToDate" runat="server" CssClass="form-control" TextMode="Date" required></asp:TextBox>
    </div>
    <div class="col-md-6">
        <label class="form-label">To Time</label>
        <asp:TextBox ID="txtToTime" runat="server" CssClass="form-control" TextMode="Time" required></asp:TextBox>
    </div>
</div>


                <div class="mb-3 col-md-6">
                    <asp:Label ID="Label1" runat="server" Text="Preferred Duration" CssClass="form-label"></asp:Label>
                    <asp:DropDownList ID="ddlPreferredDuration" runat="server" CssClass="form-select">
                        <asp:ListItem Text="-- Select Duration --" Value="" />
                        <asp:ListItem Text="3 Hours" Value="3" />
                        <asp:ListItem Text="6 Hours" Value="6" />
                        <asp:ListItem Text="12 Hours" Value="12" />
                    </asp:DropDownList>
<asp:Label ID="lblDurationError" runat="server" CssClass="text-danger mt-1" Style="display:none;">
    ⚠ Time range doesn't match selected duration.
</asp:Label>                </div>

                <center><asp:Label runat="server" CssClass="fw-bold" ID="lblError"></asp:Label></center>
                    <!-- Booking Button -->
                    <div class="col-12 mt-4">
                        
                      <asp:Button ID="btnConfirmBooking" runat="server" Text="Confirm Booking" CssClass="btn btn-primary w-100" OnClick="register_Click"  />


                    </div>
                </div>
            
        </div>
    </div>
     </form>
    <!-- Footer -->
    <footer>
        <p>&copy; 2025 Care ForU. All rights reserved.</p>
    </footer>

    <!-- Scripts -->
    <script>

        
        const form = document.getElementById("daycareForm");
        const startTimeInput = document.getElementById("startTime");
        const endTimeInput = document.getElementById("endTime");
        const durationSelect = document.getElementById("preferredDuration");
        const errorMsg = document.getElementById("durationError");
    
        function validateTimeDuration() {
            const start = startTimeInput.value;
            const end = endTimeInput.value;
            const selectedDuration = parseInt(durationSelect.value);
            if (!start || !end || isNaN(selectedDuration)) return;
    
            const [startHours, startMinutes] = start.split(':').map(Number);
            const [endHours, endMinutes] = end.split(':').map(Number);
            let diffInMinutes = (endHours * 60 + endMinutes) - (startHours * 60 + startMinutes);
            if (diffInMinutes < 0) diffInMinutes += 24 * 60;
            const actualDuration = diffInMinutes / 60;
    
            if (actualDuration !== selectedDuration) {
                errorMsg.style.display = 'block';
                return false;
            } else {
                errorMsg.style.display = 'none';
                return true;
            }
        }
    
        startTimeInput.addEventListener('change', validateTimeDuration);
        endTimeInput.addEventListener('change', validateTimeDuration);
        durationSelect.addEventListener('change', validateTimeDuration);
    
        form.addEventListener("submit", function (e) {
            e.preventDefault();
    
            // 1. Duration validation
            if (!validateTimeDuration()) {
                alert("❌ Please fix the time duration mismatch.");
                return;
            }
    
            // 2. ID validation
            const idType = document.getElementById("idType").value;
            const idNumber = document.getElementById("idNumber").value.trim();
            const idProof = document.getElementById("idProof").value;
            let idError = "";
    
            switch (idType) {
                case "aadhar":
                    if (!/^\d{12}$/.test(idNumber)) idError = "Aadhar must be 12 digits.";
                    break;
                case "pan":
                    if (!/^[A-Z]{5}[0-9]{4}[A-Z]{1}$/.test(idNumber.toUpperCase())) idError = "Invalid PAN format.";
                    break;
                case "voter":
                    if (!/^[A-Z]{3}[0-9]{7}$/.test(idNumber.toUpperCase())) idError = "Invalid Voter ID.";
                    break;
                case "license":
                    if (!/^[A-Z]{2}[0-9]{2}\s[0-9]{11}$/.test(idNumber.toUpperCase())) idError = "Invalid License format.";
                    break;
                case "passport":
                    if (!/^[A-Z]{1}[0-9]{7}$/.test(idNumber.toUpperCase())) idError = "Invalid Passport format.";
                    break;
                default:
                    idError = "Please select a valid ID type.";
            }
    
            if (idError || !idProof) {
                alert("❌ " + (idError || "Upload ID proof required."));
                return;
            }
    
           
        });
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

    
    </form>
</body>
</html>
