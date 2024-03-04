<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2024-03-04
  Time: 오후 12:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    request.setAttribute("id", "hong");

    session.setAttribute("name","kim");

    application.setAttribute("email","kd@naver.com");
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:forward page="member1_02.jsp"></jsp:forward>
</body>
</html>
