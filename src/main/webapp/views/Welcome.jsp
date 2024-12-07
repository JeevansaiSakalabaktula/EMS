<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Election Monitoring</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            padding-top: 70px; /* Adjusted for fixed navbar */
            background-image: url('https://cdn.sanity.io/images/3tzzh18d/production/63729c5c326b5939c8fa4327d601f214a56b9c8b-1200x675.png'); /* Election-themed background */
            background-size: cover; /* Ensures the image covers the entire screen */
            background-attachment: fixed; /* Keeps the background fixed while scrolling */
            background-position: center; /* Centers the background image */
            color: white; /* White text for contrast */
        }

        nav {
            width: 100%; /* Ensures navbar spans the entire screen width */
            background-color: rgba(0, 0, 0, 0.8); /* Semi-transparent black background */
            color: white; /* Text color */
            padding: 15px 0; /* Vertical padding */
            text-align: center; /* Center-align the links */
            position: fixed; /* Fixes navbar at the top */
            top: 0; /* Aligns it at the top of the page */
            left: 0; /* Aligns it to the left */
            z-index: 1000; /* Places navbar above other elements */
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
            color: white; /* Navbar link color */
            margin: 0 20px; /* Adds space between links */
            text-decoration: none; /* Removes underline from links */
            font-weight: bold;
            font-size: 18px;
            transition: color 0.3s ease; /* Smooth transition for hover */
        }

        nav a:hover {
            color: #00bcd4; /* Color change on hover */
            text-decoration: underline; /* Underline effect on hover */
        }

        .content {
            text-align: center;
            padding: 50px 20px;
            background-color: rgba(0, 0, 0, 0.7); /* Semi-transparent background for readability */
            margin: 20px;
            border-radius: 10px;
        }

        h1, p {
            color: #fff; /* White text color for better visibility */
            margin-bottom: 20px;
        }

        h1 {
            font-size: 2.5em;
        }

        p {
            font-size: 1.2em;
            line-height: 1.5em;
        }
    </style>
</head>
<body>

    <!-- Navbar -->
    <nav class="navbar">
        <ul class="nav-links">
            <li><a href="#">Election Monitoring</a></li>
            <li><a href="SignUp">Sign Up</a></li>
        </ul>
    </nav>

    <!-- Informational Section -->
    <div class="content">
        <h1>Importance of Election Monitoring</h1>
        <p>
            Elections are the cornerstone of democracy, ensuring that every citizen has a voice in governance. 
            Monitoring elections helps maintain transparency, fairness, and trust in the electoral process.
        </p>
        <p>
            With the advancements in technology, tracking voting patterns and ensuring the integrity of 
            the process has become easier. Your participation and vigilance make democracy stronger.
        </p>
    </div>

</body>
</html>
