<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NurseVerification.aspx.cs" Inherits="Admin_NurseVerification" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Nurse Verification | Admin | Care Foru</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet" />
    <style>
        body {
            background-color: #f4f9ff;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        .sidebar {
            height: 100vh;
            position: fixed;
            left: 0;
            top: 0;
            width: 260px;
            background-color: #007bff;
            color: white;
            padding-top: 20px;
        }

        .sidebar .profile-photo {
            width: 100px;
            height: 100px;
            object-fit: cover;
            border-radius: 50%;
            border: 3px solid #fff;
            margin: 0 auto 15px;
            display: block;
        }

        .sidebar h4 {
            text-align: center;
            margin-bottom: 25px;
        }

        .sidebar .nav-heading {
            padding-left: 20px;
            font-size: 14px;
            margin-top: 10px;
            color: #d9edf7;
        }

        .sidebar a {
            color: white;
            display: block;
            padding: 12px 20px;
            text-decoration: none;
            transition: 0.3s;
        }

        .sidebar a:hover {
            background-color: #0056b3;
        }

        .sidebar i {
            margin-right: 10px;
        }

        .profile-photo {
            width: 90px;
            height: 90px;
            object-fit: cover;
            border-radius: 50%;
            border: 3px solid #fff;
            display: block;
            margin: 0 auto 15px;
        }

        .main-content {
            margin-left: 260px;
            padding: 40px 30px;
        }

        .section-title {
            color: #004085;
            font-weight: bold;
            margin-bottom: 30px;
        }

        .table {
            background-color: white;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
        }

        .table th {
            background-color: #007bff;
            color: white;
        }

        .table td {
            vertical-align: middle;
        }

        footer {
            background-color: #004085;
            color: white;
            text-align: center;
            padding: 12px 0;
            margin-top: 80px;
            margin-right:60px;
            margin-left:310px;
            border-radius:20px;
            
        }

        .action-btns button {
            margin-right: 8px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <!-- Sidebar -->
        <div class="sidebar">
            <img src="../Images/Adminpic.jpg" alt="Admin" class="profile-photo" />
             <h4><asp:Label runat="server" ID="UserName"></asp:Label></h4>

            <div class="nav-heading"></div>
            <a href="Home.aspx">🏠 Home</a>
              
            <a href="Usermanagement.aspx"><i class="bi bi-people-fill"></i>User Management</a>
            <a href="NurseVerification.aspx"><i class="bi bi-person-check-fill"></i>Nurse Verification</a>
            
            <a href="AyaVerification.aspx"><i class="bi bi-person-bounding-box"></i>Aya Verification</a>

            <div class="nav-heading">More</div>
            <a href="reports.aspx"><i class="bi bi-graph-up-arrow"></i>Reports</a>
            <a href="settings.aspx"><i class="bi bi-gear-fill"></i>Settings</a>
            <a href="../General/Index.aspx" style="color: #ffc107;"><i class="bi bi-box-arrow-right"></i>Logout</a>
        </div>


        <!-- Main Content -->
        <div class="main-content">
            <h2 class="section-title text-center">Nurse Registration Verification</h2>

            <div class="table-responsive">
                <table class="table table-bordered text-center">
                    <thead>
                        <tr>
                             
                            <th>Photo</th>
                            <th>Name</th>
                            <th>Email</th>
                            <th>Certificate</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>

                        <!-- Example nurse -->
                        <asp:Repeater runat="server" ID="rptNurseReg" OnItemCommand ="rptNurse_itemCommand">
                            <ItemTemplate>                                <tr>
                             
                            <td><img src="data:image/png;base64,<%#Convert.ToBase64String((byte[])Eval("ProfilePicture")) %>" width="50" height="50" class="rounded-circle" /></td>
                            <td><%#Eval("Name") %></td>
                            <td><%#Eval("Email") %></td>
                            <td><a href='NurseCertificateView.aspx?ID=<%#Eval("ID")%>' class="btn btn-sm btn-outline-primary">View</a></td>
                            <td class="action-btns">
                                <asp:Button runat="server" CssClass="btn btn-sm btn-success" Text="Approve" CommandName="approveNurse" CommandArgument='<%#Eval("ID") %>' OnClientClick="return confirm('Are you sure you want to Approve the nurse?')" />
                            <asp:Button  runat="server" CssClass="btn btn-sm btn-danger" Text="Rejected" CommandName="RejectNurse" CommandArgument='<%#Eval("ID") %>' OnClientClick="return confirm('Are you sure you want to Rejected the Nurse?')" />
                            </td>
                        </tr>
                            </ItemTemplate>
                        </asp:Repeater>

                        <!-- Add more rows dynamically using code-behind -->
                    </tbody>
                </table>
            </div>
        </div>

        <!-- Footer -->
        <footer>
            <p>&copy; 2025 Care Foru. Admin Panel. All rights reserved.</p>
        </footer>
    </form>
</body>
</html>
