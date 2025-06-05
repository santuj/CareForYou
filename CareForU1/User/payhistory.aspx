<%@ Page Language="C#" AutoEventWireup="true" CodeFile="payhistory.aspx.cs" Inherits="User_payhistory" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Payments | Care Foru</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
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

        .main-content {
            margin-left: 250px;
            padding: 20px;
        }

        .dashboard-header {
            background-color: #007bff;
            color: white;
            padding: 25px 0;
            text-align: center;
            border-radius:20px;
        }

        .dashboard-card {
            background-color: #fff;
            padding: 20px;
            border-radius: 15px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            transition: 0.3s;
        }

        .dashboard-card:hover {
            transform: translateY(-5px);
        }

        .table th,
        .table td {
            text-align: center;
        }

        .table-striped tbody tr:nth-child(odd) {
            background-color: #f8f9fa;
        }

        footer {
            background-color: #007bff;
            color: white;
            text-align: center;
            padding: 15px 0;
            margin-top: 40px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <!-- Sidebar -->
        <div class="sidebar">
            <img src="../Images/acd.jpg" alt="Profile" class="profile-picture" style="width:100px;height:100px;border-radius:50%;" />
            <h5 class="text-center mt-2">Welcome</h5>
            <p class="text-center"><asp:Label ID="lblUsername" runat="server" Text="User"></asp:Label></p>
            <hr style="border-color: rgba(255,255,255,0.2);" />
            <a href="Index.aspx">🏠 Home</a>
            <a href="Myprofile.aspx">👤 My Profile</a>
            <a href="userrequsterbooking.aspx">📅 Booking Requests</a>
            <a href="NurseAvailability.aspx">🧑‍⚕️ Nurse Availability</a>
            <a href="AyaAvailability.aspx">🧑‍⚕️ Aya Availability</a>
            <a href="Myservices.aspx">🛠 My Services</a>
            <a href="payhistory.aspx">💳 Payment History</a>
            <a href="support.aspx">💬 Support</a>
            <a href="logout.aspx" class="text-danger">🚪 Logout</a>
        </div>

        <!-- Main Content -->
        <div class="main-content">

            <!-- Header -->
            <div class="dashboard-header position-relative">
                <h1 class="mb-3">Payments & Billing History</h1>
                <p>Check your payments and view billing details.</p>
            </div>

            <!-- Payment History Card -->
            <div class="container mt-5">
                <div class="row g-4">
                    <div class="col-md-12">
                        <div class="dashboard-card">
                            <h5>Payment and Billing History</h5>
                            <p>Here is the list of your payments and billing history:</p>

                            <!-- Payment Table -->
                            <table class="table table-striped table-bordered">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Payment Date</th>
                                        <th>Amount Paid</th>
                                        <th>Payment Method</th>
                                        <th>Status</th>
                                    </tr>
                                </thead>
                                <tbody id="paymentHistory">
                                    <!-- Dynamic content will be populated here -->
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Footer -->
            <footer>
                <p>&copy; 2025 Care Foru. All rights reserved.</p>
            </footer>

        </div>

        <!-- JS to populate table -->
        <script>
            const paymentHistory = [
                {
                    id: 1,
                    paymentDate: '2025-04-10',
                    amount: '$100.00',
                    method: 'Credit Card',
                    status: 'Completed'
                },
                {
                    id: 2,
                    paymentDate: '2025-04-15',
                    amount: '$50.00',
                    method: 'UPI',
                    status: 'Pending'
                },
                {
                    id: 3,
                    paymentDate: '2025-04-18',
                    amount: '$200.00',
                    method: 'Debit Card',
                    status: 'Failed'
                }
            ];

            function populatePaymentHistory() {
                const tableBody = document.getElementById('paymentHistory');
                tableBody.innerHTML = '';

                paymentHistory.forEach((payment) => {
                    const row = document.createElement('tr');
                row.innerHTML = `
                    <td>${payment.id}</td>
                    <td>${payment.paymentDate}</td>
                    <td>${payment.amount}</td>
                    <td>${payment.method}</td>
                    <td><span class="badge bg-${payment.status === 'Completed' ? 'success' : payment.status === 'Pending' ? 'warning' : 'danger'}">${payment.status}</span></td>
                `;
                tableBody.appendChild(row);
            });
            }

            populatePaymentHistory();
        </script>


    </form>
</body>
</html>
