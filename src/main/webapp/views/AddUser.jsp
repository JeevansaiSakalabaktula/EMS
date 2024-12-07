<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up Form</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #f4f4f4;
            flex-direction: column;
        }

        .welcome-message {
            font-size: 24px;
            color: #4CAF50;
            margin-bottom: 10px;
            font-weight: bold;
        }

        .signup-container {
            width: 400px;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            border-radius: 8px;
            text-align: center;
        }

        .signup-container h2 {
            margin-bottom: 20px;
            color: #333;
        }

        .signup-container label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
            color: #555;
            text-align: left;
        }

        .signup-container input {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 16px;
        }

        .signup-container input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            font-weight: bold;
            cursor: pointer;
            border: none;
            transition: background-color 0.3s ease;
        }

        .signup-container input[type="submit"]:hover {
            background-color: #45a049;
        }

        .login-message {
            margin-top: 15px;
            font-size: 14px;
            color: #555;
        }

        .login-message a {
            color: #4CAF50;
            text-decoration: none;
            font-weight: bold;
        }

        .login-message a:hover {
            text-decoration: underline;
        }

        nav {
            width: 100%;
            background-color: #333;
            color: white;
            padding: 15px 0;
            text-align: center;
            position: fixed;
            top: 0;
            left: 0;
            z-index: 1000;
        }

        .nav-links {
            list-style: none;
            display: flex;
            justify-content: center;
        }

        .nav-links li {
            padding: 0 15px;
        }

        nav a {
            color: white;
            margin: 0 20px;
            text-decoration: none;
            font-weight: bold;
            font-size: 18px;
            transition: color 0.3s ease;
        }

        nav a:hover {
            color: #00bcd4;
            text-decoration: underline;
        }
    </style>
</head>
<body>

    <jsp:include page="AdminNavbar.jsp" />

    <div class="signup-container">
        <h2>Sign Up</h2>
        <form action="addNewUser" method="post">
            <label for="username">Username</label>
            <input type="text" id="username" name="username" required>

            <label for="full_name">User Full Name</label>
            <input type="text" id="fullname" name="full_name" required>

            <label for="phone">User Phone Number</label>
            <input type="tel" id="phone" name="phone" required>

            <label for="address">User Address</label>
            <input type="text" id="address" name="address" required>

            <label for="email">User Email</label>
            <input type="email" id="email" name="email" required>

            <label for="password">User Password</label>
            <input type="password" id="password" name="password" required>

            <label for="cpassword">User Confirm Password</label>
            <input type="password" id="confirm_password" name="cpassword" required>

            <input type="submit" value="Add User">
        </form>
    </div>

    

</body>
</html>
