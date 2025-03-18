<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Loan Application List</title>
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
        .btn-group-horizontal {
            display: flex;
            justify-content: space-evenly;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="table-container">
            <h2 class="text-center">Loan Application List</h2>
            <table>
                <thead>
                    <tr>
                        <th>Customer ID</th>
                        <th>Loan Product ID</th>
                        <th>Loan Amount</th>
                        <th>Application Date</th>
                        <th>Approval Status</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="loanApplication" items="${loanApplications}">
                        <tr>
                            <td>${loanApplication.customer.id}</td>
                            <td>${loanApplication.loanProduct.id}</td>
                            <td>${loanApplication.loanAmount}</td>
                            <td>${loanApplication.applicationDate}</td>
                            <td>${loanApplication.approvalStatus}</td>
                            <td>
                                <div class="btn-group-horizontal">
                                    <a href="${pageContext.request.contextPath}/loanApplications/edit/${loanApplication.id}" class="btn-high-tech">
                                        <i class="fas fa-edit"></i> Edit
                                    </a>
                                    <a href="${pageContext.request.contextPath}/loanApplications/delete/${loanApplication.id}" class="btn-high-tech">
                                        <i class="fas fa-trash"></i> Delete
                                    </a>
                                    <a href="${pageContext.request.contextPath}/emi-calculator?loanAmount=${loanApplication.loanAmount}&applicationDate=${loanApplication.applicationDate}&approvalStatus=${loanApplication.approvalStatus}&interestRate=${loanApplication.loanProduct.interestRate}&tenure=${loanApplication.loanProduct.tenure}" class="btn-high-tech d-inline-flex align-items-center">
                                        <i class="fas fa-calculator"></i>&nbsp;Calculate EMI
                                    </a>
                                </div>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
                                    
