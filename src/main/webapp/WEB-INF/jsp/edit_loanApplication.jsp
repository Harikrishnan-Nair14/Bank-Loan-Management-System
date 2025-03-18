<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html>
<head>
    <title>Edit Loan Application</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <style>
        body {
            background: url('https://th.bing.com/th/id/R.f44bb5607919add2f4bbf25b2f87b30c?rik=vDiiYywPoVRAeg&riu=http%3a%2f%2fres.cloudinary.com%2fluxuryp%2fimage%2fupload%2fv1540620045%2fza7khpqsqxzhapsrychl.jpg&ehk=%2bNLvFkHgT%2fbeEU85OtG6k1jvmc2TME7OE4Vp2cnPFlQ%3d&risl=&pid=ImgRaw&r=0') no-repeat center center fixed;
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
            <h2 class="text-center">Edit Loan Application</h2>
            <form:form method="post" action="${pageContext.request.contextPath}/loanApplications/update" modelAttribute="loanApplication">
                <div class="form-group">
                    <label for="customer">Customer ID:</label>
                    <form:input path="customer.id" id="customer" cssClass="form-control" />
                </div>
                <div class="form-group">
                    <label for="loanProduct">Loan Product ID:</label>
                    <form:input path="loanProduct.id" id="loanProduct" cssClass="form-control" />
                </div>
                <div class="form-group">
                    <label for="loanAmount">Loan Amount:</label>
                    <form:input path="loanAmount" id="loanAmount" cssClass="form-control" />
                </div>
                <div class="form-group">
                    <label for="applicationDate">Application Date:</label>
                    <form:input path="applicationDate" id="applicationDate" cssClass="form-control" type="date" />
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
                        <i class="fas fa-edit"></i> Update
                    </button>
                </div>
            </form:form>
        </div>
    </div>

    <!-- Add Font Awesome for icons -->
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
</body>
</html>
