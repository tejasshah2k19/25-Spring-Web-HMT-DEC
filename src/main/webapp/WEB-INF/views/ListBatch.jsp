<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List Batch</title>

<!-- Bootstrap 5 CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>

<div class="container mt-4">

    <h2 class="mb-4 text-center">List Batch</h2>

    <div class="table-responsive">
        <table class="table table-bordered table-striped table-hover align-middle text-center">
            <thead class="table-dark">
                <tr>
                    <th>Batch Name</th>
                    <th>Faculty Name</th>
                    <th>Subject Name</th>
                    <th>Total Hrs / Week</th>
                    <tH>Action</tH>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${allBatch}" var="b">
                    <tr>
                        <td>${b.batchName}</td>
                        <td>${b.facultyName}</td>
                        <td>${b.subjectName}</td>
                        <td>${b.totalHours}</td>
						<td><a href="deleteBatch?batchId=${b.batchId}">Delete</a> | View  | Edit </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>

</div>

<!-- Bootstrap JS (optional) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
