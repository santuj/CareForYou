<%@ Page Language="C#" AutoEventWireup="true" CodeFile="viewbooking.aspx.cs" Inherits="Aya_viewbooking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Aya | View Bookings</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
    body {
      font-family: 'Segoe UI', sans-serif;
      background-color: #f4f7fa;
      
    }
    .sidebar {
        height: 100vh;
        background-color: #343a40;
        color: white;
        padding-top: 20px;
        position: fixed;
        width: 220px;
        top: 0
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
      background: #fff;
      border-radius: 12px;
      box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
      padding: 50px;
      margin: 50px 220px;   
    }

    h2 {
      color: #3931af;
    }

    table {
      margin-top: 20px;
    }

    thead {
      background-color: #3931af;
      color: white;
    }

    tbody tr:hover {
      background-color: #f1f1f1;
    }

    .status-pending {
      color: #ffc107;
    }

    .status-confirmed {
      color: #198754;
    }

    .status-cancelled {
      color: #dc3545;
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
       <div class="main">
           <div class="sidebar text-center">
        <img runat="server" id="ProfilePicture" class="rounded-circle border border-white mx-3"
                     style="width: 150px; height: 150px; background-color: #ddd;" />
           
            <p class="text-center mt-2"><asp:Label ID="lblUserName"   runat="server" Text="Aya"></asp:Label></p>
            
        <hr style="border-color: rgba(255,255,255,0.2);"
            <div>
         <a href="../Aya/Home.aspx">🏠 Dashboard</a>
        <a href="../Aya/viewbooking.aspx">📅 View Bookings</a>
        <a href="../Aya/AssignedTasks.aspx">📋 Assigned Tasks</a>
        <a href="../Aya/UpdateProfile.aspx">📝 Update Profile</a>
        <a href="../General/Index.aspx">🚪 Logout</a>
      </div>

  <div class="container">
    <h2 class="text-center mb-4">📅 Your Bookings</h2>

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
     
   </div>

  <footer>
    &copy; 2025 Care ForU - Aya Panel
  </footer>

 

    </form>
</body>
</html>
