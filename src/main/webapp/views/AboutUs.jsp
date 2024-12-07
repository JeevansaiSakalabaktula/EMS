<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="Navbar.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Election Polling Monitoring Importance</title>
    <link rel="stylesheet" href="styles.css">
    <style>
        /* Basic styles for the content */
        .content-section {
            padding: 20px;
            text-align: center;
            animation: fadeInUp 1.5s ease;
        }

        .highlight {
            font-weight: bold;
            color: #d9534f; /* Emphasis color */
        }

        /* Animation for content fade-in */
        @keyframes fadeInUp {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        /* Animation for highlighting points */
        .point {
            animation: pulse 2s infinite;
        }

        @keyframes pulse {
            0%, 100% { transform: scale(1); }
            50% { transform: scale(1.1); }
        }
    </style>
</head>
<body>
    <div class="content-section">
        <h1 class="point">The Importance of Monitoring Election Polling</h1>
        <p>Monitoring election polling is critical to ensure <span class="highlight">transparency</span> and 
        <span class="highlight">fairness</span> in our democratic process.</p>
        <p>It prevents issues such as fraud, and helps in maintaining public trust by ensuring that each vote is counted accurately.</p>
        <p class="point">Join us in supporting fair elections by understanding the significance of election monitoring.</p>
    </div>
</body>
</html>
