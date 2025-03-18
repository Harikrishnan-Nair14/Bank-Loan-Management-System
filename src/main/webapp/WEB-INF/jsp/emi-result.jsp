<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>EMI Calculation Result</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <style>
        body {
            background: url('https://hdqwalls.com/wallpapers/usa-new-york-city-night-4k-iq.jpg') no-repeat center center fixed;
            background-size: cover;
            color: #ffffff;
        }
        .container {
            background-color: rgba(0, 0, 0, 0.5);
            margin-top: 175px;
            padding: 30px;
            border-radius: 10px;
            max-width: 600px;
            margin-left: auto;
            margin-right: auto;
            border: 2px solid #ffffff; /* White border */
        }
        .btn-custom {
            background-color: #007bff;
            color: white;
            font-weight: bold;
            border-radius: 5px;
            margin-top: 20px;
        }
        .btn-custom:hover {
            background-color: #0056b3;
        }
        .gradient-box {
            display: inline-block;
            padding: 10px 15px;
            background: linear-gradient(to right, green, red, blue, black);
            color: white;
            font-weight: bold;
            border-radius: 5px;
            font-size: 1.2em;
            margin-bottom: 15px;
            text-align: center;
            width: 100%;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="gradient-box">EMI Calculation Result</div>
        <div class="alert alert-success" role="alert">
            Your Monthly EMI is: <strong>${emi}</strong>
        </div>
        <!-- Back to Loan Application List Button -->
        <a href="${pageContext.request.contextPath}/loanApplications/list" class="btn btn-custom btn-block">Back to Loan Application List</a>
    </div>
</body>
</html>
