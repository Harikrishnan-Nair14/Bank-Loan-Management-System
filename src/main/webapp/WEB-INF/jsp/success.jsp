<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Registration Successful</title>
    <style>
        body {
            background-color: #f8f9fa;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        img {
            max-width: 100%;
            height: auto;
        }
    </style>
    <script>
        // Redirect to customer list page after 2 seconds
        setTimeout(function() {
            window.location.href = "${pageContext.request.contextPath}/customers/list";
        }, 2000);
    </script>
</head>
<body>
    <img src="https://cyberhealth.be/wp-content/uploads/2022/07/CyberHealth-Insurance-Registration-success.jpg" alt="Registration Successful">
</body>
</html>
