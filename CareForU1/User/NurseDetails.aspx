<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NurseDetails.aspx.cs" Inherits="User_NurseDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <title>Nurse Details</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" rel="stylesheet" />

    <style>
        body {
            background-color: #eef4fc;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        .card {
            max-width: 800px;
            margin: auto;
        }

        .nurse-img {
            height: 150px;
            width: 150px;
            object-fit: cover;
            border-radius: 50%;
            border: 4px solid #007bff;
        }
         .dashboard-header {
            background-color: #007bff;
            color: white;
            padding: 25px 0;
            text-align: center;
            
        }

         .rating {
    direction: rtl;
    unicode-bidi: bidi-override;
    text-align: center;
}

.rating input {
    display: none;
}

.rating label {
    color: #ccc;
    font-size: 2em;
    padding: 0 5px;
    cursor: pointer;
}

.rating input:checked ~ label,
.rating label:hover,
.rating label:hover ~ label {
    color: #f5c518;
}


         footer {
            background-color: #007bff;
            color: white;
            text-align: center;
            padding: 15px 0;
            margin-top: 270px;
            
        }
         
    </style></head>
<body>
    <form id="form1" runat="server">
          <!-- Header -->
       

    <div class="dashboard-header position-relative">
        <h1 class="mb-3">Booking Requests</h1>
        <p>Request nurse services and view pending booking requests.</p>
    </div>
     <div class="container py-5">
            <div class="card shadow-lg border-0 rounded-4 p-4">
                <div class="text-center mb-4">
                    <asp:Image ID="imgProfile" runat="server" CssClass="nurse-img" />
                    <h3 class="mt-3"><asp:Label ID="lblName" runat="server" Text=""></asp:Label></h3>
                </div>
                <div class="row g-3">
                    <div class="col-md-6">
                        <p><strong>Qualification:</strong> <asp:Label ID="lblQualification" runat="server" /></p>
                        <p><strong>Experience:</strong> <asp:Label ID="lblExperience" runat="server" /> years</p>
                        <p><strong>License Number:</strong> <asp:Label ID="lblLicense" runat="server" /></p>
                    </div>
                    <div class="col-md-6">
                        <p><strong>Email:</strong> <asp:Label ID="lblEmail" runat="server" /></p>
                        <p><strong>Address:</strong> <asp:Label ID="lblAddress" runat="server" /></p>
                    </div>
                </div>
                <div class="text-center mt-4">
                    <asp:HyperLink runat="server" NavigateUrl="~/User/NurseAvailability.aspx" CssClass="btn btn-danger btn-lg rounded-pill px-5" Text="Back"></asp:HyperLink>
                    <asp:Button ID="btnRequest" runat="server" Text="Request" CssClass="btn btn-primary btn-lg rounded-pill px-5" OnClick="request_Click" />
                </div>
                  <div class="text-center mt-4">
    <h5 class="mb-2">Rate This Nurse</h5>
    <div class="rating">
        <asp:RadioButton ID="star5" runat="server" GroupName="rating" Value="5" />
        <label for="star5"><i class="fas fa-star"></i></label>

        <asp:RadioButton ID="star4" runat="server" GroupName="rating" Value="4" />
        <label for="star4"><i class="fas fa-star"></i></label>

        <asp:RadioButton ID="star3" runat="server" GroupName="rating" Value="3" />
        <label for="star3"><i class="fas fa-star"></i></label>

        <asp:RadioButton ID="star2" runat="server" GroupName="rating" Value="2" />
        <label for="star2"><i class="fas fa-star"></i></label>

        <asp:RadioButton ID="star1" runat="server" GroupName="rating" Value="1" />
        <label for="star1"><i class="fas fa-star"></i></label>
    </div>
</div>
            </div>

        </div>


          <footer>
        <p>&copy; 2025 Care ForU. All rights reserved.</p>
    </footer>
    </form>
</body>
</html>
