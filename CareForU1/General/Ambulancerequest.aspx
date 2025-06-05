<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Ambulancerequest.aspx.cs" Inherits="General_Ambulancerequest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Request Ambulance | Care ForU</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        body {
            background: linear-gradient(to right, #dff6ff, #e6f7ff);
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            padding-top: 90px;
            padding-bottom: 80px;
        }
        .navbar {
            position: fixed;
            top: 0;
            width: 100%;
            z-index: 1000;
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
        .navbar-nav .dropdown-menu .dropdown-item:hover {
            background-color: #007bff;
            color: #fff;
        }
        .card {
            border-radius: 20px;
            background: #ffffff;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
        }
        .ambulance-card {
            background: #fefefe;
            border-left: 6px solid #0d6efd;
            padding: 20px;
            margin-bottom: 20px;
            border-radius: 12px;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            opacity: 0;
            animation: fadeIn 0.5s ease-in forwards;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .ambulance-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.15);
            border: 2px solid #0d6efd;
        }
        .ambulance-info {
            flex-grow: 1;
        }
        .ambulance-card h5 {
            margin-bottom: 8px;
            color: #0d6efd;
        }
        .ambulance-card small {
            color: #555;
            display: block;
        }
        .btn-call {
            margin-left: 20px;
            white-space: nowrap;
            transition: background-color 0.3s ease;
        }
        .btn-call:hover {
            background-color: #0b5ed7;
        }
        @keyframes fadeIn {
            0% { opacity: 0; transform: translateY(15px); }
            100% { opacity: 1; transform: translateY(0); }
        }
        footer {
            background-color: #3931af;
            color: white;
            text-align: center;
            padding: 20px 0;
            position: fixed;
            bottom: 0;
            width: 100%;
            z-index: 1000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
   <!-- Navbar -->
          <nav class="navbar navbar-expand-lg navbar-dark bg-primary py-3">
        <div class="container">
            <a class="navbar-brand d-flex align-items-center" href="Index.aspx" style="font-size: 1.8rem;">
                <img src="../Images/care_forU_logo-2.png" alt="Care ForU Logo" width="45" height="45" class="me-2 rounded-circle">
                <span>Care ForU</span>
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
                <ul class="navbar-nav gap-4 fs-5">
                    <li class="nav-item"><a class="nav-link active" href="Index.aspx">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="about.aspx">About</a></li>
                    <li class="nav-item"><a class="nav-link" href="Services.aspx">Services</a></li>
                    <li class="nav-item"><a class="nav-link" href="contact.aspx">Contact</a></li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">Login</a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="Adminlogin.aspx">Admin login</a></li>
                            <li><a class="dropdown-item" href="Userlogin.aspx">User login</a></li>
                            <li><a class="dropdown-item" href="nurselogin.aspx">Nurse login</a></li>
                            <li><a class="dropdown-item" href="Ayalogin.aspx">Aya login</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Ambulance Request Section -->
    <div class="container">
        <div class="card shadow p-2 mt-3">
            <h3 class="text-center mb-4">🚑 Request an Ambulance</h3>
            <div class="text-center mb-4">
                <img src="../Images/image copy 2.png" alt="Ambulance" class="img-fluid rounded shadow" style="max-height: 350px;" />
            </div>
           <div class="mb-3">
    <label for="locationSelect" class="form-label">Select District (West Bengal)</label>
    <select class="form-select" id="locationSelect">
        <option value="">-- Select District --</option>
        <option value="Alipurduar">Alipurduar</option>
        <option value="Bankura">Bankura</option>
        <option value="Birbhum">Birbhum</option>
        <option value="Cooch Behar">Cooch Behar</option>
        <option value="Dakshin Dinajpur">Dakshin Dinajpur</option>
        <option value="Darjeeling">Darjeeling</option>
        <option value="Hooghly">Hooghly</option>
        <option value="Howrah">Howrah</option>
        <option value="Jalpaiguri">Jalpaiguri</option>
        <option value="Jhargram">Jhargram</option>
        <option value="Kalimpong">Kalimpong</option>
        <option value="Kolkata">Kolkata</option>
        <option value="Malda">Malda</option>
        <option value="Murshidabad">Murshidabad</option>
        <option value="Nadia">Nadia</option>
        <option value="North 24 Parganas">North 24 Parganas</option>
        <option value="Paschim Bardhaman">Paschim Bardhaman</option>
        <option value="Paschim Medinipur">Paschim Medinipur</option>
        <option value="Purba Bardhaman">Purba Bardhaman</option>
        <option value="Purba Medinipur">Purba Medinipur</option>
        <option value="Purulia">Purulia</option>
        <option value="South 24 Parganas">South 24 Parganas</option>
        <option value="Uttar Dinajpur">Uttar Dinajpur</option>
    </select>
</div>

<div class= "mb-3">
    <label for="acTypeSelect" class="form-label">Select AC Type</label>
    <select class="form-select" id="acTypeSelect">
        <option value="">-- AC Type --</option>
        <option value="AC">AC</option>
        <option value="Non-AC">Non-AC</option>
    </select>
</div>

<div class="mb-3">
    <label for="ambTypeSelect" class="form-label">Select Ambulance Category</label>
    <select class="form-select" id="ambTypeSelect">
        <option value="">-- Type --</option>
        <option value="General Transport">General Transport</option>
        <option value="Basic Life Support (BLS)">Basic Life Support (BLS)</option>
        <option value="Advanced Life Support (ALS)">Advanced Life Support (ALS)</option>
        <option value="ICU on Wheels">ICU on Wheels</option>
        <option value="Patient Transport Vehicle (PTV)">Patient Transport Vehicle (PTV)</option>
        <option value="Oxygen ambulances">Oxygen ambulances</option>
    </select>
</div>



            <div id="ambulanceList"></div>
        </div>
    </div>

    <!-- Footer -->
    <footer>
        <p>&copy; 2025 Care ForU. All rights reserved.</p>
    </footer>

    <!-- Scripts -->
    <script>
        const ambulanceData = {
            Kolkata: [
        { name: "Kolkata AC 1", type: "General Transport", acType: "AC", contact: "9000000001" },
        { name: "Kolkata AC 2", type: "General Transport", acType: "AC", contact: "9000000002" },
        { name: "Kolkata AC 3", type: "General Transport", acType: "AC", contact: "9000000003" },
        { name: "Kolkata Non-AC 1", type: "General Transport", acType: "Non-AC", contact: "9000000004" },
        { name: "Kolkata Non-AC 2", type: "General Transport", acType: "Non-AC", contact: "9000000005" },
        { name: "Kolkata Non-AC 3", type: "General Transport", acType: "Non-AC", contact: "9000000006" },
        { name: "Kolkata BLS 1", type: "Basic Life Support (BLS)", acType: "AC", contact: "9000000007" },
        { name: "Kolkata BLS 2", type: "Basic Life Support (BLS)", acType: "Non-AC", contact: "9000000008" },
        { name: "Kolkata BLS 3", type: "Basic Life Support (BLS)", acType: "AC", contact: "9000000009" },
        { name: "Kolkata ALS 1", type: "Advanced Life Support (ALS)", acType: "Non-AC", contact: "9000000010" },
        { name: "Kolkata ALS 2", type: "Advanced Life Support (ALS)", acType: "AC", contact: "9000000011" },
        { name: "Kolkata ALS 3", type: "Advanced Life Support (ALS)", acType: "Non-AC", contact: "9000000012" },
        { name: "Kolkata ICU 1", type: "ICU on Wheels", acType: "AC", contact: "9000000013" },
        { name: "Kolkata ICU 2", type: "ICU on Wheels", acType: "Non-AC", contact: "9000000014" },
        { name: "Kolkata ICU 3", type: "ICU on Wheels", acType: "AC", contact: "9000000015" },
        { name: "Kolkata PTV 1", type: "Patient Transport Vehicle (PTV)", acType: "Non-AC", contact: "9000000016" },
        { name: "Kolkata PTV 2", type: "Patient Transport Vehicle (PTV)", acType: "AC", contact: "9000000017" },
        { name: "Kolkata PTV 3", type: "Patient Transport Vehicle (PTV)", acType: "Non-AC", contact: "9000000018" },
        { name: "Kolkata Oxygen 1", type: "Oxygen ambulances", acType: "AC", contact: "9000000019" },
        { name: "Kolkata Oxygen 2", type: "Oxygen ambulances", acType: "Non-AC", contact: "9000000020" },
        { name: "Kolkata Oxygen 3", type: "Oxygen ambulances", acType: "AC", contact: "9000000021" }
            ],
            Alipurduar: [
      // General Transport
      { name: "Alipurduar GT 1", type: "General Transport", acType: "AC", contact: "9010100001" },
      { name: "Alipurduar GT 2", type: "General Transport", acType: "Non-AC", contact: "9010100002" },
      { name: "Alipurduar GT 3", type: "General Transport", acType: "AC", contact: "9010100003" },

      // Basic Life Support (BLS)
      { name: "Alipurduar BLS 1", type: "Basic Life Support (BLS)", acType: "Non-AC", contact: "9010100004" },
      { name: "Alipurduar BLS 2", type: "Basic Life Support (BLS)", acType: "AC", contact: "9010100005" },
      { name: "Alipurduar BLS 3", type: "Basic Life Support (BLS)", acType: "Non-AC", contact: "9010100006" },

      // Advanced Life Support (ALS)
      { name: "Alipurduar ALS 1", type: "Advanced Life Support (ALS)", acType: "AC", contact: "9010100007" },
      { name: "Alipurduar ALS 2", type: "Advanced Life Support (ALS)", acType: "Non-AC", contact: "9010100008" },
      { name: "Alipurduar ALS 3", type: "Advanced Life Support (ALS)", acType: "AC", contact: "9010100009" },

      // ICU on Wheels
      { name: "Alipurduar ICU 1", type: "ICU on Wheels", acType: "Non-AC", contact: "9010100010" },
      { name: "Alipurduar ICU 2", type: "ICU on Wheels", acType: "AC", contact: "9010100011" },
      { name: "Alipurduar ICU 3", type: "ICU on Wheels", acType: "Non-AC", contact: "9010100012" },

      // Patient Transport Vehicle (PTV)
      { name: "Alipurduar PTV 1", type: "Patient Transport Vehicle (PTV)", acType: "AC", contact: "9010100013" },
      { name: "Alipurduar PTV 2", type: "Patient Transport Vehicle (PTV)", acType: "Non-AC", contact: "9010100014" },
      { name: "Alipurduar PTV 3", type: "Patient Transport Vehicle (PTV)", acType: "AC", contact: "9010100015" },

      // Oxygen ambulances
      { name: "Alipurduar Oxygen 1", type: "Oxygen ambulances", acType: "Non-AC", contact: "9010100016" },
      { name: "Alipurduar Oxygen 2", type: "Oxygen ambulances", acType: "AC", contact: "9010100017" },
      { name: "Alipurduar Oxygen 3", type: "Oxygen ambulances", acType: "Non-AC", contact: "9010100018" }
            ],

            Bankura: [
               // General Transport (3 entries)
               { name: "Bankura GT 1", type: "General Transport", acType: "AC", contact: "9022210001" },
               { name: "Bankura GT 2", type: "General Transport", acType: "Non-AC", contact: "9022210002" },
               { name: "Bankura GT 3", type: "General Transport", acType: "AC", contact: "9022210003" },

               // Basic Life Support (BLS) (3 entries)
               { name: "Bankura BLS 1", type: "Basic Life Support (BLS)", acType: "Non-AC", contact: "9022210004" },
               { name: "Bankura BLS 2", type: "Basic Life Support (BLS)", acType: "AC", contact: "9022210005" },
               { name: "Bankura BLS 3", type: "Basic Life Support (BLS)", acType: "Non-AC", contact: "9022210006" },

               // Advanced Life Support (ALS) (3 entries)
               { name: "Bankura ALS 1", type: "Advanced Life Support (ALS)", acType: "AC", contact: "9022210007" },
               { name: "Bankura ALS 2", type: "Advanced Life Support (ALS)", acType: "Non-AC", contact: "9022210008" },
               { name: "Bankura ALS 3", type: "Advanced Life Support (ALS)", acType: "AC", contact: "9022210009" },

               // ICU on Wheels (3 entries)
               { name: "Bankura ICU 1", type: "ICU on Wheels", acType: "Non-AC", contact: "9022210010" },
               { name: "Bankura ICU 2", type: "ICU on Wheels", acType: "AC", contact: "9022210011" },
               { name: "Bankura ICU 3", type: "ICU on Wheels", acType: "Non-AC", contact: "9022210012" },

               // Patient Transport Vehicle (PTV) (3 entries)
               { name: "Bankura PTV 1", type: "Patient Transport Vehicle (PTV)", acType: "AC", contact: "9022210013" },
               { name: "Bankura PTV 2", type: "Patient Transport Vehicle (PTV)", acType: "Non-AC", contact: "9022210014" },
               { name: "Bankura PTV 3", type: "Patient Transport Vehicle (PTV)", acType: "AC", contact: "9022210015" },

               // Oxygen Ambulance (3 entries)
               { name: "Bankura Oxygen 1", type: "Oxygen ambulances", acType: "Non-AC", contact: "9022210016" },
               { name: "Bankura Oxygen 2", type: "Oxygen ambulances", acType: "AC", contact: "9022210017" },
               { name: "Bankura Oxygen 3", type: "Oxygen ambulances", acType: "Non-AC", contact: "9022210018" }
        ],
        Birbhum: [
            // General Transport (3 entries)
            { name: "Birbhum GT 1", type: "General Transport", acType: "AC", contact: "9022220001" },
            { name: "Birbhum GT 2", type: "General Transport", acType: "Non-AC", contact: "9022220002" },
            { name: "Birbhum GT 3", type: "General Transport", acType: "AC", contact: "9022220003" },

            // Basic Life Support (BLS) (3 entries)
            { name: "Birbhum BLS 1", type: "Basic Life Support (BLS)", acType: "Non-AC", contact: "9022220004" },
            { name: "Birbhum BLS 2", type: "Basic Life Support (BLS)", acType: "AC", contact: "9022220005" },
            { name: "Birbhum BLS 3", type: "Basic Life Support (BLS)", acType: "Non-AC", contact: "9022220006" },

            // Advanced Life Support (ALS) (3 entries)
            { name: "Birbhum ALS 1", type: "Advanced Life Support (ALS)", acType: "AC", contact: "9022220007" },
            { name: "Birbhum ALS 2", type: "Advanced Life Support (ALS)", acType: "Non-AC", contact: "9022220008" },
            { name: "Birbhum ALS 3", type: "Advanced Life Support (ALS)", acType: "AC", contact: "9022220009" },

            // ICU on Wheels (3 entries)
            { name: "Birbhum ICU 1", type: "ICU on Wheels", acType: "Non-AC", contact: "9022220010" },
            { name: "Birbhum ICU 2", type: "ICU on Wheels", acType: "AC", contact: "9022220011" },
            { name: "Birbhum ICU 3", type: "ICU on Wheels", acType: "Non-AC", contact: "9022220012" },

            // Patient Transport Vehicle (PTV) (3 entries)
            { name: "Birbhum PTV 1", type: "Patient Transport Vehicle (PTV)", acType: "AC", contact: "9022220013" },
            { name: "Birbhum PTV 2", type: "Patient Transport Vehicle (PTV)", acType: "Non-AC", contact: "9022220014" },
            { name: "Birbhum PTV 3", type: "Patient Transport Vehicle (PTV)", acType: "AC", contact: "9022220015" },

            // Oxygen Ambulance (3 entries)
            { name: "Birbhum Oxygen 1", type: "Oxygen ambulances", acType: "Non-AC", contact: "9022220016" },
            { name: "Birbhum Oxygen 2", type: "Oxygen ambulances", acType: "AC", contact: "9022220017" },
            { name: "Birbhum Oxygen 3", type: "Oxygen ambulances", acType: "Non-AC", contact: "9022220018" }
        ],
        CoochBehar: [
    // General Transport (3 entries)
    { name: "Cooch Behar GT 1", type: "General Transport", acType: "AC", contact: "9033330001" },
    { name: "Cooch Behar GT 2", type: "General Transport", acType: "Non-AC", contact: "9033330002" },
    { name: "Cooch Behar GT 3", type: "General Transport", acType: "AC", contact: "9033330003" },

    // Basic Life Support (BLS) (3 entries)
    { name: "Cooch Behar BLS 1", type: "Basic Life Support (BLS)", acType: "Non-AC", contact: "9033330004" },
    { name: "Cooch Behar BLS 2", type: "Basic Life Support (BLS)", acType: "AC", contact: "9033330005" },
    { name: "Cooch Behar BLS 3", type: "Basic Life Support (BLS)", acType: "Non-AC", contact: "9033330006" },

    // Advanced Life Support (ALS) (3 entries)
    { name: "Cooch Behar ALS 1", type: "Advanced Life Support (ALS)", acType: "AC", contact: "9033330007" },
    { name: "Cooch Behar ALS 2", type: "Advanced Life Support (ALS)", acType: "Non-AC", contact: "9033330008" },
    { name: "Cooch Behar ALS 3", type: "Advanced Life Support (ALS)", acType: "AC", contact: "9033330009" },

    // ICU on Wheels (3 entries)
    { name: "Cooch Behar ICU 1", type: "ICU on Wheels", acType: "Non-AC", contact: "9033330010" },
    { name: "Cooch Behar ICU 2", type: "ICU on Wheels", acType: "AC", contact: "9033330011" },
    { name: "Cooch Behar ICU 3", type: "ICU on Wheels", acType: "Non-AC", contact: "9033330012" },

    // Patient Transport Vehicle (PTV) (3 entries)
    { name: "Cooch Behar PTV 1", type: "Patient Transport Vehicle (PTV)", acType: "AC", contact: "9033330013" },
    { name: "Cooch Behar PTV 2", type: "Patient Transport Vehicle (PTV)", acType: "Non-AC", contact: "9033330014" },
    { name: "Cooch Behar PTV 3", type: "Patient Transport Vehicle (PTV)", acType: "AC", contact: "9033330015" },

    // Oxygen Ambulance (3 entries)
    { name: "Cooch Behar Oxygen 1", type: "Oxygen ambulances", acType: "Non-AC", contact: "9033330016" },
    { name: "Cooch Behar Oxygen 2", type: "Oxygen ambulances", acType: "AC", contact: "9033330017" },
    { name: "Cooch Behar Oxygen 3", type: "Oxygen ambulances", acType: "Non-AC", contact: "9033330018" }
        ],
        DakshinDinajpur: [
    // General Transport (3 entries)
    { name: "Dakshin Dinajpur GT 1", type: "General Transport", acType: "AC", contact: "9044440001" },
    { name: "Dakshin Dinajpur GT 2", type: "General Transport", acType: "Non-AC", contact: "9044440002" },
    { name: "Dakshin Dinajpur GT 3", type: "General Transport", acType: "AC", contact: "9044440003" },

    // Basic Life Support (BLS) (3 entries)
    { name: "Dakshin Dinajpur BLS 1", type: "Basic Life Support (BLS)", acType: "Non-AC", contact: "9044440004" },
    { name: "Dakshin Dinajpur BLS 2", type: "Basic Life Support (BLS)", acType: "AC", contact: "9044440005" },
    { name: "Dakshin Dinajpur BLS 3", type: "Basic Life Support (BLS)", acType: "Non-AC", contact: "9044440006" },

    // Advanced Life Support (ALS) (3 entries)
    { name: "Dakshin Dinajpur ALS 1", type: "Advanced Life Support (ALS)", acType: "AC", contact: "9044440007" },
    { name: "Dakshin Dinajpur ALS 2", type: "Advanced Life Support (ALS)", acType: "Non-AC", contact: "9044440008" },
    { name: "Dakshin Dinajpur ALS 3", type: "Advanced Life Support (ALS)", acType: "AC", contact: "9044440009" },

    // ICU on Wheels (3 entries)
    { name: "Dakshin Dinajpur ICU 1", type: "ICU on Wheels", acType: "Non-AC", contact: "9044440010" },
    { name: "Dakshin Dinajpur ICU 2", type: "ICU on Wheels", acType: "AC", contact: "9044440011" },
    { name: "Dakshin Dinajpur ICU 3", type: "ICU on Wheels", acType: "Non-AC", contact: "9044440012" },

    // Patient Transport Vehicle (PTV) (3 entries)
    { name: "Dakshin Dinajpur PTV 1", type: "Patient Transport Vehicle (PTV)", acType: "AC", contact: "9044440013" },
    { name: "Dakshin Dinajpur PTV 2", type: "Patient Transport Vehicle (PTV)", acType: "Non-AC", contact: "9044440014" },
    { name: "Dakshin Dinajpur PTV 3", type: "Patient Transport Vehicle (PTV)", acType: "AC", contact: "9044440015" },

    // Oxygen Ambulance (3 entries)
    { name: "Dakshin Dinajpur Oxygen 1", type: "Oxygen ambulances", acType: "Non-AC", contact: "9044440016" },
    { name: "Dakshin Dinajpur Oxygen 2", type: "Oxygen ambulances", acType: "AC", contact: "9044440017" },
    { name: "Dakshin Dinajpur Oxygen 3", type: "Oxygen ambulances", acType: "Non-AC", contact: "9044440018" }
        ],
        Darjeeling: [
    // General Transport (3 entries)
    { name: "Darjeeling GT 1", type: "General Transport", acType: "AC", contact: "9044450001" },
    { name: "Darjeeling GT 2", type: "General Transport", acType: "Non-AC", contact: "9044450002" },
    { name: "Darjeeling GT 3", type: "General Transport", acType: "AC", contact: "9044450003" },

    // Basic Life Support (BLS) (3 entries)
    { name: "Darjeeling BLS 1", type: "Basic Life Support (BLS)", acType: "Non-AC", contact: "9044450004" },
    { name: "Darjeeling BLS 2", type: "Basic Life Support (BLS)", acType: "AC", contact: "9044450005" },
    { name: "Darjeeling BLS 3", type: "Basic Life Support (BLS)", acType: "Non-AC", contact: "9044450006" },

    // Advanced Life Support (ALS) (3 entries)
    { name: "Darjeeling ALS 1", type: "Advanced Life Support (ALS)", acType: "AC", contact: "9044450007" },
    { name: "Darjeeling ALS 2", type: "Advanced Life Support (ALS)", acType: "Non-AC", contact: "9044450008" },
    { name: "Darjeeling ALS 3", type: "Advanced Life Support (ALS)", acType: "AC", contact: "9044450009" },

    // ICU on Wheels (3 entries)
    { name: "Darjeeling ICU 1", type: "ICU on Wheels", acType: "Non-AC", contact: "9044450010" },
    { name: "Darjeeling ICU 2", type: "ICU on Wheels", acType: "AC", contact: "9044450011" },
    { name: "Darjeeling ICU 3", type: "ICU on Wheels", acType: "Non-AC", contact: "9044450012" },

    // Patient Transport Vehicle (PTV) (3 entries)
    { name: "Darjeeling PTV 1", type: "Patient Transport Vehicle (PTV)", acType: "AC", contact: "9044450013" },
    { name: "Darjeeling PTV 2", type: "Patient Transport Vehicle (PTV)", acType: "Non-AC", contact: "9044450014" },
    { name: "Darjeeling PTV 3", type: "Patient Transport Vehicle (PTV)", acType: "AC", contact: "9044450015" },

    // Oxygen Ambulance (3 entries)
    { name: "Darjeeling Oxygen 1", type: "Oxygen ambulances", acType: "Non-AC", contact: "9044450016" },
    { name: "Darjeeling Oxygen 2", type: "Oxygen ambulances", acType: "AC", contact: "9044450017" },
    { name: "Darjeeling Oxygen 3", type: "Oxygen ambulances", acType: "Non-AC", contact: "9044450018" }
        ],
        Hooghly: [
    // General Transport (3 entries)
    { name: "Hooghly GT 1", type: "General Transport", acType: "AC", contact: "9044460001" },
    { name: "Hooghly GT 2", type: "General Transport", acType: "Non-AC", contact: "9044460002" },
    { name: "Hooghly GT 3", type: "General Transport", acType: "AC", contact: "9044460003" },

    // Basic Life Support (BLS) (3 entries)
    { name: "Hooghly BLS 1", type: "Basic Life Support (BLS)", acType: "Non-AC", contact: "9044460004" },
    { name: "Hooghly BLS 2", type: "Basic Life Support (BLS)", acType: "AC", contact: "9044460005" },
    { name: "Hooghly BLS 3", type: "Basic Life Support (BLS)", acType: "Non-AC", contact: "9044460006" },

    // Advanced Life Support (ALS) (3 entries)
    { name: "Hooghly ALS 1", type: "Advanced Life Support (ALS)", acType: "AC", contact: "9044460007" },
    { name: "Hooghly ALS 2", type: "Advanced Life Support (ALS)", acType: "Non-AC", contact: "9044460008" },
    { name: "Hooghly ALS 3", type: "Advanced Life Support (ALS)", acType: "AC", contact: "9044460009" },

    // ICU on Wheels (3 entries)
    { name: "Hooghly ICU 1", type: "ICU on Wheels", acType: "Non-AC", contact: "9044460010" },
    { name: "Hooghly ICU 2", type: "ICU on Wheels", acType: "AC", contact: "9044460011" },
    { name: "Hooghly ICU 3", type: "ICU on Wheels", acType: "Non-AC", contact: "9044460012" },

    // Patient Transport Vehicle (PTV) (3 entries)
    { name: "Hooghly PTV 1", type: "Patient Transport Vehicle (PTV)", acType: "AC", contact: "9044460013" },
    { name: "Hooghly PTV 2", type: "Patient Transport Vehicle (PTV)", acType: "Non-AC", contact: "9044460014" },
    { name: "Hooghly PTV 3", type: "Patient Transport Vehicle (PTV)", acType: "AC", contact: "9044460015" },

    // Oxygen Ambulance (3 entries)
    { name: "Hooghly Oxygen 1", type: "Oxygen ambulances", acType: "Non-AC", contact: "9044460016" },
    { name: "Hooghly Oxygen 2", type: "Oxygen ambulances", acType: "AC", contact: "9044460017" },
    { name: "Hooghly Oxygen 3", type: "Oxygen ambulances", acType: "Non-AC", contact: "9044460018" }
        ],
        Howrah: [
    // General Transport (3 entries)
    { name: "Howrah GT 1", type: "General Transport", acType: "AC", contact: "9044470001" },
    { name: "Howrah GT 2", type: "General Transport", acType: "Non-AC", contact: "9044470002" },
    { name: "Howrah GT 3", type: "General Transport", acType: "AC", contact: "9044470003" },

    // Basic Life Support (BLS) (3 entries)
    { name: "Howrah BLS 1", type: "Basic Life Support (BLS)", acType: "Non-AC", contact: "9044470004" },
    { name: "Howrah BLS 2", type: "Basic Life Support (BLS)", acType: "AC", contact: "9044470005" },
    { name: "Howrah BLS 3", type: "Basic Life Support (BLS)", acType: "Non-AC", contact: "9044470006" },

    // Advanced Life Support (ALS) (3 entries)
    { name: "Howrah ALS 1", type: "Advanced Life Support (ALS)", acType: "AC", contact: "9044470007" },
    { name: "Howrah ALS 2", type: "Advanced Life Support (ALS)", acType: "Non-AC", contact: "9044470008" },
    { name: "Howrah ALS 3", type: "Advanced Life Support (ALS)", acType: "AC", contact: "9044470009" },

    // ICU on Wheels (3 entries)
    { name: "Howrah ICU 1", type: "ICU on Wheels", acType: "Non-AC", contact: "9044470010" },
    { name: "Howrah ICU 2", type: "ICU on Wheels", acType: "AC", contact: "9044470011" },
    { name: "Howrah ICU 3", type: "ICU on Wheels", acType: "Non-AC", contact: "9044470012" },

    // Patient Transport Vehicle (PTV) (3 entries)
    { name: "Howrah PTV 1", type: "Patient Transport Vehicle (PTV)", acType: "AC", contact: "9044470013" },
    { name: "Howrah PTV 2", type: "Patient Transport Vehicle (PTV)", acType: "Non-AC", contact: "9044470014" },
    { name: "Howrah PTV 3", type: "Patient Transport Vehicle (PTV)", acType: "AC", contact: "9044470015" },

    // Oxygen Ambulance (3 entries)
    { name: "Howrah Oxygen 1", type: "Oxygen ambulances", acType: "Non-AC", contact: "9044470016" },
    { name: "Howrah Oxygen 2", type: "Oxygen ambulances", acType: "AC", contact: "9044470017" },
    { name: "Howrah Oxygen 3", type: "Oxygen ambulances", acType: "Non-AC", contact: "9044470018" }
        ],
        Jalpaiguri: [
    // General Transport (3 entries)
    { name: "Jalpaiguri GT 1", type: "General Transport", acType: "AC", contact: "9044480001" },
    { name: "Jalpaiguri GT 2", type: "General Transport", acType: "Non-AC", contact: "9044480002" },
    { name: "Jalpaiguri GT 3", type: "General Transport", acType: "AC", contact: "9044480003" },

    // Basic Life Support (BLS) (3 entries)
    { name: "Jalpaiguri BLS 1", type: "Basic Life Support (BLS)", acType: "Non-AC", contact: "9044480004" },
    { name: "Jalpaiguri BLS 2", type: "Basic Life Support (BLS)", acType: "AC", contact: "9044480005" },
    { name: "Jalpaiguri BLS 3", type: "Basic Life Support (BLS)", acType: "Non-AC", contact: "9044480006" },

    // Advanced Life Support (ALS) (3 entries)
    { name: "Jalpaiguri ALS 1", type: "Advanced Life Support (ALS)", acType: "AC", contact: "9044480007" },
    { name: "Jalpaiguri ALS 2", type: "Advanced Life Support (ALS)", acType: "Non-AC", contact: "9044480008" },
    { name: "Jalpaiguri ALS 3", type: "Advanced Life Support (ALS)", acType: "AC", contact: "9044480009" },

    // ICU on Wheels (3 entries)
    { name: "Jalpaiguri ICU 1", type: "ICU on Wheels", acType: "Non-AC", contact: "9044480010" },
    { name: "Jalpaiguri ICU 2", type: "ICU on Wheels", acType: "AC", contact: "9044480011" },
    { name: "Jalpaiguri ICU 3", type: "ICU on Wheels", acType: "Non-AC", contact: "9044480012" },

    // Patient Transport Vehicle (PTV) (3 entries)
    { name: "Jalpaiguri PTV 1", type: "Patient Transport Vehicle (PTV)", acType: "AC", contact: "9044480013" },
    { name: "Jalpaiguri PTV 2", type: "Patient Transport Vehicle (PTV)", acType: "Non-AC", contact: "9044480014" },
    { name: "Jalpaiguri PTV 3", type: "Patient Transport Vehicle (PTV)", acType: "AC", contact: "9044480015" },

    // Oxygen Ambulance (3 entries)
    { name: "Jalpaiguri Oxygen 1", type: "Oxygen ambulances", acType: "Non-AC", contact: "9044480016" },
    { name: "Jalpaiguri Oxygen 2", type: "Oxygen ambulances", acType: "AC", contact: "9044480017" },
    { name: "Jalpaiguri Oxygen 3", type: "Oxygen ambulances", acType: "Non-AC", contact: "9044480018" }
        ],
        Jhargram: [
            // General Transport (3 entries)
            { name: "Jhargram GT 1", type: "General Transport", acType: "AC", contact: "9055590001" },
            { name: "Jhargram GT 2", type: "General Transport", acType: "Non-AC", contact: "9055590002" },
            { name: "Jhargram GT 3", type: "General Transport", acType: "AC", contact: "9055590003" },

            // Basic Life Support (BLS) (3 entries)
            { name: "Jhargram BLS 1", type: "Basic Life Support (BLS)", acType: "Non-AC", contact: "9055590004" },
            { name: "Jhargram BLS 2", type: "Basic Life Support (BLS)", acType: "AC", contact: "9055590005" },
            { name: "Jhargram BLS 3", type: "Basic Life Support (BLS)", acType: "Non-AC", contact: "9055590006" },

            // Advanced Life Support (ALS) (3 entries)
            { name: "Jhargram ALS 1", type: "Advanced Life Support (ALS)", acType: "AC", contact: "9055590007" },
            { name: "Jhargram ALS 2", type: "Advanced Life Support (ALS)", acType: "Non-AC", contact: "9055590008" },
            { name: "Jhargram ALS 3", type: "Advanced Life Support (ALS)", acType: "AC", contact: "9055590009" },

            // ICU on Wheels (3 entries)
            { name: "Jhargram ICU 1", type: "ICU on Wheels", acType: "Non-AC", contact: "9055590010" },
            { name: "Jhargram ICU 2", type: "ICU on Wheels", acType: "AC", contact: "9055590011" },
            { name: "Jhargram ICU 3", type: "ICU on Wheels", acType: "Non-AC", contact: "9055590012" },

            // Patient Transport Vehicle (PTV) (3 entries)
            { name: "Jhargram PTV 1", type: "Patient Transport Vehicle (PTV)", acType: "AC", contact: "9055590013" },
            { name: "Jhargram PTV 2", type: "Patient Transport Vehicle (PTV)", acType: "Non-AC", contact: "9055590014" },
            { name: "Jhargram PTV 3", type: "Patient Transport Vehicle (PTV)", acType: "AC", contact: "9055590015" },

            // Oxygen Ambulances (3 entries)
            { name: "Jhargram Oxygen 1", type: "Oxygen ambulances", acType: "Non-AC", contact: "9055590016" },
            { name: "Jhargram Oxygen 2", type: "Oxygen ambulances", acType: "AC", contact: "9055590017" },
            { name: "Jhargram Oxygen 3", type: "Oxygen ambulances", acType: "Non-AC", contact: "9055590018" }
        ],
        Kalimpong: [
    // General Transport
    { name: "Kalimpong GT 1", type: "General Transport", acType: "AC", contact: "9066600001" },
    { name: "Kalimpong GT 2", type: "General Transport", acType: "Non-AC", contact: "9066600002" },
    { name: "Kalimpong GT 3", type: "General Transport", acType: "AC", contact: "9066600003" },

    // Basic Life Support (BLS)
    { name: "Kalimpong BLS 1", type: "Basic Life Support (BLS)", acType: "Non-AC", contact: "9066600004" },
    { name: "Kalimpong BLS 2", type: "Basic Life Support (BLS)", acType: "AC", contact: "9066600005" },
    { name: "Kalimpong BLS 3", type: "Basic Life Support (BLS)", acType: "Non-AC", contact: "9066600006" },

    // Advanced Life Support (ALS)
    { name: "Kalimpong ALS 1", type: "Advanced Life Support (ALS)", acType: "AC", contact: "9066600007" },
    { name: "Kalimpong ALS 2", type: "Advanced Life Support (ALS)", acType: "Non-AC", contact: "9066600008" },
    { name: "Kalimpong ALS 3", type: "Advanced Life Support (ALS)", acType: "AC", contact: "9066600009" },

    // ICU on Wheels
    { name: "Kalimpong ICU 1", type: "ICU on Wheels", acType: "Non-AC", contact: "9066600010" },
    { name: "Kalimpong ICU 2", type: "ICU on Wheels", acType: "AC", contact: "9066600011" },
    { name: "Kalimpong ICU 3", type: "ICU on Wheels", acType: "Non-AC", contact: "9066600012" },

    // Patient Transport Vehicle (PTV)
    { name: "Kalimpong PTV 1", type: "Patient Transport Vehicle (PTV)", acType: "AC", contact: "9066600013" },
    { name: "Kalimpong PTV 2", type: "Patient Transport Vehicle (PTV)", acType: "Non-AC", contact: "9066600014" },
    { name: "Kalimpong PTV 3", type: "Patient Transport Vehicle (PTV)", acType: "AC", contact: "9066600015" },

    // Oxygen ambulances
    { name: "Kalimpong Oxygen 1", type: "Oxygen ambulances", acType: "Non-AC", contact: "9066600016" },
    { name: "Kalimpong Oxygen 2", type: "Oxygen ambulances", acType: "AC", contact: "9066600017" },
    { name: "Kalimpong Oxygen 3", type: "Oxygen ambulances", acType: "Non-AC", contact: "9066600018" }
        ],

            Malda: [
                // General Transport
                { name: "Malda GT 1", type: "General Transport", acType: "AC", contact: "9077700001" },
                { name: "Malda GT 2", type: "General Transport", acType: "Non-AC", contact: "9077700002" },
                { name: "Malda GT 3", type: "General Transport", acType: "AC", contact: "9077700003" },

                // Basic Life Support (BLS)
                { name: "Malda BLS 1", type: "Basic Life Support (BLS)", acType: "Non-AC", contact: "9077700004" },
                { name: "Malda BLS 2", type: "Basic Life Support (BLS)", acType: "AC", contact: "9077700005" },
                { name: "Malda BLS 3", type: "Basic Life Support (BLS)", acType: "Non-AC", contact: "9077700006" },

                // Advanced Life Support (ALS)
                { name: "Malda ALS 1", type: "Advanced Life Support (ALS)", acType: "AC", contact: "9077700007" },
                { name: "Malda ALS 2", type: "Advanced Life Support (ALS)", acType: "Non-AC", contact: "9077700008" },
                { name: "Malda ALS 3", type: "Advanced Life Support (ALS)", acType: "AC", contact: "9077700009" },

                // ICU on Wheels
                { name: "Malda ICU 1", type: "ICU on Wheels", acType: "Non-AC", contact: "9077700010" },
                { name: "Malda ICU 2", type: "ICU on Wheels", acType: "AC", contact: "9077700011" },
                { name: "Malda ICU 3", type: "ICU on Wheels", acType: "Non-AC", contact: "9077700012" },

                // Patient Transport Vehicle (PTV)
                { name: "Malda PTV 1", type: "Patient Transport Vehicle (PTV)", acType: "AC", contact: "9077700013" },
                { name: "Malda PTV 2", type: "Patient Transport Vehicle (PTV)", acType: "Non-AC", contact: "9077700014" },
                { name: "Malda PTV 3", type: "Patient Transport Vehicle (PTV)", acType: "AC", contact: "9077700015" },

                // Oxygen ambulances
                { name: "Malda Oxygen 1", type: "Oxygen ambulances", acType: "Non-AC", contact: "9077700016" },
                { name: "Malda Oxygen 2", type: "Oxygen ambulances", acType: "AC", contact: "9077700017" },
                { name: "Malda Oxygen 3", type: "Oxygen ambulances", acType: "Non-AC", contact: "9077700018" }
            ],
            Murshidabad: [
    // General Transport
    { name: "Murshidabad GT 1", type: "General Transport", acType: "AC", contact: "9088800001" },
    { name: "Murshidabad GT 2", type: "General Transport", acType: "Non-AC", contact: "9088800002" },
    { name: "Murshidabad GT 3", type: "General Transport", acType: "AC", contact: "9088800003" },

    // Basic Life Support (BLS)
    { name: "Murshidabad BLS 1", type: "Basic Life Support (BLS)", acType: "Non-AC", contact: "9088800004" },
    { name: "Murshidabad BLS 2", type: "Basic Life Support (BLS)", acType: "AC", contact: "9088800005" },
    { name: "Murshidabad BLS 3", type: "Basic Life Support (BLS)", acType: "Non-AC", contact: "9088800006" },

    // Advanced Life Support (ALS)
    { name: "Murshidabad ALS 1", type: "Advanced Life Support (ALS)", acType: "AC", contact: "9088800007" },
    { name: "Murshidabad ALS 2", type: "Advanced Life Support (ALS)", acType: "Non-AC", contact: "9088800008" },
    { name: "Murshidabad ALS 3", type: "Advanced Life Support (ALS)", acType: "AC", contact: "9088800009" },

    // ICU on Wheels
    { name: "Murshidabad ICU 1", type: "ICU on Wheels", acType: "Non-AC", contact: "9088800010" },
    { name: "Murshidabad ICU 2", type: "ICU on Wheels", acType: "AC", contact: "9088800011" },
    { name: "Murshidabad ICU 3", type: "ICU on Wheels", acType: "Non-AC", contact: "9088800012" },

    // Patient Transport Vehicle (PTV)
    { name: "Murshidabad PTV 1", type: "Patient Transport Vehicle (PTV)", acType: "AC", contact: "9088800013" },
    { name: "Murshidabad PTV 2", type: "Patient Transport Vehicle (PTV)", acType: "Non-AC", contact: "9088800014" },
    { name: "Murshidabad PTV 3", type: "Patient Transport Vehicle (PTV)", acType: "AC", contact: "9088800015" },

    // Oxygen ambulances
    { name: "Murshidabad Oxygen 1", type: "Oxygen ambulances", acType: "Non-AC", contact: "9088800016" },
    { name: "Murshidabad Oxygen 2", type: "Oxygen ambulances", acType: "AC", contact: "9088800017" },
    { name: "Murshidabad Oxygen 3", type: "Oxygen ambulances", acType: "Non-AC", contact: "9088800018" }
            ],

        Nadia: [
            // General Transport
            { name: "Nadia GT 1", type: "General Transport", acType: "AC", contact: "9099900001" },
            { name: "Nadia GT 2", type: "General Transport", acType: "Non-AC", contact: "9099900002" },
            { name: "Nadia GT 3", type: "General Transport", acType: "AC", contact: "9099900003" },

            // Basic Life Support (BLS)
            { name: "Nadia BLS 1", type: "Basic Life Support (BLS)", acType: "Non-AC", contact: "9099900004" },
            { name: "Nadia BLS 2", type: "Basic Life Support (BLS)", acType: "AC", contact: "9099900005" },
            { name: "Nadia BLS 3", type: "Basic Life Support (BLS)", acType: "Non-AC", contact: "9099900006" },

            // Advanced Life Support (ALS)
            { name: "Nadia ALS 1", type: "Advanced Life Support (ALS)", acType: "AC", contact: "9099900007" },
            { name: "Nadia ALS 2", type: "Advanced Life Support (ALS)", acType: "Non-AC", contact: "9099900008" },
            { name: "Nadia ALS 3", type: "Advanced Life Support (ALS)", acType: "AC", contact: "9099900009" },

            // ICU on Wheels
            { name: "Nadia ICU 1", type: "ICU on Wheels", acType: "Non-AC", contact: "9099900010" },
            { name: "Nadia ICU 2", type: "ICU on Wheels", acType: "AC", contact: "9099900011" },
            { name: "Nadia ICU 3", type: "ICU on Wheels", acType: "Non-AC", contact: "9099900012" },

            // Patient Transport Vehicle (PTV)
            { name: "Nadia PTV 1", type: "Patient Transport Vehicle (PTV)", acType: "AC", contact: "9099900013" },
            { name: "Nadia PTV 2", type: "Patient Transport Vehicle (PTV)", acType: "Non-AC", contact: "9099900014" },
            { name: "Nadia PTV 3", type: "Patient Transport Vehicle (PTV)", acType: "AC", contact: "9099900015" },

            // Oxygen ambulances
            { name: "Nadia Oxygen 1", type: "Oxygen ambulances", acType: "Non-AC", contact: "9099900016" },
            { name: "Nadia Oxygen 2", type: "Oxygen ambulances", acType: "AC", contact: "9099900017" },
            { name: "Nadia Oxygen 3", type: "Oxygen ambulances", acType: "Non-AC", contact: "9099900018" }
        ],

        North24Parganas: [
            // General Transport
            { name: "North24Parganas GT 1", type: "General Transport", acType: "AC", contact: "9010100001" },
            { name: "North24Parganas GT 2", type: "General Transport", acType: "Non-AC", contact: "9010100002" },
            { name: "North24Parganas GT 3", type: "General Transport", acType: "AC", contact: "9010100003" },

            // Basic Life Support (BLS)
            { name: "North24Parganas BLS 1", type: "Basic Life Support (BLS)", acType: "Non-AC", contact: "9010100004" },
            { name: "North24Parganas BLS 2", type: "Basic Life Support (BLS)", acType: "AC", contact: "9010100005" },
            { name: "North24Parganas BLS 3", type: "Basic Life Support (BLS)", acType: "Non-AC", contact: "9010100006" },

            // Advanced Life Support (ALS)
            { name: "North24Parganas ALS 1", type: "Advanced Life Support (ALS)", acType: "AC", contact: "9010100007" },
            { name: "North24Parganas ALS 2", type: "Advanced Life Support (ALS)", acType: "Non-AC", contact: "9010100008" },
            { name: "North24Parganas ALS 3", type: "Advanced Life Support (ALS)", acType: "AC", contact: "9010100009" },

            // ICU on Wheels
            { name: "North24Parganas ICU 1", type: "ICU on Wheels", acType: "Non-AC", contact: "9010100010" },
            { name: "North24Parganas ICU 2", type: "ICU on Wheels", acType: "AC", contact: "9010100011" },
            { name: "North24Parganas ICU 3", type: "ICU on Wheels", acType: "Non-AC", contact: "9010100012" },

            // Patient Transport Vehicle (PTV)
            { name: "North24Parganas PTV 1", type: "Patient Transport Vehicle (PTV)", acType: "AC", contact: "9010100013" },
            { name: "North24Parganas PTV 2", type: "Patient Transport Vehicle (PTV)", acType: "Non-AC", contact: "9010100014" },
            { name: "North24Parganas PTV 3", type: "Patient Transport Vehicle (PTV)", acType: "AC", contact: "9010100015" },

            // Oxygen ambulances
            { name: "North24Parganas Oxygen 1", type: "Oxygen ambulances", acType: "Non-AC", contact: "9010100016" },
            { name: "North24Parganas Oxygen 2", type: "Oxygen ambulances", acType: "AC", contact: "9010100017" },
            { name: "North24Parganas Oxygen 3", type: "Oxygen ambulances", acType: "Non-AC", contact: "9010100018" }
        ],
        PaschimBardhaman: [
            // General Transport
            { name: "PaschimBardhaman GT 1", type: "General Transport", acType: "AC", contact: "9020200001" },
            { name: "PaschimBardhaman GT 2", type: "General Transport", acType: "Non-AC", contact: "9020200002" },
            { name: "PaschimBardhaman GT 3", type: "General Transport", acType: "AC", contact: "9020200003" },

            // Basic Life Support (BLS)
            { name: "PaschimBardhaman BLS 1", type: "Basic Life Support (BLS)", acType: "Non-AC", contact: "9020200004" },
            { name: "PaschimBardhaman BLS 2", type: "Basic Life Support (BLS)", acType: "AC", contact: "9020200005" },
            { name: "PaschimBardhaman BLS 3", type: "Basic Life Support (BLS)", acType: "Non-AC", contact: "9020200006" },

            // Advanced Life Support (ALS)
            { name: "PaschimBardhaman ALS 1", type: "Advanced Life Support (ALS)", acType: "AC", contact: "9020200007" },
            { name: "PaschimBardhaman ALS 2", type: "Advanced Life Support (ALS)", acType: "Non-AC", contact: "9020200008" },
            { name: "PaschimBardhaman ALS 3", type: "Advanced Life Support (ALS)", acType: "AC", contact: "9020200009" },

            // ICU on Wheels
            { name: "PaschimBardhaman ICU 1", type: "ICU on Wheels", acType: "Non-AC", contact: "9020200010" },
            { name: "PaschimBardhaman ICU 2", type: "ICU on Wheels", acType: "AC", contact: "9020200011" },
            { name: "PaschimBardhaman ICU 3", type: "ICU on Wheels", acType: "Non-AC", contact: "9020200012" },

            // Patient Transport Vehicle (PTV)
            { name: "PaschimBardhaman PTV 1", type: "Patient Transport Vehicle (PTV)", acType: "AC", contact: "9020200013" },
            { name: "PaschimBardhaman PTV 2", type: "Patient Transport Vehicle (PTV)", acType: "Non-AC", contact: "9020200014" },
            { name: "PaschimBardhaman PTV 3", type: "Patient Transport Vehicle (PTV)", acType: "AC", contact: "9020200015" },

            // Oxygen ambulances
            { name: "PaschimBardhaman Oxygen 1", type: "Oxygen ambulances", acType: "Non-AC", contact: "9020200016" },
            { name: "PaschimBardhaman Oxygen 2", type: "Oxygen ambulances", acType: "AC", contact: "9020200017" },
            { name: "PaschimBardhaman Oxygen 3", type: "Oxygen ambulances", acType: "Non-AC", contact: "9020200018" }
        ],

        PaschimMedinipur: [
            // General Transport
            { name: "PaschimMedinipur GT 1", type: "General Transport", acType: "AC", contact: "9030300001" },
            { name: "PaschimMedinipur GT 2", type: "General Transport", acType: "Non-AC", contact: "9030300002" },
            { name: "PaschimMedinipur GT 3", type: "General Transport", acType: "AC", contact: "9030300003" },

            // Basic Life Support (BLS)
            { name: "PaschimMedinipur BLS 1", type: "Basic Life Support (BLS)", acType: "Non-AC", contact: "9030300004" },
            { name: "PaschimMedinipur BLS 2", type: "Basic Life Support (BLS)", acType: "AC", contact: "9030300005" },
            { name: "PaschimMedinipur BLS 3", type: "Basic Life Support (BLS)", acType: "Non-AC", contact: "9030300006" },

            // Advanced Life Support (ALS)
            { name: "PaschimMedinipur ALS 1", type: "Advanced Life Support (ALS)", acType: "AC", contact: "9030300007" },
            { name: "PaschimMedinipur ALS 2", type: "Advanced Life Support (ALS)", acType: "Non-AC", contact: "9030300008" },
            { name: "PaschimMedinipur ALS 3", type: "Advanced Life Support (ALS)", acType: "AC", contact: "9030300009" },

            // ICU on Wheels
            { name: "PaschimMedinipur ICU 1", type: "ICU on Wheels", acType: "Non-AC", contact: "9030300010" },
            { name: "PaschimMedinipur ICU 2", type: "ICU on Wheels", acType: "AC", contact: "9030300011" },
            { name: "PaschimMedinipur ICU 3", type: "ICU on Wheels", acType: "Non-AC", contact: "9030300012" },

            // Patient Transport Vehicle (PTV)
            { name: "PaschimMedinipur PTV 1", type: "Patient Transport Vehicle (PTV)", acType: "AC", contact: "9030300013" },
            { name: "PaschimMedinipur PTV 2", type: "Patient Transport Vehicle (PTV)", acType: "Non-AC", contact: "9030300014" },
            { name: "PaschimMedinipur PTV 3", type: "Patient Transport Vehicle (PTV)", acType: "AC", contact: "9030300015" },

            // Oxygen ambulances
            { name: "PaschimMedinipur Oxygen 1", type: "Oxygen ambulances", acType: "Non-AC", contact: "9030300016" },
            { name: "PaschimMedinipur Oxygen 2", type: "Oxygen ambulances", acType: "AC", contact: "9030300017" },
            { name: "PaschimMedinipur Oxygen 3", type: "Oxygen ambulances", acType: "Non-AC", contact: "9030300018" }
        ],

        PurbaBardhaman: [
            // General Transport
            { name: "PurbaBardhaman GT 1", type: "General Transport", acType: "AC", contact: "9040400001" },
            { name: "PurbaBardhaman GT 2", type: "General Transport", acType: "Non-AC", contact: "9040400002" },
            { name: "PurbaBardhaman GT 3", type: "General Transport", acType: "AC", contact: "9040400003" },

            // Basic Life Support (BLS)
            { name: "PurbaBardhaman BLS 1", type: "Basic Life Support (BLS)", acType: "Non-AC", contact: "9040400004" },
            { name: "PurbaBardhaman BLS 2", type: "Basic Life Support (BLS)", acType: "AC", contact: "9040400005" },
            { name: "PurbaBardhaman BLS 3", type: "Basic Life Support (BLS)", acType: "Non-AC", contact: "9040400006" },

            // Advanced Life Support (ALS)
            { name: "PurbaBardhaman ALS 1", type: "Advanced Life Support (ALS)", acType: "AC", contact: "9040400007" },
            { name: "PurbaBardhaman ALS 2", type: "Advanced Life Support (ALS)", acType: "Non-AC", contact: "9040400008" },
            { name: "PurbaBardhaman ALS 3", type: "Advanced Life Support (ALS)", acType: "AC", contact: "9040400009" },

            // ICU on Wheels
            { name: "PurbaBardhaman ICU 1", type: "ICU on Wheels", acType: "Non-AC", contact: "9040400010" },
            { name: "PurbaBardhaman ICU 2", type: "ICU on Wheels", acType: "AC", contact: "9040400011" },
            { name: "PurbaBardhaman ICU 3", type: "ICU on Wheels", acType: "Non-AC", contact: "9040400012" },

            // Patient Transport Vehicle (PTV)
            { name: "PurbaBardhaman PTV 1", type: "Patient Transport Vehicle (PTV)", acType: "AC", contact: "9040400013" },
            { name: "PurbaBardhaman PTV 2", type: "Patient Transport Vehicle (PTV)", acType: "Non-AC", contact: "9040400014" },
            { name: "PurbaBardhaman PTV 3", type: "Patient Transport Vehicle (PTV)", acType: "AC", contact: "9040400015" },

            // Oxygen ambulances
            { name: "PurbaBardhaman Oxygen 1", type: "Oxygen ambulances", acType: "Non-AC", contact: "9040400016" },
            { name: "PurbaBardhaman Oxygen 2", type: "Oxygen ambulances", acType: "AC", contact: "9040400017" },
            { name: "PurbaBardhaman Oxygen 3", type: "Oxygen ambulances", acType: "Non-AC", contact: "9040400018" }
        ],

        PurbaMedinipur: [
            // General Transport
            { name: "PurbaMedinipur GT 1", type: "General Transport", acType: "AC", contact: "9050500001" },
            { name: "PurbaMedinipur GT 2", type: "General Transport", acType: "Non-AC", contact: "9050500002" },
            { name: "PurbaMedinipur GT 3", type: "General Transport", acType: "AC", contact: "9050500003" },

            // Basic Life Support (BLS)
            { name: "PurbaMedinipur BLS 1", type: "Basic Life Support (BLS)", acType: "Non-AC", contact: "9050500004" },
            { name: "PurbaMedinipur BLS 2", type: "Basic Life Support (BLS)", acType: "AC", contact: "9050500005" },
            { name: "PurbaMedinipur BLS 3", type: "Basic Life Support (BLS)", acType: "Non-AC", contact: "9050500006" },

            // Advanced Life Support (ALS)
            { name: "PurbaMedinipur ALS 1", type: "Advanced Life Support (ALS)", acType: "AC", contact: "9050500007" },
            { name: "PurbaMedinipur ALS 2", type: "Advanced Life Support (ALS)", acType: "Non-AC", contact: "9050500008" },
            { name: "PurbaMedinipur ALS 3", type: "Advanced Life Support (ALS)", acType: "AC", contact: "9050500009" },

            // ICU on Wheels
            { name: "PurbaMedinipur ICU 1", type: "ICU on Wheels", acType: "Non-AC", contact: "9050500010" },
            { name: "PurbaMedinipur ICU 2", type: "ICU on Wheels", acType: "AC", contact: "9050500011" },
            { name: "PurbaMedinipur ICU 3", type: "ICU on Wheels", acType: "Non-AC", contact: "9050500012" },

            // Patient Transport Vehicle (PTV)
            { name: "PurbaMedinipur PTV 1", type: "Patient Transport Vehicle (PTV)", acType: "AC", contact: "9050500013" },
            { name: "PurbaMedinipur PTV 2", type: "Patient Transport Vehicle (PTV)", acType: "Non-AC", contact: "9050500014" },
            { name: "PurbaMedinipur PTV 3", type: "Patient Transport Vehicle (PTV)", acType: "AC", contact: "9050500015" },

            // Oxygen ambulances
            { name: "PurbaMedinipur Oxygen 1", type: "Oxygen ambulances", acType: "Non-AC", contact: "9050500016" },
            { name: "PurbaMedinipur Oxygen 2", type: "Oxygen ambulances", acType: "AC", contact: "9050500017" },
            { name: "PurbaMedinipur Oxygen 3", type: "Oxygen ambulances", acType: "Non-AC", contact: "9050500018" }
        ],
        Purulia: [
            // General Transport
            { name: "Purulia GT 1", type: "General Transport", acType: "AC", contact: "9060600001" },
            { name: "Purulia GT 2", type: "General Transport", acType: "Non-AC", contact: "9060600002" },
            { name: "Purulia GT 3", type: "General Transport", acType: "AC", contact: "9060600003" },

            // Basic Life Support (BLS)
            { name: "Purulia BLS 1", type: "Basic Life Support (BLS)", acType: "Non-AC", contact: "9060600004" },
            { name: "Purulia BLS 2", type: "Basic Life Support (BLS)", acType: "AC", contact: "9060600005" },
            { name: "Purulia BLS 3", type: "Basic Life Support (BLS)", acType: "Non-AC", contact: "9060600006" },

            // Advanced Life Support (ALS)
            { name: "Purulia ALS 1", type: "Advanced Life Support (ALS)", acType: "AC", contact: "9060600007" },
            { name: "Purulia ALS 2", type: "Advanced Life Support (ALS)", acType: "Non-AC", contact: "9060600008" },
            { name: "Purulia ALS 3", type: "Advanced Life Support (ALS)", acType: "AC", contact: "9060600009" },

            // ICU on Wheels
            { name: "Purulia ICU 1", type: "ICU on Wheels", acType: "Non-AC", contact: "9060600010" },
            { name: "Purulia ICU 2", type: "ICU on Wheels", acType: "AC", contact: "9060600011" },
            { name: "Purulia ICU 3", type: "ICU on Wheels", acType: "Non-AC", contact: "9060600012" },

            // Patient Transport Vehicle (PTV)
            { name: "Purulia PTV 1", type: "Patient Transport Vehicle (PTV)", acType: "AC", contact: "9060600013" },
            { name: "Purulia PTV 2", type: "Patient Transport Vehicle (PTV)", acType: "Non-AC", contact: "9060600014" },
            { name: "Purulia PTV 3", type: "Patient Transport Vehicle (PTV)", acType: "AC", contact: "9060600015" },

            // Oxygen ambulances
            { name: "Purulia Oxygen 1", type: "Oxygen ambulances", acType: "Non-AC", contact: "9060600016" },
            { name: "Purulia Oxygen 2", type: "Oxygen ambulances", acType: "AC", contact: "9060600017" },
            { name: "Purulia Oxygen 3", type: "Oxygen ambulances", acType: "Non-AC", contact: "9060600018" }
        ],

        South24Parganas: [
            // General Transport
            { name: "South24Parganas GT 1", type: "General Transport", acType: "AC", contact: "9070700001" },
            { name: "South24Parganas GT 2", type: "General Transport", acType: "Non-AC", contact: "9070700002" },
            { name: "South24Parganas GT 3", type: "General Transport", acType: "AC", contact: "9070700003" },

            // Basic Life Support (BLS)
            { name: "South24Parganas BLS 1", type: "Basic Life Support (BLS)", acType: "Non-AC", contact: "9070700004" },
            { name: "South24Parganas BLS 2", type: "Basic Life Support (BLS)", acType: "AC", contact: "9070700005" },
            { name: "South24Parganas BLS 3", type: "Basic Life Support (BLS)", acType: "Non-AC", contact: "9070700006" },

            // Advanced Life Support (ALS)
            { name: "South24Parganas ALS 1", type: "Advanced Life Support (ALS)", acType: "AC", contact: "9070700007" },
            { name: "South24Parganas ALS 2", type: "Advanced Life Support (ALS)", acType: "Non-AC", contact: "9070700008" },
            { name: "South24Parganas ALS 3", type: "Advanced Life Support (ALS)", acType: "AC", contact: "9070700009" },

            // ICU on Wheels
            { name: "South24Parganas ICU 1", type: "ICU on Wheels", acType: "Non-AC", contact: "9070700010" },
            { name: "South24Parganas ICU 2", type: "ICU on Wheels", acType: "AC", contact: "9070700011" },
            { name: "South24Parganas ICU 3", type: "ICU on Wheels", acType: "Non-AC", contact: "9070700012" },

            // Patient Transport Vehicle (PTV)
            { name: "South24Parganas PTV 1", type: "Patient Transport Vehicle (PTV)", acType: "AC", contact: "9070700013" },
            { name: "South24Parganas PTV 2", type: "Patient Transport Vehicle (PTV)", acType: "Non-AC", contact: "9070700014" },
            { name: "South24Parganas PTV 3", type: "Patient Transport Vehicle (PTV)", acType: "AC", contact: "9070700015" },

            // Oxygen ambulances
            { name: "South24Parganas Oxygen 1", type: "Oxygen ambulances", acType: "Non-AC", contact: "9070700016" },
            { name: "South24Parganas Oxygen 2", type: "Oxygen ambulances", acType: "AC", contact: "9070700017" },
            { name: "South24Parganas Oxygen 3", type: "Oxygen ambulances", acType: "Non-AC", contact: "9070700018" }
        ],

        UttarDinajpur: [
            // General Transport
            { name: "UttarDinajpur GT 1", type: "General Transport", acType: "AC", contact: "9080800001" },
            { name: "UttarDinajpur GT 2", type: "General Transport", acType: "Non-AC", contact: "9080800002" },
            { name: "UttarDinajpur GT 3", type: "General Transport", acType: "AC", contact: "9080800003" },

            // Basic Life Support (BLS)
            { name: "UttarDinajpur BLS 1", type: "Basic Life Support (BLS)", acType: "Non-AC", contact: "9080800004" },
            { name: "UttarDinajpur BLS 2", type: "Basic Life Support (BLS)", acType: "AC", contact: "9080800005" },
            { name: "UttarDinajpur BLS 3", type: "Basic Life Support (BLS)", acType: "Non-AC", contact: "9080800006" },

            // Advanced Life Support (ALS)
            { name: "UttarDinajpur ALS 1", type: "Advanced Life Support (ALS)", acType: "AC", contact: "9080800007" },
            { name: "UttarDinajpur ALS 2", type: "Advanced Life Support (ALS)", acType: "Non-AC", contact: "9080800008" },
            { name: "UttarDinajpur ALS 3", type: "Advanced Life Support (ALS)", acType: "AC", contact: "9080800009" },

            // ICU on Wheels
            { name: "UttarDinajpur ICU 1", type: "ICU on Wheels", acType: "Non-AC", contact: "9080800010" },
            { name: "UttarDinajpur ICU 2", type: "ICU on Wheels", acType: "AC", contact: "9080800011" },
            { name: "UttarDinajpur ICU 3", type: "ICU on Wheels", acType: "Non-AC", contact: "9080800012" },

            // Patient Transport Vehicle (PTV)
            { name: "UttarDinajpur PTV 1", type: "Patient Transport Vehicle (PTV)", acType: "AC", contact: "9080800013" },
            { name: "UttarDinajpur PTV 2", type: "Patient Transport Vehicle (PTV)", acType: "Non-AC", contact: "9080800014" },
            { name: "UttarDinajpur PTV 3", type: "Patient Transport Vehicle (PTV)", acType: "AC", contact: "9080800015" },

            // Oxygen ambulances
            { name: "UttarDinajpur Oxygen 1", type: "Oxygen ambulances", acType: "Non-AC", contact: "9080800016" },
            { name: "UttarDinajpur Oxygen 2", type: "Oxygen ambulances", acType: "AC", contact: "9080800017" },
            { name: "UttarDinajpur Oxygen 3", type: "Oxygen ambulances", acType: "Non-AC", contact: "9080800018" }
        ]

        };

        function filterAmbulances() {
    const selectedLocation = document.getElementById("locationSelect").value;
    const selectedAcType = document.getElementById("acTypeSelect").value;
    const selectedAmbType = document.getElementById("ambTypeSelect").value;
    const listContainer = document.getElementById("ambulanceList");
            listContainer.innerHTML = "";

            if (ambulanceData[selectedLocation]) {
                const filtered = ambulanceData[selectedLocation].filter(a => {
                    const matchesAc = selectedAcType === "" || a.acType === selectedAcType;
                    const matchesType = selectedAmbType === "" || a.type === selectedAmbType;
                return matchesAc && matchesType;
            });

            if (filtered.length > 0) {
                filtered.forEach((ambulance, index) => {
                    const card = document.createElement("div");
                card.className = "ambulance-card";
                card.style.animationDelay = `${index * 0.1}s`;

                card.innerHTML = `
                    <div class="ambulance-info">
                        <h5>${ambulance.name}</h5>
                        <small>Type: ${ambulance.type}</small>
                        <small>AC Type: ${ambulance.acType}</small>
                        <small>Contact: ${ambulance.contact}</small>
                    </div>
                    <a href="tel:${ambulance.contact}" class="btn btn-primary btn-call">Call</a>
                    `;
                listContainer.appendChild(card);
            });
        } else {
            listContainer.innerHTML = `<div class="alert alert-warning">No ambulances available for the selected filters.</div>`;
        }
        } else if (selectedLocation !== "") {
        listContainer.innerHTML = `<div class="alert alert-warning">No ambulances available in this location.</div>`;
        }
        }

document.getElementById("locationSelect").addEventListener("change", filterAmbulances);
document.getElementById("acTypeSelect").addEventListener("change", filterAmbulances);
document.getElementById("ambTypeSelect").addEventListener("change", filterAmbulances);

    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    </form>
</body>
</html>
