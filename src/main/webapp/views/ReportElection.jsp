<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ include file="Navbar.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Report Submission</title>
    <link rel="stylesheet" href="styles.css">
    <style>
    /* Apply background image */
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-image: url('/images/ReportBackgound.jpeg'); /* Path to your background image */
        background-position: left center; /* Align the background to the left center */
        background-size: cover; /* Ensures the image covers the entire page */
        background-repeat: no-repeat; /* Prevents the image from repeating */
        height: 100vh; /* Makes the background cover the entire viewport */
        display: flex;
        justify-content: center;
        align-items: center;
    }

    /* Basic form styling */
    .form-container {
        width: 50%;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        background-color: rgba(255, 255, 255, 0.8); /* Slightly transparent background for readability */
    }

    .form-container h2 {
        text-align: center;
        margin-bottom: 20px;
    }

    .form-group {
        margin-bottom: 15px;
    }

    label {
        display: block;
        font-weight: bold;
        margin-bottom: 5px;
    }

    input[type="text"], textarea {
        width: 100%;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }

    textarea {
        resize: vertical;
        height: 100px;
    }

    /* Center the button */
    .button-container {
        text-align: center;
        margin-top: 20px;
    }

    /* Style the submit button */
    .submit-btn {
        padding: 12px 25px;
        background-color: #4CAF50;
        color: white;
        border: 2px solid #4CAF50; /* Green border */
        border-radius: 6px; /* Rounded corners */
        font-size: 16px;
        cursor: pointer;
        display: inline-block; /* Makes the button behave like an inline element */
        box-shadow: 0 4px 8px rgba(0, 128, 0, 0.2); /* Green shadow */
        transition: background-color 0.3s ease, box-shadow 0.3s ease; /* Smooth transition */
    }

    .submit-btn:hover {
        background-color: #45a049;
        box-shadow: 0 6px 12px rgba(0, 128, 0, 0.3); /* Darker shadow on hover */
    }
    </style>

</head>
<body>
    <div class="form-container">
        <h2>Submit Your Report</h2>
        <form action="/ThanksMessage" method="POST">
            <div class="form-group">
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" required>
            </div>
            <div class="form-group">
                <label for="contact">Contact:</label>
                <input type="text" id="contact" name="contact" required>
            </div>
            <div class="form-group">
                <label for="place">Place:</label>
                <input type="text" id="place" name="place" required>
            </div>
            <div class="form-group">
                <label for="message">Report Message:</label>
                <textarea id="message" name="message" required></textarea>
            </div>
            <div class="button-container">
                <button type="submit" class="submit-btn">Submit</button>
            </div>
        </form>
    </div>
</body>
</html>
