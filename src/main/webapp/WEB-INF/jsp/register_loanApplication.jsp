<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html>
<head>
    <title>Register Loan Application</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <style>
        body {
            background: url('https://th.bing.com/th/id/R.8a03adb6d43b6e6f96210d057188449a?rik=V4BI7ShNg9ZP5w&riu=http%3a%2f%2fwww.v3wall.com%2fwallpaper%2f1920_1080%2f1412%2f1920_1080_201412221247501040650.jpg&ehk=YPO1vU3Mh6j%2bIRXzmzv0p7jcAlka%2bVAdrtuFCoAvA0U%3d&risl=&pid=ImgRaw&r=0') no-repeat center center fixed;
            background-size: cover;
            color: #ffffff;
        }
        .container {
            background-color: rgba(0, 0, 0, 0.7);
            margin-top: 50px;
            padding: 30px;
            border-radius: 10px;
            max-width: 600px;
            margin-left: auto;
            margin-right: auto;
        }
        .form-container {
            background-color: rgba(255, 255, 255, 0.2);
            padding: 30px;
            border-radius: 10px;
            border: 2px solid #ffffff;
            box-shadow: 0px 0px 15px rgba(255, 255, 255, 0.2);
        }
        h2 {
            margin-bottom: 20px;
            color: #ffffff;
        }
        .form-group label {
            color: #ffffff;
            font-weight: bold;
        }
        .form-control {
            border: 2px solid #ffffff;
            background-color: rgba(255, 255, 255, 0.8);
        }
        .form-control:focus {
            border-color: #ffa500;
            box-shadow: 0 0 5px rgba(255, 165, 0, 0.5);
        }
        .btn-high-tech {
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 10px 15px;
            background: linear-gradient(to bottom right, rgba(0, 0, 255, 0.5), rgba(255, 182, 193, 0.5), rgba(0, 0, 0, 0.5));
            color: #ffffff;
            border-radius: 5px;
            text-decoration: none;
            font-weight: bold;
            border: 2px solid #ffffff;
        }
        .btn-high-tech i {
            margin-right: 8px;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="form-container">
            <h2 class="text-center">Register Loan Application</h2>
            <div class="alert alert-info" role="alert">
                <label>Recent Added Customer ID:</label>
                <span>${lastCustomerId}</span>
            </div>
            <div class="alert alert-info" role="alert">
                <label>Linked Product ID:</label>
                <span>${lastLoanProductId}</span>
            </div>
            <form:form method="post" action="${pageContext.request.contextPath}/loanApplications/register" modelAttribute="loanApplication">
                <div class="form-group">
                    <label for="customerId">Customer ID:</label>
                    <form:input path="customer.id" id="customerId" cssClass="form-control" value="${lastCustomerId}" />
                </div>
                <div class="form-group">
                    <label for="loanProductId">Loan Product ID:</label>
                    <form:input path="loanProduct.id" id="loanProductId" cssClass="form-control" value="${lastLoanProductId}" />
                </div>
                <div class="form-group">
                    <label for="loanAmount">Loan Amount:</label>
                    <form:input path="loanAmount" id="loanAmount" cssClass="form-control" placeholder="In Rupees" />
                </div>
                <div class="form-group">
                    <label for="applicationDate">Application Date:</label>
                    <form:input path="applicationDate" id="applicationDate" cssClass="form-control" type="date" placeholder="yyyy-mm-dd" />
                </div>
                <div class="form-group">
                    <label for="approvalStatus">Approval Status:</label>
                    <form:select path="approvalStatus" id="approvalStatus" cssClass="form-control">
                        <form:option value="PENDING">Pending</form:option>
                        <form:option value="APPROVED">Approved</form:option>
                        <form:option value="REJECTED">Rejected</form:option>
                    </form:select>
                </div>
                <div class="form-group text-center">
                    <button type="submit" class="btn-high-tech">
                        <i class="fas fa-check-circle"></i> Register
                    </button>
                </div>
            </form:form>
        </div>
    </div>

    <!-- Add Font Awesome for icons -->
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
</body>
</html>
