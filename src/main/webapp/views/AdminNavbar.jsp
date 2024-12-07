<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Navbar Example</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            padding-top: 70px; /* Adjusted for fixed navbar */
        }

        nav {
            width: 100%;              /* Ensures navbar spans the entire screen width */
            background-color: #333;    /* Background color */
            color: white;              /* Text color */
            padding: 15px 0;           /* Vertical padding */
            text-align: center;        /* Center-align the links */
            position: fixed;           /* Fixes navbar at the top */
            top: 0;                    /* Aligns it at the top of the page */
            left: 0;                   /* Aligns it to the left */
            z-index: 1000;             /* Places navbar above other elements */
        }

        .nav-links {
            list-style: none;
            display: flex;
            justify-content: center; /* Center the links in the navbar */
        }

        .nav-links li {
            padding: 0 15px;
        }

        nav a {
            color: white;              /* Navbar link color */
            margin: 0 20px;            /* Adds space between links */
            text-decoration: none;     /* Removes underline from links */
            font-weight: bold;
            font-size: 18px;
            transition: color 0.3s ease; /* Smooth transition for hover */
        }

        nav a:hover {
            color: #00bcd4;            /* Color change on hover */
            text-decoration: underline; /* Underline effect on hover */
        }
    </style>
</head>
<body>

    <nav class="navbar">
        <ul class="nav-links">
        <li><a href="AdminHome">Election Monitoring</a></li>
            <li><a href="viewAllUsers">View All Users</a></li>
            <li><a href="addUser">Add User</a></li>
            <li><a href="viewReports">View Reports</a></li>
            
            <li><a href="votings">Votings</a></li>
            <li><a href="AdminLoginPage">Logout</a></li>
        </ul>
    </nav>

</body>
</html>
