<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Admin Login</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <style>
        body {
            background: url('https://th.bing.com/th/id/R.7019e9702ca60f3f2de54eb65481c525?rik=XYa5w1aPFzYfKw&riu=http%3a%2f%2fcdn.wallpapersafari.com%2f22%2f45%2fvPbUHk.jpg&ehk=%2bhi5sjwepKkpwoyUUkCOQ4CayH0BpaW%2f0X5vfnjCagY%3d&risl=&pid=ImgRaw&r=0') no-repeat center center fixed;
            background-size: cover;
            color: #ffffff;
        }
        .container {
            background-color: rgba(0, 0, 0, 0.6); /* Black transparent background */
            margin-top: 100px;
            padding: 30px;
            border-radius: 10px;
            max-width: 400px;
            margin-left: auto;
            margin-right: auto;
            border: 2px solid #ffffff; /* White border */
        }
        .profile-pic {
            display: block;
            margin-left: auto;
            margin-right: auto;
            width: 100px;
            height: 100px;
            border-radius: 50%;
            border: 2px solid #ffffff;
            margin-bottom: 20px;
        }
        .form-group label {
            color: #ffffff;
        }
        .form-control {
            background-color: rgba(255, 255, 255, 0.8);
            border: 2px solid #ffffff;
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
        .error-message {
            color: red;
            margin-top: 10px;
            text-align: center;
        }
    </style>
</head>
<body>
    <div class="container">
        <img src="${pageContext.request.contextPath}/images/HKNair Pic.png" alt="Profile Picture" class="profile-pic">
        <h2 class="text-center">Administration Login</h2>
        <form:form method="post" action="${pageContext.request.contextPath}/admin/login" modelAttribute="admin">
            <div class="form-group">
                <label for="username">Username:</label>
                <form:input path="username" id="username" cssClass="form-control" />
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <form:password path="password" id="password" cssClass="form-control" />
            </div>
            <div class="form-group text-center">
                <button type="submit" class="btn-high-tech">
                    <i class="fas fa-sign-in-alt"></i> Login
                </button>
            </div>
            <c:if test="${not empty error}">
                <div class="error-message">${error}</div>
            </c:if>
        </form:form>
    </div>

    <!-- Add Font Awesome for icons -->
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
</body>
</html>
