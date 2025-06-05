<%@ Page Language="C#" AutoEventWireup="true" CodeFile="bookingrequest.aspx.cs" Inherits="Nurse_bookingrequest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Booking Requests | Care ForU</title>
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
      max-width: 1000px;
    }

    .request-card {
      background-color: #fff;
      padding: 20px;
      border-radius: 15px;
      box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
      margin-bottom: 20px;
      position: relative;
    }

    .request-header {
      font-weight: bold;
      font-size: 18px;
      color: #007bff;
      margin-bottom: 10px;
    }

    .request-info {
      font-size: 15px;
      margin-bottom: 5px;
    }

    .action-buttons {
      margin-top: 15px;
      display: flex;
      gap: 10px;
    }

    .btn-confirm {
      background-color: #28a745;
      border: none;
    }
    

    .btn-reject {
      background-color: #dc3545;
      border: none;
    }

    footer {
      background-color: #007bff;
      color: white;
      text-align: center;
      padding: 15px 0;
      margin-top: 100px;
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
            <a href="Index.aspx">🏠 Dashboard</a>
            <a href="nurseProfileupdate.aspx">👤 Update Profile</a>
            <a href="bookingrequest.aspx">📅 Booking Requests</a>
            <a href="#">💳 Payment History</a>
            <a href= "../General/contact.aspx">💬 Support</a>
            <a href="../General/Index.aspx" class="text-danger">🚪 Logout</a>
        </div>
      <!-- Header -->
  <div class="header">
    <h1>Booking Requests</h1>
    <p>Care ForU | Nurse Dashboard</p>
  </div>

  <!-- Requests List -->
  <div class="container">
    
    <!-- Example Request 1 -->
       <asp:Repeater runat="server" ID="rptRequest" OnItemCommand="rptRequest_ItemCommand">
                        <ItemTemplate>
    <div class="request-card">
      <div class="request-header">Patient: <%#Eval("Name") %></div>
      <div class="request-info"><strong>Phone:</strong> <%#Eval("Contact") %></div>
      <div class="request-info"><strong>Email:</strong> <%#Eval("Email") %></div>
      <div class="request-info"><strong>Service Time From:</strong> <%#Eval("FromDate") %> - <%#Eval("FromTime") %></div>
      <div class="request-info"><strong>Service Time To:</strong> <%#Eval("ToDate") %> - <%#Eval("ToTime") %></div>
      <div class="request-info"><strong>Address:</strong> <%#Eval("Address") %></div>

      <div class="action-buttons">
       <asp:Button ID="Button1" runat="server" CssClass="btn btn-success" Text="Confirm" CommandName="ConfirmRequest" CommandArgument='<%#Eval("ID") %>' />
              <asp:Button ID="Button2" runat="server" CssClass="btn btn-danger" Text="Rejected" CommandName="RejectRequest" CommandArgument='<%#Eval("ID") %>' />

      </div>
    </div>
                             </ItemTemplate>
                  </asp:Repeater>


    <!-- Example Request 2 -->
   

  <!-- Footer -->
  <footer>
    <p>&copy; 2025 Care Foru. All rights reserved.</p>
  </footer>
    </form>
</body>
</html>
