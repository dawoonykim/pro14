<%@ page import="java.lang.reflect.Member" %>
<%@ page import="sec01.ex01.MemberBean, java.util.*" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2024-03-04
  Time: 오후 12:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:useBean id="m1" class="sec01.ex01.MemberBean"></jsp:useBean>
<jsp:setProperty property="*" name="m1"/>
<jsp:useBean id="memberList" class="java.util.ArrayList"></jsp:useBean>
<jsp:useBean id="hashMap" class="java.util.HashMap"></jsp:useBean>

<%
    MemberBean bean1=new MemberBean("son", "1234","손흥민","son@naver.com");
    MemberBean bean2=new MemberBean("son", "1234","손흥민","son@naver.com");
    /*memberList.add(m1);*/
    memberList.add(bean1);
    memberList.add(bean2);

    hashMap.put("memberList",memberList);
%>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%--${hashMap}
<hr>
${hashMap.memberList}
<hr>
${hashMap.memberList[1]}--%>
<table align="center" border="1">
    <tr>
        <td width="20%"><b>아이디</b></td>
        <td width="20%"><b>비밀번호</b></td>
        <td width="20%"><b>이름</b></td>
        <td width="20%"><b>이메일</b></td>
       <%-- <td width="20%"><b>주소</b></td>--%>
    </tr>

<%--    <tr align="center">--%>
<%--        <td><%=m1.getId() %></td>--%>
<%--        <td><%=m1.getPwd() %></td>--%>
<%--        <td><%=m1.getName() %></td>--%>
<%--        <td><%=m1.getEmail() %></td>--%>
<%--    </tr>--%>

<%--    <tr align="center">--%>
<%--        <td>${param.id}</td>--%>
<%--        <td>${param.pwd}</td>--%>
<%--        <td>${param.name}</td>--%>
<%--        <td>${param.email}</td>--%>
<%--    </tr>--%>

<%--    <tr align="center">--%>
<%--        <td>${memberLists[0].id}</td>--%>
<%--        <td>${memberLists[0].pwd}</td>--%>
<%--        <td>${memberLists[0].name}</td>--%>
<%--        <td>${memberLists[0].email}</td>--%>
<%--    </tr>--%>

<%--    <tr align="center">--%>
<%--        <td>${memberLists[1].id}</td>--%>
<%--        <td>${memberLists[1].pwd}</td>--%>
<%--        <td>${memberLists[1].name}</td>--%>
<%--        <td>${memberLists[1].email}</td>--%>
<%--    </tr>--%>
    <tr align="center">
        <td>${hashMap.memberList[0].id}</td>
        <td>${hashMap.memberList[0].pwd}</td>
        <td>${hashMap.memberList[0].name}</td>
        <td>${hashMap.memberList[0].email}</td>
    </tr>
    <tr align="center">
        <td>${hashMap.memberList[1].id}</td>
        <td>${hashMap.memberList[1].pwd}</td>
        <td>${hashMap.memberList[1].name}</td>
        <td>${hashMap.memberList[1].email}</td>
    </tr>

</table>
</body>
</html>
