<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>로그인 창</title>
</head>
<body>
<form action="result.jsp">
    아이디<br>
    <input type="text" name="id"><br>
    비밀번호<br>
    <input type="password" name="pwd"><br>
    <input type="submit" value="제출"><input type="reset" value="초기화">
</form>

<a href="${contextPath}/test03/memberForm.jsp">회원가입하기</a>
</body>
</html>
