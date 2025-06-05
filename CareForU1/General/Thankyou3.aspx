<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Thankyou3.aspx.cs" Inherits="General_Thankyou3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Thank You - Care ForU</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #a1c4fd, #c2e9fb);
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            overflow: hidden;
            position: relative;
        }

        .animated-bg span {
            position: absolute;
            display: block;
            width: 40px;
            height: 40px;
            background: rgba(255, 255, 255, 0.15);
            animation: float 20s linear infinite;
            bottom: -100px;
            border-radius: 50%;
        }

        .animated-bg span:nth-child(1) {
            left: 10%;
            width: 80px;
            height: 80px;
            animation-delay: 0s;
        }

        .animated-bg span:nth-child(2) {
            left: 25%;
            animation-delay: 3s;
        }

        .animated-bg span:nth-child(3) {
            left: 40%;
            width: 60px;
            height: 60px;
            animation-delay: 6s;
        }

        .animated-bg span:nth-child(4) {
            left: 60%;
            animation-delay: 9s;
        }

        .animated-bg span:nth-child(5) {
            left: 75%;
            width: 70px;
            height: 70px;
            animation-delay: 12s;
        }

        @keyframes float {
            0% {
                transform: translateY(0) rotate(0deg);
                opacity: 0.5;
            }
            100% {
                transform: translateY(-1000px) rotate(360deg);
                opacity: 0;
            }
        }

        .container {
            background: rgba(255, 255, 255, 0.2);
            backdrop-filter: blur(15px);
            border-radius: 20px;
            padding: 50px 30px;
            max-width: 500px;
            width: 100%;
            box-shadow: 0 8px 30px rgba(0, 0, 0, 0.2);
            text-align: center;
            color: #fff;
            animation: fadeIn 1.5s ease;
            z-index: 10;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: scale(0.95);
            }
            to {
                opacity: 1;
                transform: scale(1);
            }
        }

        h1 {
            font-size: 2.5rem;
            color: black;
            margin-bottom: 10px;
        }

        p {
            font-size: 1.2rem;
            color:  black;
            margin-bottom: 25px;
        }

        .checkmark {
            width: 100px;
            margin-bottom: 20px;
        }

        .btn {
            padding: 12px 30px;
            background-color: #ffffff;
            color: #00bfa6;
            text-decoration: none;
            border-radius: 25px;
            font-size: 1rem;
            font-weight: 600;
            transition: all 0.3s ease;
            display: inline-block;
        }

        .btn:hover {
            background-color: #00bfa6;
            color: #fff;
        }
    </style>
    
</head>
<body>
    <form id="form1" runat="server">
    <!-- Background floating animation -->
        <div class="animated-bg">
            <span></span>
            <span></span>
            <span></span>
            <span></span>
            <span></span>
        </div>

        <!-- Thank You Message Box -->
        <div class="container">
            <img src="../Images/check.webp" alt="Checkmark" class="checkmark" />
            <h1>Thank You!</h1>
            <p>Your request has been submitted successfully.<br />We’ll contact you shortly.</p>
            <a href="../General/Index.aspx" class="btn">Go Back to Homepage</a>
            
        </div>
    </form>
</body>
</html>
