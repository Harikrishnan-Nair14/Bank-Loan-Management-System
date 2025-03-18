<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Repayment List</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <style>
        body {
            background: url('https://images.locationscout.net/2019/06/rooftop-of-the-london-house-hotel-usa.jpg?h=1100&q=83') no-repeat center center fixed;
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
            margin: 3.5px;
        }
        .btn-high-tech i {
            margin-right: 8px;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="table-container">
            <h2 class="text-center">Repayment List</h2>
            <table>
                <thead>
                    <tr>
                        <th>Loan Application ID</th>
                        <th>Due Date</th>
                        <th>Loan Amount</th>
                        <th>Payment Date</th>
                        <th>Payment Status</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="repayment" items="${repayments}">
                        <tr>
                            <td>${repayment.loanApplication.id}</td>
                            <td>${repayment.dueDate}</td>
                            <td>${repayment.amountDue}</td>
                            <td>${repayment.paymentDate}</td>
                            <td>${repayment.paymentStatus}</td>
                            <td>
                                <a href="${pageContext.request.contextPath}/repayments/edit/${repayment.id}" class="btn-high-tech">
                                    <i class="fas fa-edit"></i> Edit
                                </a>
                                <a href="${pageContext.request.contextPath}/repayments/delete/${repayment.id}" class="btn-high-tech">
                                    <i class="fas fa-trash"></i> Delete
                                </a>
                                
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
