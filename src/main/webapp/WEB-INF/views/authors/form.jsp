<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head><title>Author Form</title></head>
<body>
<h2>Author Form</h2>
<form:form method="post" modelAttribute="author" action="${author.id == null ? pageContext.request.contextPath + '/authors' : pageContext.request.contextPath + '/authors/update/' + author.id}" accept-charset="UTF-8">
    <label>Name:</label>
    <form:input path="name"/><br/>
    <form:errors path="name" cssClass="error"/>
    <input type="submit" value="Save"/>
</form:form>
</body>
</html>