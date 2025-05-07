<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head><title>Book Form</title></head>
<body>
<h2>Book Form</h2>
<form:form method="post" modelAttribute="book" action="${book.id == null ? pageContext.request.contextPath + '/books' : pageContext.request.contextPath + '/books/update/' + book.id}" accept-charset="UTF-8">
    <label>Title:</label>
    <form:input path="title"/><br/>
    <form:errors path="title" cssClass="error"/>

    <label>Authors:</label><br/>
    <c:forEach var="author" items="${authors}">
        <input type="checkbox" name="authorIds" value="${author.id}"
               <c:if test="${book.authors.contains(author)}">checked</c:if> />
        ${author.name}<br/>
    </c:forEach>

    <input type="submit" value="Save"/>
</form:form>
</body>
</html>