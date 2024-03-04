<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="sec01.ex03.MemberBean, java.util.*" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

    <jsp:useBean id="mList" class="java.util.ArrayList"></jsp:useBean>
    <jsp:useBean id="hashMap1" class="java.util.HashMap"></jsp:useBean>
    <c:set var="mList" value="${mList}"></c:set>
    <c:set var="hashMap" value="${hashMap}"></c:set>
    <c:set var="id1" value="hong" scope="page"></c:set>
    <c:set var="id2" value="홍길동" scope="page"></c:set>

    <%
        hashMap1.put("id","hong1");
    %>

    <%
        MemberBean member1=new MemberBean("son","1234","손흥민","son@naver.net");
        MemberBean member2=new MemberBean("lee","1234","이강인","lee@google.com");
        mList.add(member1);
        mList.add(member2);
        HashMap hashMap=new HashMap();
        hashMap.put("mList",mList);

    %>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
${id1 }<br>
${id2 }

<hr><hr>

${mList}

<hr><hr>

${mList[0].id}${mList[0].pwd}${mList[0].name}${mList[0].email}
${mList[1].id}${mList[1].pwd}${mList[1].name}${mList[1].email}

<hr><hr>

${hashMap.mList[0].getId()}
</body>

</html>