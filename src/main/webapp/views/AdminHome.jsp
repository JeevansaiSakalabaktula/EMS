<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home Page</title>
    <link rel="stylesheet" href="styles.css"> <!-- Link to an external CSS file -->
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
            color: #333;
        }

        h1 {
            text-align: center;
            color: #333;
            margin-top: 20px;
            animation: fadeIn 2s;
        }

        .info-section {
            max-width: 800px;
            margin: 20px auto;
            padding: 20px;
            background: white;
            border-radius: 10px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            animation: slideIn 1s ease;
        }

        .info-section h2 {
            color: #007BFF;
            margin-bottom: 10px;
        }

        .info-section p {
            line-height: 1.6;
            margin-bottom: 10px;
            font-size: 1.1em;
            animation: grow 1.5s forwards;
        }

        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }

        @keyframes slideIn {
            from { transform: translateY(-50px); opacity: 0; }
            to { transform: translateY(0); opacity: 1; }
        }

        @keyframes grow {
            from { transform: scale(0.8); }
            to { transform: scale(1); }
        }
    </style>
</head>
<body>

    <!-- Include the navbar -->
    <jsp:include page="AdminNavbar.jsp" />


    <h1>Welcome to Our Election Monitoring  Portal!</h1>

    <div class="info-section">
        <h2>The Importance of Elections</h2>
        <p> Elections are the cornerstone of democracy, allowing citizens to voice their opinions and choose their representatives. They provide an opportunity for the public to influence government policy and hold leaders accountable.</p>
        <p>Participating in elections is vital for a healthy democracy. It ensures that the voices of all citizens are heard and that the government reflects the will of the people.</p>
        <p>By voting, you are not just choosing a candidate; you are participating in the decision-making process that affects your community, state, and nation. Your vote matters!</p>
        <p>Let's engage in discussions, educate ourselves, and make informed choices to shape a better future through our electoral process.</p>
    </div>

</body>
</html>
