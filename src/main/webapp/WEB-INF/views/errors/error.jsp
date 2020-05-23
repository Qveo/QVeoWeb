<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>QVeo</title>
</head>
<body>
<h1>THERE IS AN ERROR</h1>
<p>Status: <c:out value="${status}"/></p>
<p>Message: <c:out value="${errorMessage}"/></p>
</body>
</html>
