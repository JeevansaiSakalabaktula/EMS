<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Voting Management</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            padding-top: 70px; /* Adjusted for fixed navbar */
            background-color: #f4f4f9; /* Light gray background */
        }

        nav {
            width: 100%; /* Ensures navbar spans the entire screen width */
            background-color: #333; /* Background color */
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

        .form-container {
            max-width: 600px;
            margin: 0 auto; /* Centers the form horizontally */
            padding: 30px;
            background: white;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            margin-top: 50px; /* Adds spacing below the navbar */
        }

        h1 {
            text-align: center;
            margin-bottom: 20px;
            color: #333;
        }

        form {
            display: flex;
            flex-direction: column;
        }

        label {
            margin-bottom: 5px;
            font-weight: bold;
        }

        input[type="text"],
        input[type="number"] {
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 16px;
        }

        button {
            padding: 10px 15px;
            border: none;
            background-color: #333;
            color: white;
            font-size: 16px;
            border-radius: 4px;
            cursor: pointer;
        }

        button:hover {
            background-color: #00bcd4; /* Button hover effect */
        }
    </style>
</head>
<body>

   <jsp:include page="AdminNavbar.jsp" />

    <!-- Form Section -->
    <div class="form-container">
        <h1>Manage Voting Data</h1>
        <form action="voting" method="POST">
            <label for="place">Place</label>
            <input type="text" id="place" name="place" placeholder="Enter Place" required>

            <label for="totalVotes">Total Votes</label>
            <input type="number" id="totalVotes" name="totalVotes" placeholder="Enter Total Votes" required>

            <label for="voted">Voted</label>
            <input type="number" id="voted" name="voted" placeholder="Enter Number of People Voted" required>

            <label for="yetToVote">Yet to Vote</label>
            <input type="number" id="yetToVote" name="yetToVote" placeholder="Enter Number of People Yet to Vote" required>

            <button type="submit">Submit</button>
        </form>
    </div>

</body>
</html>
