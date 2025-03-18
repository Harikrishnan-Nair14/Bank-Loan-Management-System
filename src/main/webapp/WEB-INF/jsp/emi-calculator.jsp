<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>EMI Calculator</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <style>
        body {
            background: url('https://cdn.wallpapersafari.com/44/5/tqxKpw.jpg') no-repeat center center fixed;
            background-size: cover;
            color: #ffffff;
        }
        .main-container {
            background-color: rgba(0, 0, 0, 0.7);
            margin-top: 50px;
            padding: 30px;
            border-radius: 10px;
            max-width: 600px; /* Reduced width */
            margin-left: auto;
            margin-right: auto;
            border: 2px solid #ffffff; /* White border */
            box-shadow: 0px 0px 15px rgba(255, 255, 255, 0.2);
        }
        .container-section {
            background-color: rgba(255, 255, 255, 0.2);
            padding: 20px;
            border-radius: 10px;
            border: 2px solid #ffffff;
            margin-bottom: 30px;
        }
        .form-group label {
            color: #ffffff;
            font-weight: bold;
        }
        .btn-non-clickable {
            background-color: rgba(0, 0, 0, 0.8);
            color: white;
            font-weight: bold;
            border: none;
            cursor: default;
            font-size: 1.2em;
            margin-bottom: 10px;
            width: auto; /* Make buttons shorter */
            padding: 10px 15px;
        }
        .btn-custom {
            background-color: #28a745;
            color: white;
            font-weight: bold;
            border-radius: 5px;
        }
        .btn-custom:hover {
            background-color: #218838;
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
    <div class="main-container">
        <h2 class="text-center mb-4">EMI Calculator</h2>

        <!-- Display the entered values for reference -->
        <div class="container-section">
            <div class="gradient-box">Entered Values</div>
            <div class="form-group">
                <label for="enteredLoanAmount">Entered Loan Amount:</label>
                <button type="button" class="btn-non-clickable">${param.loanAmount}</button>
            </div>
            <div class="form-group">
                <label for="enteredInterestRate">Entered Interest Rate (%):</label>
                <button type="button" class="btn-non-clickable">${param.interestRate}</button>
            </div>
            <div class="form-group">
                <label for="enteredTenure">Entered Tenure (Months):</label>
                <button type="button" class="btn-non-clickable">${param.tenure}</button>
            </div>
            <div class="form-group">
                <label for="enteredApplicationDate">Entered Application Date:</label>
                <button type="button" class="btn-non-clickable">${param.applicationDate}</button>
            </div>
            <div class="form-group">
                <label for="enteredApprovalStatus">Entered Approval Status:</label>
                <button type="button" class="btn-non-clickable">${param.approvalStatus}</button>
            </div>
        </div>
        <!-- EMI Calculation Form with prefilled input fields -->
        <div class="container-section">
            <div class="gradient-box">EMI Calculation</div>
            <form action="${pageContext.request.contextPath}/calculate-emi" method="post">
                <div class="form-group">
                    <label for="principal">Principal Amount:</label>
                    <button type="button" class="btn-non-clickable">${param.loanAmount}</button>
                    <input type="hidden" name="principal" value="${param.loanAmount}">
                </div>
                <div class="form-group">
                    <label for="annualInterestRate">Annual Interest Rate (%):</label>
                    <button type="button" class="btn-non-clickable">${param.interestRate}</button>
                    <input type="hidden" name="annualInterestRate" value="${param.interestRate}">
                </div>
                <div class="form-group">
                    <label for="tenureInMonths">Tenure (Months):</label>
                    <button type="button" class="btn-non-clickable">${param.tenure}</button>
                    <input type="hidden" name="tenureInMonths" value="${param.tenure}">
                </div>
                <button type="submit" class="btn btn-custom btn-block">Calculate EMI</button>
            </form>
        </div>
    </div>
</body>
</html>
        
