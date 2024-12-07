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

        /* Background Image */
        body {
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background: url('https://www.scobserver.in/wp-content/uploads/2022/03/VVPAT-Election-voting-2-scaled.jpg') no-repeat center center fixed;
            background-size: cover;
            flex-direction: column;
            animation: fadeInBackground 3s ease-in-out;
        }

        /* Animation for background */
        @keyframes fadeInBackground {
            0% { opacity: 0; }
            100% { opacity: 1; }
        }

        .signup-container {
            width: 400px;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.9); /* Transparent white background */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            border-radius: 8px;
            text-align: center;
            animation: slideIn 1.5s ease;
        }

        /* Slide-in animation for the form */
        @keyframes slideIn {
            0% { transform: translateY(50px); opacity: 0; }
            100% { transform: translateY(0); opacity: 1; }
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
            transition: box-shadow 0.3s ease-in-out;
        }

        /* Input field hover animation */
        .signup-container input:hover {
            box-shadow: 0 0 8px rgba(0, 0, 0, 0.1);
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
            animation: fadeIn 2s ease-in-out;
        }

        .login-message a {
            color: #4CAF50;
            text-decoration: none;
            font-weight: bold;
        }

        .login-message a:hover {
            text-decoration: underline;
        }

        /* Navigation styling */
        nav {
            width: 100%;
            background-color: rgba(51, 51, 51, 0.8); /* Semi-transparent navbar */
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

        /* Fade-in animation for login messages */
        @keyframes fadeIn {
            0% { opacity: 0; }
            100% { opacity: 1; }
        }
    </style>
</head>
<body>

    <nav class="navbar">
        <ul class="nav-links">
            <li><a href="/">Election Monitoring System</a></li>
            <li><a href="SignUp">Sign Up</a></li>
        </ul>
    </nav>

    <div class="signup-container">
        <h2>Sign Up</h2>
        <form action="getLogin" method="post">
            <label for="username">Username</label>
            <input type="text" id="username" name="username" required>

            <label for="full_name">Full Name</label>
            <input type="text" id="fullname" name="full_name" required>

            <label for="phone">Phone Number</label>
            <input type="tel" id="phone" name="phone" required>

            <label for="address">Address</label>
            <input type="text" id="address" name="address" required>

            <label for="email">Email</label>
            <input type="email" id="email" name="email" required>

            <label for="password">Password</label>
            <input type="password" id="password" name="password" required>

            <label for="cpassword">Confirm Password</label>
            <input type="password" id="confirm_password" name="cpassword" required>

            <input type="submit" value="Sign Up">
        </form>
    </div>

    <div class="login-message">
        <b>Already have an account? <a href="login">Log in</a></b>
    </div>
    <div class="login-message">
       <b> For Admin Login <a href="AdminLoginPage">Log in Admin</a></b>
    </div>

</body>
</html>
