<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Signup Form</title>

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

</head>
<body class="bg-light">

<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card shadow">
                <div class="card-header text-center bg-primary text-white">
                    <h4>Signup Form</h4>
                </div>
                <div class="card-body">

                    <form action="saveUser" method="post">

                        <!-- First Name -->
                        <div class="mb-3">
                            <label class="form-label">First Name</label>
                            <input type="text" name="firstName" class="form-control" placeholder="Enter first name" required>
                        </div>

                        <!-- Email -->
                        <div class="mb-3">
                            <label class="form-label">Email</label>
                            <input type="email" name="email" class="form-control" placeholder="Enter email" required>
                        </div>

                        <!-- Password -->
                        <div class="mb-3">
                            <label class="form-label">Password</label>
                            <input type="password" name="password" class="form-control" placeholder="Enter password" required>
                        </div>

                        <!-- Gender -->
                        <div class="mb-3">
                            <label class="form-label d-block">Gender</label>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" name="gender" value="Male" required>
                                <label class="form-check-label">Male</label>
                            </div>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" name="gender" value="Female">
                                <label class="form-check-label">Female</label>
                            </div>
                        </div>

                        <!-- Address -->
                        <div class="mb-3">
                            <label class="form-label">Address</label>
                            <textarea name="address" class="form-control" rows="3" placeholder="Enter address"></textarea>
                        </div>

                        <!-- Hobby -->
                        <div class="mb-3">
                            <label class="form-label d-block">Hobby</label>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="checkbox" name="hobby" value="Reading">
                                <label class="form-check-label">Reading</label>
                            </div>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="checkbox" name="hobby" value="Sports">
                                <label class="form-check-label">Sports</label>
                            </div>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="checkbox" name="hobby" value="Music">
                                <label class="form-check-label">Music</label>
                            </div>
                        </div>

                        <!-- City -->
                        <div class="mb-3">
                            <label class="form-label">City</label>
                            <select name="city" class="form-select" required>
                                <option value="">-- Select City --</option>
                                <option>Ahmedabad</option>
                                <option>Surat</option>
                                <option>Vadodara</option>
                                <option>Rajkot</option>
                                <option>Himatnagar</option>

                            </select>
                        </div>

                        <!-- Pincode -->
                        <div class="mb-3">
                            <label class="form-label">Pincode</label>
                            <input type="text" name="pincode" class="form-control" placeholder="Enter pincode" maxlength="6">
                        </div>

                        <!-- Submit -->
                        <div class="d-grid">
                            <button type="submit" class="btn btn-primary">Register</button>
                        </div>

                    </form>

                </div>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
