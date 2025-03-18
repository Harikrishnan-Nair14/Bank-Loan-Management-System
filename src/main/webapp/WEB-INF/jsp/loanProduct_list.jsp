<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Loan Product List</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <style>
        body {
            background: url('https://dm0qx8t0i9gc9.cloudfront.net/thumbnails/video/zofDdqF/videoblocks-4k-timelapse-sequence-of-toronto-canada-downtown-toronto-from-day-to-night-as-seen-from-the-top-of-a-skyscraper_bfmnpov2r_thumbnail-1080_03.png') no-repeat center center fixed;
            background-size: cover;
            color: #ffffff;
        }
        .container {
            background-color: rgba(0, 0, 0, 0.7);
            margin-top: 50px;
            padding: 30px;
            border-radius: 10px;
            max-width: 90%;
            margin-left: auto;
            margin-right: auto;
            box-shadow: 0px 0px 15px rgba(255, 255, 255, 0.2);
        }
        .table-container {
            background-color: rgba(255, 255, 255, 0.2);
            padding: 20px;
            border-radius: 10px;
            border: 2px solid #ffffff;
            width: 100%;
            overflow-x: auto;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            padding: 10px;
            border: 2px solid #ffffff;
            text-align: center;
        }
        th {
            background-color: rgba(0, 0, 0, 0.8);
            color: #ffffff;
        }
        td {
            background-color: rgba(0, 0, 0, 0.5);
            color: #ffffff;
        }
        .btn-high-tech {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            padding: 10px 15px;
            background: linear-gradient(to bottom right, rgba(0, 0, 255, 0.5), rgba(255, 182, 193, 0.5), rgba(0, 0, 0, 0.5));
            color: #ffffff;
            border-radius: 5px;
            text-decoration: none;
            font-weight: bold;
            border: 2px solid #ffffff;
            margin: 0px;
        }
        .btn-high-tech i {
            margin-right: 8px;
        }
        .btn-group-horizontal {
            display: flex;
            justify-content: space-evenly;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="table-container">
            <h2 class="text-center">Loan Product List</h2>
            <table>
                <thead>
                    <tr>
                        <th>Product Name</th>
                        <th>Interest Rate</th>
                        <th>Minimum Amount</th>
                        <th>Maximum Amount</th>
                        <th>Tenure</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="loanProduct" items="${loanProducts}">
                        <tr>
                            <td>${loanProduct.productName}</td>
                            <td>${loanProduct.interestRate}</td>
                            <td>${loanProduct.minAmount}</td>
                            <td>${loanProduct.maxAmount}</td>
                            <td>${loanProduct.tenure}</td>
                            <td>
                                <div class="btn-group-horizontal">
                                    <a href="${pageContext.request.contextPath}/loanProducts/edit/${loanProduct.id}" class="btn-high-tech">
                                        <i class="fas fa-edit"></i> Edit
                                    </a>
                                    <a href="${pageContext.request.contextPath}/loanProducts/delete/${loanProduct.id}" class="btn-high-tech">
                                        <i class="fas fa-trash"></i> Delete
                                    </a>
                                    
                                </div>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
                    <!-- Add Font Awesome for icons -->
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
</body>
</html>
                
