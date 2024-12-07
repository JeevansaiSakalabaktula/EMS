<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>All Users</title>
    <style>
        table {
            width: 60%;
            margin: 20px auto;
            border-collapse: collapse;
        }

        table, th, td {
            border: 1px solid black;
        }

        th, td {
            padding: 10px;
            text-align: left;
        }

        th {
            background-color: #f4f4f4;
        }

        .delete-button {
            color: white;
            background-color: red;
            border: none;
            padding: 5px 10px;
            cursor: pointer;
            border-radius: 3px;
        }

        .delete-button:hover {
            background-color: darkred;
        }
    </style>
    <script type="text/javascript">
        function confirmDelete(event) {
            // Display confirmation dialog
            var confirmAction = confirm("Are you sure you want to delete this user?");
            if (!confirmAction) {
                event.preventDefault(); // Prevent form submission if the user clicks "Cancel"
            }
        }
    </script>
</head>
<body>
<jsp:include page="AdminNavbar.jsp" />
    <h2 style="text-align: center;">All Users</h2>
    <table>
        <tr>
            <th>Username</th>
            <th>Email</th>
            <th>Action</th>
        </tr>
        <c:forEach var="user" items="${users}">
            <tr>
                <td>${user.username}</td>
                <td>${user.email}</td>
                <td>
                    <form action="/deleteUser" method="post" onsubmit="confirmDelete(event)">
                        <input type="hidden" name="username" value="${user.username}">
                        <button type="submit" class="delete-button">Delete</button>
                    </form>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
