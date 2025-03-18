<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Bank Loan Management System</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <style>
        body {
            background: url('https://external-preview.redd.it/FGLofoET5siBEFSOXzZOnI-8lNBXcFJwBe6om0MdlL4.jpg?auto=webp&s=3998a526a036a68d9f8a87a04412decd3ce38efa') no-repeat center center fixed;
            background-size: cover;
            color: #ffffff;
        }
        .container {
            background-color: rgba(0, 0, 0, 0.5);
            margin-top: 50px;
            padding: 30px;
            border-radius: 10px;
            max-width: 800px;
            margin-left: auto;
            margin-right: auto;
            border: 2px solid #ffffff; /* White border */
        }
        .card {
            margin-bottom: 20px;
            background: linear-gradient(to bottom right, rgba(255, 215, 0, 0.7), rgba(0, 0, 0, 0.7)); /* Gold and dark black with transparency */
            color: #ffffff;
            border: 2px solid #ffffff; /* White border */
        }
        .card-header {
            background-color: #000000;
            padding: 10px;
            border-radius: 5px;
            font-weight: bold;
            color: #ffffff;
            font-size: 1.25em;
            border: 2px solid #ffffff; /* White border */
        }
        .btn-custom {
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 10px 15px;
            margin-bottom: 10px;
            background: linear-gradient(to bottom right, rgba(0, 0, 255, 0.5), rgba(255, 182, 193, 0.5), rgba(0, 0, 0, 0.5)); /* Transparent blue, light pink, and black gradient */
            color: #ffffff;
            border-radius: 5px;
            text-decoration: none;
            font-weight: bold;
            border: 2px solid #ffffff; /* White border for buttons */
        }
        .btn-custom-small {
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 5px 10px;
            margin-bottom: 5px;
            background: linear-gradient(to bottom right, rgba(0, 0, 255, 0.5), rgba(255, 182, 193, 0.5), rgba(0, 0, 0, 0.5)); /* Transparent blue, light pink, and black gradient */
            color: #ffffff;
            border-radius: 5px;
            text-decoration: none;
            font-weight: bold;
            border: 2px solid #ffffff; /* White border for buttons */
        }
        .btn-custom i {
            margin-right: 8px;
        }
        .testing-buttons-container {
            margin-top: 20px;
            background-color: rgba(255, 255, 255, 0.2);
            padding: 20px;
            border-radius: 10px;
            border: 2px solid #ffffff;
            text-align: center;
        }
        .testing-buttons-label {
            display: inline-block;
            padding: 5px 15px;
            background: linear-gradient(to bottom right, #32cd32, #1e90ff); /* Green and bluish gradient */
            color: #ffffff;
            border-radius: 5px;
            font-weight: bold;
            font-size: 1.25em;
            text-align: center;
            margin-bottom: 10px;
        }
        .button-group {
            text-align: center;
            margin-top: 20px;
        }
        .payment-button-container {
            margin-top: 30px;
            text-align: center;
        }
        .payment-button {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            padding: 10px 20px;
            background-color: #28a745;
            color: white;
            border: none;
            border-radius: 5px;
            text-decoration: none;
            font-weight: bold;
            font-size: 1.1em;
            transition: background-color 0.3s ease;
        }
        .payment-button i {
            margin-right: 8px;
        }
        .payment-button:hover {
            background-color: #218838;
        }
        /* Sidebar styling */
        .sidebar {
            height: 100%;
            width: 0;
            position: fixed;
            z-index: 1;
            top: 0;
            left: 0;
            background-color: #111;
            overflow-x: hidden;
            transition: 0.5s;
            padding-top: 60px;
        }
        .sidebar a {
            padding: 8px 8px 8px 32px;
            text-decoration: none;
            font-size: 25px;
            color: #818181;
            display: block;
            transition: 0.3s;
        }
        .sidebar a:hover {
            color: #f1f1f1;
        }
        .sidebar .closebtn {
            position: absolute;
            top: 0;
            right: 25px;
            font-size: 36px;
            margin-left: 50px;
        }
        #hamburgerIcon {
            font-size: 30px;
            cursor: pointer;
            position: absolute;
            top: 20px;
            left: 20px;
        }
        /* Footer styling */
        .footer {
            margin-top: 50px;
            padding: 10px;
            background-color: rgba(0, 0, 0, 0.7);
            color: #ffffff;
            border-radius: 10px;
            border: 2px solid #ffffff; /* White border */
            text-align: center;
            font-size: 0.9em;
        }
    </style>
</head>
<body>
    <!-- Sidebar -->
    <div id="mySidebar" class="sidebar">
        <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
        <a href="#">Terms and Conditions</a>
    </div>

    <!-- Main content -->
    <div id="main">
        <!-- Hamburger icon -->
        <span id="hamburgerIcon" onclick="openNav()">&#9776;</span>

        <div class="container">
            <h1 class="text-center mb-4">Bank Loan Management System</h1>

            <div class="card">
                <div class="card-header">
                    <h2>Customer</h2>
                </div>
                <div class="card-body">
                    <a href="${pageContext.request.contextPath}/customers/register" class="btn-custom">
                        <i class="fas fa-user-plus"></i> Register Customer
                    </a>
                    <a href="${pageContext.request.contextPath}/customers/list" class="btn-custom">
                        <i class="fas fa-users"></i> Customer List
                    </a>
                </div>
            </div>

            <div class="card">
                <div class="card-header">
                    <h2>Loan Products</h2>
                </div>
                <div class="card-body">
                    <a href="${pageContext.request.contextPath}/loanProducts/register" class="btn-custom">
                        <i class="fas fa-file-alt"></i> Register Loan Product
                    </a>
                    <a href="${pageContext.request.contextPath}/loanProducts/list" class="btn-custom">
                        <i class="fas fa-list"></i> Loan Product List
                    </a>
                </div>
            </div>
            <div class="card">
                <div class="card-header">
                    <h2>Loan Applications</h2>
                </div>
                <div class="card-body">
                    <a href="${pageContext.request.contextPath}/loanApplications/register" class="btn-custom">
                        <i class="fas fa-file-signature"></i> Register Loan Application
                    </a>
                    <a href="${pageContext.request.contextPath}/loanApplications/list" class="btn-custom">
                        <i class="fas fa-clipboard-list"></i> Loan Application List
                    </a>
                </div>
            </div>

            <div class="card">
                <div class="card-header">
                    <h2>Repayments</h2>
                </div>
                <div class="card-body">
    <a href="${pageContext.request.contextPath}/repayments/register" class="btn-custom">
        <i class="fas fa-dollar-sign"></i> Register Repayment
    </a>
    <a href="${pageContext.request.contextPath}/repayments/list" class="btn-custom">
        <i class="fas fa-list-alt"></i> Repayment List
    </a>
</div>
</div>

<div class="card">
    <div class="card-header">
        <h2>Reports</h2>
    </div>
    <div class="card-body">
        <a href="${pageContext.request.contextPath}/reports/loan" class="btn-custom">
            <i class="fas fa-chart-line"></i> Loan Report
        </a>
        <a href="${pageContext.request.contextPath}/reports/repayment" class="btn-custom">
            <i class="fas fa-chart-bar"></i> Repayment Report
        </a>
        <a href="${pageContext.request.contextPath}/reports/outstandingLoans" class="btn-custom">
            <i class="fas fa-file-invoice"></i> Outstanding Loans Report
        </a>
    </div>
</div>
<!-- Testing Buttons Container -->
<div class="testing-buttons-container">
    <div class="testing-buttons-label">Testing Buttons</div>
    <div class="button-group">
        <a href="${pageContext.request.contextPath}/" class="btn-custom-small">
            <i class="fas fa-home" style="margin-right: 8px;"></i> Go To Home Page
        </a>
        <a href="${pageContext.request.contextPath}/error" class="btn-custom-small">
            <i class="fas fa-exclamation-triangle" style="margin-right: 8px;"></i> Test Error Page
        </a>
    </div>
</div>

<!-- Payment Button Container -->
<div class="payment-button-container">
    <a href="${pageContext.request.contextPath}/payment" class="payment-button">
        <i class="fas fa-credit-card"></i> Make a Payment
    </a>
</div>

<!-- Footer -->
<div class="footer">
    &copy; 2025 Bank Loan Management System. All rights reserved. | Privacy Policy | Terms and Conditions
</div>
</div>
<!-- Add Font Awesome for icons -->
<script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
<script>
    function openNav() {
        document.getElementById("mySidebar").style.width = "250px";
        document.getElementById("main").style.marginLeft = "250px";
    }

    function closeNav() {
        document.getElementById("mySidebar").style.width = "0";
        document.getElementById("main").style.marginLeft = "0";
    }
</script>
</body>
</html>
