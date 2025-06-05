<%@ Page Language="C#" AutoEventWireup="true" CodeFile="requestnurse_payment.aspx.cs" Inherits="General_requestnurse_payment" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Request Nurses Now | Care Foru</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        body {
            background-color: #eef4fc;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        .form-section {
            background-color: #fff;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
            margin-top: 40px;
            margin-bottom: 50px;
        }

        .container {
            max-width: 900px;
        }

        .section-title {
            color: #007bff;
            margin-bottom: 25px;
        }

        footer {
            background-color: #007bff;
            color: white;
            text-align: center;
            padding: 15px 0;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="form-section mt-5">
                <h2 class="section-title text-center">Request Nurses Now</h2>

                <!-- Patient Details -->
                <h5 class="mb-3 text-secondary">Patient & Service Details</h5>
                <div class="row mb-3">
                    <div class="col-md-6">
                        <label class="form-label">Full Name</label>
                        <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="Enter your full name" required></asp:TextBox>
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
                        <asp:FileUpload ID="profilePic" runat="server" CssClass="form-control" required />
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
                          </asp:Label>               

                </div>
                <center><asp:Label runat="server" CssClass="fw-bold" ID="lblError"></asp:Label></center>

                <div class="col-12 mt-4">
             <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary btnRegister w-100" Text="Confirm Booking" OnClick="register_Click"   />            

                </div>
            </div>
        </div>

        <footer>
            <p>&copy; 2025 Care ForU. All rights reserved.</p>
        </footer>

<%--       <script type="text/javascript">
           function validateTimeDuration() {
               const fromDate = document.getElementById('<%= txtFromDate.ClientID %>').value;
        const fromTime = document.getElementById('<%= txtFromTime.ClientID %>').value;
        const toDate = document.getElementById('<%= txtToDate.ClientID %>').value;
        const toTime = document.getElementById('<%= txtToTime.ClientID %>').value;
        const duration = parseInt(document.getElementById('<%= ddlPreferredDuration.ClientID %>').value);
        const durationError = document.getElementById('<%= lblDurationError.ClientID %>');

        if (!fromDate || !fromTime || !toDate || !toTime || isNaN(duration)) {
            durationError.style.display = "none";
            return true;
        }

        const startDateTime = new Date(`${fromDate}T${fromTime}`);
        const endDateTime = new Date(`${toDate}T${toTime}`);
        const actualHours = (endDateTime - startDateTime) / (1000 * 60 * 60);
        const roundedHours = Math.round(actualHours);

    if (roundedHours !== duration) {
        durationError.style.display = "block";
        return false;
    } else {
        durationError.style.display = "none";
        return true;
    }
    }
</script>--%>

    </form>
</body>
</html>
