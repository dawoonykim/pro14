<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2024-03-04
  Time: 오후 12:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
${requestScope.id}
<hr>
${requestScope.name}
<hr>
${sessionScope.name}
<hr>
${requestScope.email}
<hr>
${sessionScope.email}
<hr>
${applicationScope.email}
</body>
</html>
