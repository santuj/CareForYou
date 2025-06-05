<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UpdateProfile.aspx.cs" Inherits="Aya_UpdateProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>📝 Update Profile | Aya</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
    body {
      background: #f4f8fb;
      font-family: 'Segoe UI', sans-serif;
       
    }
    .sidebar {
        height: 100vh;
        background-color: #343a40;
        color: white;
        padding-top: 20px;
        position: fixed;
        width: 220px;
      }
  
      .sidebar a {
        color: white;
        display: block;
        padding: 12px 20px;
        text-decoration: none;
        transition: 0.2s;
      }
  
      .sidebar a:hover {
        background-color: #495057;
      }

    .container {
      background: #ffffff;
      padding: 30px;
      border-radius: 12px;
      box-shadow: 0 10px 30px rgba(0, 0, 0, 0.08);
      max-width: 700px;
    }

    h2 {
      color: #3931af;
      margin-bottom: 25px;
      text-align: center;
    }

    label {
      font-weight: 500;
    }

    .btn-primary {
      background-color: #3931af;
      border: none;
    }

    .btn-primary:hover {
      background-color: #2f288f;
    }

    footer {
      text-align: center;
      margin-top: 50px;
      color: #666;
    }
  </style>
</head>
<body>
    <form id="form1" runat="server">
   <div class="sidebar text-center">
        <img runat="server" id="ProfilePicture" class="rounded-circle border border-white mx-3"
                     style="width: 150px; height: 150px; background-color: #ddd;" />
           
            <p class="text-center mt-2"><asp:Label ID="lblUserName"   runat="server" Text="Aya"></asp:Label></p>
            
        <hr style="border-color: rgba(255,255,255,0.2);">
      
        <a href="../Aya/Home.aspx">🏠 Dashboard</a>
        <a href="../Aya/viewbooking.aspx">📅 View Bookings</a>
        <a href="../Aya/AssignedTasks.aspx">📋 Assigned Tasks</a>
        <a href="../Aya/UpdateProfile.aspx">📝 Update Profile</a>
        <a href="../General/Index.aspx">🚪 Logout</a>
      </div>

  <div class="container">
    <h2>📝 Update Your Profile</h2>
    <form id="updateProfileForm">
      <div class="mb-3">
        <label for="fullName" class="form-label">Full Name*</label>
          <asp:TextBox runat="server" CssClass="form-control" placeholder="Enter your full name" ID="txtName" required></asp:TextBox>
      </div>

     <%-- <div class="mb-3">
        <label for="email" class="form-label">Email Address*</label>
        <input type="email" class="form-control" id="email" required>
      </div>--%>

      <div class="mb-3">
        <label for="phone" class="form-label">Phone Number*</label>
             <asp:TextBox runat="server" CssClass="form-control" ID="txtNumber" placeholder="Enter your number" required></asp:TextBox>
      </div>

        <%--<div class="mb-3">
          <label class="form-label">Upload Your Photo*</label>
          <input type="file" class="form-control" id="photo" accept="image/*" required>
        </div>--%>

         <div class="md-3">
            <asp:Label ID="Label6" runat="server" AssociatedControlID="ddlExperience" Text="Year of Experience*" CssClass="form-label" />
            <asp:DropDownList ID="ddlExperience" runat="server" CssClass="form-select" required="true">
                <asp:ListItem Text="-- Select --" Value="" />
                <asp:ListItem>0-1 years</asp:ListItem>
                <asp:ListItem>1-3 years</asp:ListItem>
                <asp:ListItem>3+ years</asp:ListItem>
            </asp:DropDownList>
        </div>

      <div class="mb-3">
            <asp:Label ID="Label7" runat="server" AssociatedControlID="txtCountry" Text="Country*" CssClass="form-label" />
            <asp:TextBox ID="txtCountry" runat="server" CssClass="form-control" required="true" />
      </div>

        <div class="col-12">
            <asp:Label ID="Label5" runat="server" AssociatedControlID="txtAddress" Text="Address*" CssClass="form-label" />
            <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="2" required="true" />
        </div>

      <div class="mb-3">
       <asp:Label ID="Label8" runat="server" AssociatedControlID="txtZipCode" Text="Zip Code*" CssClass="form-label" />
            <asp:TextBox ID="txtZipCode" runat="server" CssClass="form-control" required="true" />
      </div>

      <%--<div class="mb-3">
        <label for="profession" class="form-label">Profession*</label>
        <input type="text" class="form-control" id="profession" required>
      </div>--%>

      <div class="mb-3">
<asp:Label ID="Label10" runat="server" AssociatedControlID="txtSpecialty" Text="Primary Specialty*" CssClass="form-label" />
            <asp:TextBox ID="txtSpecialty" runat="server" CssClass="form-control" required="true" />
      </div>

      <div class="mb-3">
       <asp:Label ID="Label15" runat="server" AssociatedControlID="ddlEmploymentType" Text="Employment Type*" CssClass="form-label" />
            <asp:DropDownList ID="ddlEmploymentType" runat="server" CssClass="form-select" required="true">
                <asp:ListItem Text="-- Select --" Value="" />
                <asp:ListItem Text="Full-Time" />
                <asp:ListItem Text="Part-Time" />
                <asp:ListItem Text="Contract" />
                <asp:ListItem Text="Temporary" />
            </asp:DropDownList>
      </div>

      <div class="mb-3">
       <asp:Label ID="Label16" runat="server" AssociatedControlID="ddlStartTime" Text="Start Time*" CssClass="form-label" />
            <asp:DropDownList ID="ddlStartTime" runat="server" CssClass="form-select" required="true">
                <asp:ListItem Text="-- Select --" Value="" />
                <asp:ListItem Text="Immediately" />
                <asp:ListItem Text="Within 2 weeks" />
                <asp:ListItem Text="Within a month" />
                <asp:ListItem Text="Flexible" />
            </asp:DropDownList>
      </div>

<%--      <div class="mb-3">
        <label for="recommendedBy" class="form-label">Were You Recommended by Anyone? (Optional)</label>
        <input type="text" class="form-control" id="recommendedBy">
      </div>

      <div class="mb-3">
        <label for="recruiter" class="form-label">Recruiter You Were Recommended To? (Optional)</label>
        <input type="text" class="form-control" id="recruiter">
      </div>--%>

       <div class="d-grid">
          <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" OnClick="Update_Click" Text="Save Changes" />
        </div>

         <center><asp:Label runat="server" ID="lblError" CssClass="fw-bold text-success"></asp:Label></center>
      
    </form>
  </div>

  <footer>
    &copy; 2025 Care ForU - Aya Panel
  </footer>

  <script>
      document.getElementById('updateProfileForm').addEventListener('submit', function (e) {
          e.preventDefault();
          alert("Profile updated successfully!");
          // Here you could send the form data to your server using fetch() or AJAX
      });
  </script>

    </form>
</body>
</html>
