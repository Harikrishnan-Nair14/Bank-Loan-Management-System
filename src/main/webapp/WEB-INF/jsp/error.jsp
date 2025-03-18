<!DOCTYPE html>
<html>
<head>
    <title>Error</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <style>
        body {
            background: url('https://tse3.mm.bing.net/th/id/OIP.goIkSFDsUI3OlQjGCesiOgHaEl?rs=1&pid=ImgDetMain') no-repeat center center fixed;
            background-size: cover;
            color: #ffffff;
        }
        .error-container {
            max-width: 600px;
            margin: 80px auto;
            padding: 20px;
            background-color: rgba(0, 0, 0, 0.5);
            border: 1px solid #f5c6cb;
            border-radius: 10px;
            text-align: center;
        }
        h2 {
            color: #f8d7da;
        }
        p {
            color: #f8d7da;
        }
        .error-image-container {
            text-align: center;
            margin-top: 20px;
        }
        .error-image {
            max-width: 15%; /* Further reducing the image size */
            height: auto;
            border-radius: 10px;
            border: 2px solid #f5c6cb;
        }
    </style>
</head>
<body>
    <div class="container error-container">
        <h2 class="display-4">An error occurred</h2>
        <p class="lead">We're sorry, but something went wrong.</p>
        <a href="${pageContext.request.contextPath}/" class="btn btn-primary">Go to Homepage</a>
    </div>
    <div class="error-image-container">
        <img src="https://cdn-icons-png.flaticon.com/512/7549/7549493.png" alt="Error Image" class="error-image">
    </div>
</body>
</html>
