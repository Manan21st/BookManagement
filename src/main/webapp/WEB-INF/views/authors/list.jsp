<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head><title>Authors</title></head>
<body>
<h2>Authors</h2>
<a href="${pageContext.request.contextPath}/authors/new">Add New Author</a>
<table border="1">
    <tr>
        <th>Name</th>
        <th>Actions</th>
    </tr>
    <c:forEach var="author" items="${authors}">
        <tr>
            <td>${author.name}</td>
            <td><a href="${pageContext.request.contextPath}/authors/edit/${author.id}">Edit</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>