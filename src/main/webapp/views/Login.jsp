<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up Navbar</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            background: url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5xk0sAo5z4KK9Kc-eQDr_sq5lpmUnl21nMw&s') no-repeat center center fixed;
            background-size: cover;
            background-blend-mode: darken; /* Enhances clarity of form against background */
        }

        /* Navbar styling */
        nav {
            width: 100%;
            background-color: rgba(51, 51, 51, 0.9);
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
            text-decoration: none;
            font-weight: bold;
            font-size: 18px;
            transition: color 0.3s ease;
        }

        nav a:hover {
            color: #00bcd4;
            text-decoration: underline;
        }

        /* Login container styling */
        .login-container {
            width: 400px;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.9); /* Semi-transparent white background for clarity */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            border-radius: 8px;
            text-align: center;
        }

        .login-container h2 {
            margin-bottom: 20px;
            color: #333;
        }

        .login-container label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
            color: #555;
            text-align: left;
        }

        .login-container input {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 16px;
        }

        .login-container input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            font-weight: bold;
            cursor: pointer;
            border: none;
            transition: background-color 0.3s ease;
        }

        .login-container input[type="submit"]:hover {
            background-color: #45a049;
        }

        .signup-message {
            margin-top: 15px;
            font-size: 14px;
            color: #555;
        }

        .signup-message a {
            color: #4CAF50;
            text-decoration: none;
            font-weight: bold;
        }

        .signup-message a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

    <!-- Navbar -->
    <nav class="navbar">
        <ul class="nav-links">
            <li><a href="/">Election Monitoring System</a></li>
            <li><a href="SignUp">Sign Up</a></li>
        </ul>
    </nav>

    <!-- Login Form -->
    <div class="login-container">
        <h2>Log In</h2>
        <form action="loginUser" method="post">
            <label for="username">Username</label>
            <input type="text" id="username" name="username" required>

            <label for="password">Password</label>
            <input type="password" id="password" name="password" required>

            <input type="submit" value="Log In">
        </form>
        <div class="signup-message">
            Don’t have an account? <a href="SignUp">Sign Up</a>
        </div>
    </div>

</body>
</html>
