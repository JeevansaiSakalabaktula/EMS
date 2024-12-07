<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View All Reports</title>
    <!-- Inline CSS for table styling -->
    <style>
        /* General Styling for Table */
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            padding: 12px;
            text-align: left;
            border: 1px solid #ddd;
        }

        /* Header Styling */
        th {
            background-color: #4CAF50;
            color: white;
            font-weight: bold;
        }

        /* Row Hover Effect */
        tr:hover {
            background-color: #f2f2f2;
        }

        /* Message Column */
        td {
            background-color: #f9f9f9;
        }

        /* Styling for "No reports available" */
        .no-reports {
            text-align: center;
            font-style: italic;
            color: #888;
        }

        /* Adding some margin and padding */
        body {
            margin: 20px;
            font-family: Arial, sans-serif;
        }

        /* Delete Button Styling */
        .delete-button {
            background-color: red;
            color: white;
            border: none;
            padding: 5px 10px;
            cursor: pointer;
        }

        .delete-button:hover {
            background-color: darkred;
        }
    </style>
</head>
<body>

    <!-- Admin Navbar inclusion -->
    <%@ include file="AdminNavbar.jsp" %>

    <h2>All Reports</h2>

    <table>
        <thead>
            <tr>
                <th>Name</th>
                <th>Contact</th>
                <th>Place</th>
                <th>Message</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <!-- Check if reports are available -->
            <c:if test="${empty reports}">
                <tr>
                    <td colspan="5" class="no-reports">No reports available</td>
                </tr>
            </c:if>

            <!-- Loop through the list of reports -->
            <c:forEach var="report" items="${reports}">
                <tr>
                    <td>${report.name}</td>
                    <td>${report.contact}</td>
                    <td>${report.place}</td>
                    <td>${report.message}</td>
                    <td>
                        <!-- Form to delete the report -->
                        <form action="/deleteReport" method="post" onsubmit="return confirm('Are you sure you want to delete this report?')">
                            <input type="hidden" name="reportId" value="${report.id}"> <!-- Pass the report ID -->
                            <button type="submit" class="delete-button">Completed</button>
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

</body>
</html>
