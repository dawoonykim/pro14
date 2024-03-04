<%@ page import="sec01.ex01.MemberBean" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    request.setCharacterEncoding("utf-8");
%>

<jsp:useBean id="memberList" class="java.util.ArrayList"/>
<jsp:useBean id="memberMap" class="java.util.HashMap"/>

<%
    memberMap.put("id","park2");
    memberMap.put("pwd","4321");
    memberMap.put("name","박지성");
    memberMap.put("email","park2@test.com");

    MemberBean bean1=new MemberBean("son", "1234","손흥민","son@test.com");
    MemberBean bean2=new MemberBean("ki", "4321","기성용","ki@test.com");
    memberList.add(bean1);
    memberList.add(bean2);

    memberMap.put("memberList",memberList);
%>

<c:set var="memberList" value="${memberMap.memberList}"/>
<html>
<head>
    <title>회원 정보 출력창</title>
</head>
<body>
<table border="1" align="center">
    <tr align="center" bgcolor="#99ccff">
        <td width="7%">아이디</td>
        <td width="7%">비밀번호</td>
        <td width="7%">이름</td>
        <td width="7%">이메일</td>
    </tr>

    <tr align="center">
        <td>${memberMap.id}</td>
        <td>${memberMap.pwd}</td>
        <td>${memberMap.name}</td>
        <td>${memberMap.email}</td>
    </tr>

    <tr align="center">
        <td>${memberList[0].id}</td>
        <td>${memberList[0].pwd}</td>
        <td>${memberList[0].name}</td>
        <td>${memberList[0].email}</td>
    </tr>

    <tr align="center">
        <td>${memberList[1].id}</td>
        <td>${memberList[1].pwd}</td>
        <td>${memberList[1].name}</td>
        <td>${memberList[1].email}</td>
    </tr>
</table>
</body>
</html>
