<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html>
<head>
    <title>Edit Customer</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <style>
        body {
            background: url('https://www.rosalux.de/fileadmin/images/Ausland/China/Tencent-binghai-building_imago0102929252h.jpg') no-repeat center center fixed;
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
            <h2 class="text-center">Edit Customer</h2>
            <form:form method="post" action="${pageContext.request.contextPath}/customers/update" modelAttribute="customer">
                <div class="form-group">
                    <label for="name">Name:</label>
                    <form:input path="name" id="name" cssClass="form-control" />
                </div>
                <div class="form-group">
                    <label for="email">Email:</label>
                    <form:input path="email" id="email" cssClass="form-control" type="email" />
                </div>
                <div class="form-group">
                    <label for="phone">Phone:</label>
                    <form:input path="phone" id="phone" cssClass="form-control" />
                </div>
                <div class="form-group">
                    <label for="address">Address:</label>
                    <form:textarea path="address" id="address" cssClass="form-control" />
                </div>
                <div class="form-group">
                    <label for="kycStatus">KYC Status:</label>
                    <form:select path="kycStatus" id="kycStatus" cssClass="form-control">
                        <form:option value="PENDING">Pending</form:option>
                        <form:option value="VERIFIED">Verified</form:option>
                    </form:select>
                </div>
                <div class="form-group text-center">
                    <button type="submit" class="btn-high-tech">
                        <i class="fas fa-user-edit"></i> Update
                    </button>
                </div>
            </form:form>
        </div>
    </div>

    <!-- Add Font Awesome for icons -->
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
</body>
</html>
