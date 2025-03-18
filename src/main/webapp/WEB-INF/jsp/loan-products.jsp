<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Loan Products</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .container {
            margin-top: 50px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2 class="text-center">Loan Products</h2>
        <form action="${pageContext.request.contextPath}/loan-products" method="post">
            <div class="form-group">
                <label for="interestRate">Interest Rate (%):</label>
                <input type="number" step="0.01" class="form-control" id="interestRate" name="interestRate" required>
            </div>
            <div class="form-group">
                <label for="minimumAmount">Minimum Amount:</label>
                <input type="number" class="form-control" id="minimumAmount" name="minimumAmount" required>
            </div>
            <div class="form-group">
                <label for="maximumAmount">Maximum Amount:</label>
                <input type="number" class="form-control" id="maximumAmount" name="maximumAmount" required>
            </div>
            <div class="form-group">
                <label for="tenure">Tenure (Months):</label>
                <input type="number" class="form-control" id="tenure" name="tenure" required>
            </div>
            <button type="submit" class="btn btn-primary btn-block">Submit</button>
        </form>
    </div>
</body>
</html>
