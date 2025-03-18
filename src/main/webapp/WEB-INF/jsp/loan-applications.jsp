<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Loan Applications</title>
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
        <h2 class="text-center">Loan Applications</h2>
        <form action="${pageContext.request.contextPath}/loan-applications" method="post">
            <div class="form-group">
                <label for="loanAmount">Loan Amount:</label>
                <input type="number" class="form-control" id="loanAmount" name="loanAmount" required>
            </div>
            <div class="form-group">
                <label for="applicationDate">Application Date:</label>
                <input type="date" class="form-control" id="applicationDate" name="applicationDate" required>
            </div>
            <div class="form-group">
                <label for="approvalStatus">Approval Status:</label>
                <select class="form-control" id="approvalStatus" name="approvalStatus" required>
                    <option value="pending">Pending</option>
                    <option value="rejected">Rejected</option>
                    <option value="approved">Approved</option>
                </select>
            </div>
            <button type="submit" class="btn btn-primary btn-block">Submit</button>
        </form>
    </div>
</body>
</html>
