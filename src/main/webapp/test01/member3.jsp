<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <jsp:useBean id="m" class="sec01.ex01.MemberBean"></jsp:useBean>
    <jsp:setProperty property="*" name="m"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 출력창</title>
</head>
<body>
<table align="center" border="1">
<tr>
    <td width="20%"><b>아이디</b></td>
    <td width="20%"><b>비밀번호</b></td>
    <td width="20%"><b>이름</b></td>
    <td width="20%"><b>이메일</b></td>
    <td width="20%"><b>주소</b></td>
</tr>

<tr align="center">
    <td><%=m.getId() %></td>
    <td><%=m.getPwd() %></td>
    <td><%=m.getName() %></td>
    <td><%=m.getEmail() %></td>
</tr>

<tr align="center">
    <td>${param.id}</td>
    <td>${param.pwd}</td>
    <td>${param.name}</td>
    <td>${param.email}</td>
</tr>
</table>
</body>
</html>