<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="Navbar.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Table with Names and Locations</title>
<style>
    table {
        border-collapse: collapse;
        width: 80%;
        margin: 20px auto;
    }
    th, td {
        border: 1px solid #ddd;
        padding: 8px;
        text-align: center;
    }
    th {
        background-color: #f2f2f2;
    }
</style>
</head>
<body>
    <h2 style="text-align: center;">Names and Locations</h2>
    <table>
        <thead>
            <tr>
                <th>S.No</th>
                <th>Name</th>
                <th>Location</th>
            </tr>
        </thead>
        <tbody>
            <%
                String[] names = {
                    "Alice", "Bob", "Charlie", "David", "Eve", "Frank", "Grace", "Hank", "Ivy", "Jack",
                    "Kathy", "Liam", "Mona", "Nancy", "Oscar", "Paul", "Quincy", "Rita", "Steve", "Tina",
                    "Uma", "Victor", "Wendy", "Xander", "Yara", "Zane", "Abby", "Ben", "Clara", "Dan",
                    "Ella", "Fred", "Gina", "Holly", "Ian", "Jane", "Kyle", "Laura", "Mark", "Nina",
                    "Olive", "Pete", "Quinn", "Rose", "Sam", "Tara", "Ursula", "Vince", "Will", "Zoe"
                };
                String[] locations = {"Visakhapatnam", "Vijayawada", "Tirupati", "Guntur", "Kurnool"};
                for (int i = 0; i < names.length; i++) {
                    String name = names[i];
                    String location = locations[i % locations.length];
            %>
            <tr>
                <td><%= i + 1 %></td>
                <td><%= name %></td>
                <td><%= location %></td>
            </tr>
            <% } %>
        </tbody>
    </table>
</body>
</html>
