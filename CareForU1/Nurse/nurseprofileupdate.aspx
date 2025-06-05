<%@ Page Language="C#" AutoEventWireup="true" CodeFile="nurseprofileupdate.aspx.cs" Inherits="Nurse_nursepeofileupdate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Nurse Profile Update | Care Foru</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
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

    .header {
      background-color: #007bff;
      color: white;
      text-align: center;
      padding: 20px 0;
      width: 64vw;
      margin: 0 auto; 
      border-radius:20px;
    }

    .container {
      margin-top: 40px;
      margin-bottom:40px;
      max-width: 800px;
    }

    .form-section {
      background-color: #fff;
      padding: 30px;
      border-radius: 15px;
      box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
    }

    .profile-pic-container {
      text-align: center;
      margin-bottom: 20px;
    }

    .profile-pic-container img {
      width: 120px;
      height: 120px;
      object-fit: cover;
      border-radius: 50%;
      border: 3px solid #007bff;
      margin-bottom: 10px;
    }

     footer {
            background-color: #007bff;
            color: white;
            text-align: center;
            padding: 15px 0;
            margin-top: 100px;
            width: 64vw;
            margin: 0 auto; 
            border-radius:20px;
        }
  </style>
</head>
<body>
    <form id="form1" runat="server">

         <!-- Sidebar -->
        <div class="sidebar">
                 <img runat="server" id="ProfilePicture" class="rounded-circle border border-white mx-3"
                     style="width: 150px; height: 150px; background-color: #ddd;" />
                        <h5 class="text-center mt-2">Welcome</h5>
            <p class="text-center"><asp:Label ID="lblUserName" runat="server" Text="Nurse"></asp:Label></p>
            <hr style="border-color: rgba(255,255,255,0.2);" />
            <a href="Index.aspx">🏠 Home</a>
            <a href="nurseProfileupdate.aspx">👤 Update Profile</a>
            <a href="bookingrequest.aspx">📅 Booking Requests</a>
            <a href="#">💳 Payment History</a>
            <a href= "../General/contact.aspx">💬 Support</a>
            <a href="../General/Index.aspx" class="text-danger">🚪 Logout</a>
        </div>
     <!-- Header -->
  <div class="header">
    <h1>Update Your Profile</h1>
    <p>Care ForU | Nurse Portal</p>
  </div>

  <!-- Main Container -->
  <div class="container">
    <div class="form-section">

      <h3 class="text-center text-primary mb-4">Profile Details</h3>

      <!-- Profile Picture Upload -->
      <div class="profile-pic-container">
        <img runat="server" id="profilePreview" alt="Profile Picture">
       <%-- <div class="mt-2">
          <input type="file" class="form-control" id="profilePic" accept="image/*">
        </div>--%>
      </div>

      <form>
        <!-- Name and Contact -->
        <div class="row mb-3">
          <div class="col-md-6">
            <label for="nurseName" class="form-label">Full Name</label>
          <asp:TextBox runat="server" CssClass="form-control" placeholder="Enter your full name" ID="txtName" required></asp:TextBox>
          </div>
          <div class="col-md-6">
            <label for="nursePhone" class="form-label">Phone Number</label>
             <asp:TextBox runat="server" CssClass="form-control" ID="txtNumber" placeholder="Enter your number" required></asp:TextBox>
          </div>
        </div>

           <div class="mb-3">
                                <asp:Label ID="lblQualification" runat="server" Text="Nursing Qualification" CssClass="form-label"></asp:Label>
                                    <asp:DropDownList ID="ddlQualification" runat="server" CssClass="form-select" AppendDataBoundItems="true" Required="true">
                                   <asp:ListItem Text="-- Select Qualification --" Value="" />
                                          <asp:ListItem Text="B.Sc Nursing" Value="bsc_nursing" />
                                           <asp:ListItem Text="GNM (General Nursing & Midwifery)" Value="gnm" />
                                            <asp:ListItem Text="ANM (Auxiliary Nursing Midwifery)" Value="anm" />
                                            </asp:DropDownList>
                            </div>
         
        <div class="row mb-3">
          <div class="mb-3">
          <label class="form-label">Years of Experience</label>
           <asp:TextBox runat="server" CssClass ="form-control" ID="txtyear" placeholder="Enter years of experience" TextMode="Number" required></asp:TextBox>
                                 
              </div>
           
        </div>

           <div class="mb-3">
            <label class="form-label">Nursing Registration Number</label>
              <asp:TextBox runat="server" CssClass ="form-control" ID="Txtlicense" placeholder="Enter license number" TextMode="Number" required></asp:TextBox>

             </div>

        <!-- Address -->
        <div class="mb-3">
          <label for="nurseAddress" class="form-label">Address</label>
           <asp:TextBox runat="server" CssClass="form-control"  ID="txtAddress" placeholder="Enter Your Address" required></asp:TextBox>

        </div>

        <!-- Certification Upload -->
        <h5 class="text-secondary mt-4">Upload Certifications</h5>
        <div class="mb-3">
          <label for="certifications" class="form-label">Upload Certificate (PDF/Image)</label>
          <asp:TextBox type="file" runat="server" CssClass="form-control" ID="certification"   accept=".jpg,.jpeg,.png" required></asp:TextBox>

           
        </div>

        <!-- Save Button -->
        <div class="d-grid">
          <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" OnClick="Update_Click" Text="Save Changes" />
        </div>

          

      

    </div>

      <center><asp:Label runat="server" ID="lblError" CssClass="fw-bold text-success"></asp:Label></center>
      
  </div>
        </form>

  <!-- Footer -->
  <footer>
    <p>&copy; 2025 Care ForU. All rights reserved.</p>
  </footer>

  <!-- Profile Picture Preview Script -->
  <script>
    const profilePicInput = document.getElementById('profilePic');
    const profilePreview = document.getElementById('profilePreview');

      profilePicInput.addEventListener('change', function () {
        const file = this.files[0];
          if (file) {
            const reader = new FileReader();
              reader.onload = function (e) {
                  profilePreview.src = e.target.result;
              }
              reader.readAsDataURL(file);
          }
      });
  </script>

 

    </form>
</body>
</html>
