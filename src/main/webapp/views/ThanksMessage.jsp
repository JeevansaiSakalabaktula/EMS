<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ include file="Navbar.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Thanks Page</title>
<style>
    /* Styling for the message container */
    .message-container {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        background-color: #f2f2f2;
        animation: fadeIn 2s ease-in-out;
    }
    
    /* Styling and animations for the message */
    .thanks-message {
        font-size: 2em;
        color: #4CAF50;
        text-align: center;
        font-family: Arial, sans-serif;
        animation: popIn 1s ease-in-out forwards, colorChange 5s infinite;
    }

    /* Keyframes for fade-in effect */
    @keyframes fadeIn {
        from { opacity: 0; }
        to { opacity: 1; }
    }

    /* Keyframes for pop-in effect */
    @keyframes popIn {
        0% { transform: scale(0.5); opacity: 0; }
        100% { transform: scale(1); opacity: 1; }
    }

    /* Keyframes for color changing animation */
    @keyframes colorChange {
        0% { color: #4CAF50; }
        50% { color: #2196F3; }
        100% { color: #FF5722; }
    }
</style>
</head>
<body>
    <!-- Navbar inclusion -->
    <jsp:include page="Navbar.jsp" />

    <!-- Thanks message with animations -->
    <div class="message-container">
        <div class="thanks-message">
            Thanks for reporting! <br> We appreciate your feedback.
        </div>
    </div>

</body>
</html>
