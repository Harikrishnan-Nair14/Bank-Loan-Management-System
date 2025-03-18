<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html>
<head>
    <title>Register Repayment</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <style>
        body {
            background: url('https://www.builtinchicago.org/sites/www.builtinchicago.org/files/styles/og/public/2023-11/chicago.jpg') no-repeat center center fixed;
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
            <h2 class="text-center">Register Repayment</h2>
            <div class="alert alert-info" role="alert">
                <label>Linked Loan Application ID:</label>
                <span>${lastLoanApplicationId}</span>
            </div>
            <form:form method="post" action="${pageContext.request.contextPath}/repayments/register" modelAttribute="repayment">
                <div class="form-group">
                    <label for="loanApplicationId">Loan Application ID:</label>
                    <form:input path="loanApplication.id" id="loanApplicationId" cssClass="form-control" />
                </div>
                <div class="form-group">
                    <label for="dueDate">Due Date:</label>
                    <form:input path="dueDate" id="dueDate" cssClass="form-control" type="date" placeholder="yyyy-mm-dd" />
                </div>
                <div class="form-group">
                    <label for="amountDue">Loan Amount:</label>
                    <form:input path="amountDue" id="amountDue" cssClass="form-control" placeholder="In Rupees" />
                </div>
                <div class="form-group">
                    <label for="paymentDate">Payment Date:</label>
                    <form:input path="paymentDate" id="paymentDate" cssClass="form-control" type="date" placeholder="yyyy-mm-dd" />
                </div>
                <div class="form-group">
                    <label for="paymentStatus">Payment Status:</label>
                    <form:select path="paymentStatus" id="paymentStatus" cssClass="form-control">
                        <form:option value="PENDING">Pending</form:option>
                        <form:option value="COMPLETED">Completed</form:option>
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
