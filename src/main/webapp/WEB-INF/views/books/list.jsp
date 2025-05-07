<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head><title>Books</title></head>
<body>
<h2>Books</h2>
<a href="/books/new">Add New Book</a>
<table border="1">
    <tr>
        <th>Title</th>
        <th>Authors</th>
        <th>Actions</th>
    </tr>
    <c:forEach var="book" items="${books}">
        <tr>
            <td>${book.title}</td>
            <td>
                <c:forEach var="author" items="${book.authors}">
                    ${author.name}<br/>
                </c:forEach>
            </td>
            <td><a href="/books/edit/${book.id}">Edit</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
