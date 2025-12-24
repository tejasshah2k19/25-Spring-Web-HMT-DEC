<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Details</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body class="bg-light">

<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-7">
            <div class="card shadow">
                <div class="card-header bg-success text-white text-center">
                    <h4>User Details</h4>
                </div>

                <div class="card-body">
                    <table class="table table-bordered">
                        <tr>
                            <th>First Name</th>
                            <td>${user.firstName}</td>
                        </tr>
                        <tr>
                            <th>Email</th>
                            <td>${user.email}</td>
                        </tr>
                        <tr>
                            <th>Password</th>
                            <td>${user.password}</td>
                        </tr>
                        <tr>
                            <th>Gender</th>
                            <td>${user.gender}</td>
                        </tr>
                        <tr>
                            <th>Address</th>
                            <td>${user.address}</td>
                        </tr>
                        <tr>
                            <th>Hobbies</th>
                            <td>
                                ${user.hobby }
                            </td>
                        </tr>
                        <tr>
                            <th>City</th>
                            <td>${user.city}</td>
                        </tr>
                        <tr>
                            <th>Pincode</th>
                            <td>${user.pincode}</td>
                        </tr>
                    </table>

                    <div class="text-center">
                        <a href="signup.jsp" class="btn btn-primary">Back</a>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
