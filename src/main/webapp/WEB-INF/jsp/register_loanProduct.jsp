<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html>
<head>
    <title>Register Loan Product</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <style>
        body {
            background: url('https://images.hdqwalls.com/download/city-4k-buildings-skyscraper-view-l3-1920x1080.jpg') no-repeat center center fixed;
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
            <h2 class="text-center">Register Loan Product</h2>
            <form:form method="post" action="${pageContext.request.contextPath}/loanProducts/register" modelAttribute="loanProduct">
                <div class="form-group">
                    <label for="productName">Product Name:</label>
                    <form:input path="productName" id="productName" cssClass="form-control" />
                </div>
                <div class="form-group">
                    <label for="interestRate">Interest Rate:</label>
                    <form:input path="interestRate" id="interestRate" cssClass="form-control" />
                </div>
                <div class="form-group">
                    <label for="minAmount">Minimum Amount:</label>
                    <form:input path="minAmount" id="minAmount" cssClass="form-control" />
                </div>
                <div class="form-group">
                    <label for="maxAmount">Maximum Amount:</label>
                    <form:input path="maxAmount" id="maxAmount" cssClass="form-control" />
                </div>
                <div class="form-group">
                    <label for="tenure">Tenure:</label>
                    <form:input path="tenure" id="tenure" cssClass="form-control" />
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
