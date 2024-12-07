<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            color: #333;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .contact-container {
            background: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            width: 90%;
            max-width: 600px;
            text-align: center;
        }

        h1 {
            color: #007BFF;
            margin-bottom: 20px;
        }

        p {
            font-size: 1.1em;
            margin: 10px 0;
        }
    </style>
</head>
<body>
	<jsp:include page="Navbar.jsp" />
    <div class="contact-container">
        <h1>Contact Us</h1>
        <p>If you have any questions or need assistance, please feel free to reach out to us:</p>
        <p><strong>Phone:</strong> +91 9123456789</p>
        <p><strong>Email:</strong> <a href="mailto:electionsReport@gov.in">electionsReport@gov.in</a></p>
        <p>We are here to help you Monday to Friday, 9 AM - 5 PM.</p>
    </div>

</body>
</html>
