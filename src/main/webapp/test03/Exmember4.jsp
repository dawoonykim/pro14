<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.ArrayList" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--<c:if test="true">
    <c:when test="true">하하</c:when>
</c:if>--%>

<c:if test="false">
    <c:when test="true">하하xx</c:when>
</c:if>

<c:if test="true">
    하하
</c:if>
^^
<hr>

<c:choose>
    <c:when test="true">
        호호
    </c:when>
    <c:otherwise>
        후후
    </c:otherwise>
</c:choose>

<c:choose>
    <c:when test="false">
        A
    </c:when>
    <c:when test="false">
        B
    </c:when>
    <c:otherwise>
        C
    </c:otherwise>
</c:choose>

<hr>
<hr>

<c:forEach var="i" begin="1" end="10">
    <c:out value="${i}"></c:out>
    <br>
</c:forEach>
<hr>

<%
    ArrayList arrayList=new ArrayList();
    arrayList.add(1);
    arrayList.add(2);
    arrayList.add(3);
%>
<c:set var="list" value="<%=arrayList%>"></c:set>
<c:forEach var="num" items="${list}">
    <c:out value="${num}"></c:out>
    ${num}
</c:forEach>
<hr>
<c:forTokens var="str" items="${'홍일동,홍이동,홍삼동'}" delims=",">
    <c:out value="${str}"></c:out>
</c:forTokens>

<hr>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<c:url var="url1" value="/test03/Exmember5.jsp">
    <c:param name="id" value="hong"/>
    <c:param name="pwd" value="1234"/>
    <c:param name="name" value="홍길동"/>
    <c:param name="email" value="hong1@test.com"/>
</c:url>

<a href="${url1}">회원정보 출력</a>

<c:out value="&lt," escapeXml="false"/>

</body>
</html>
