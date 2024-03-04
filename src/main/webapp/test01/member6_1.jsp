<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="m" class="sec01.ex02.MemberBean"></jsp:useBean>
<jsp:setProperty name="m" property="*"></jsp:setProperty>
<jsp:useBean id="address" class="sec01.ex02.Address"></jsp:useBean>

<jsp:setProperty name="address" property="city" value="seoul"></jsp:setProperty>
<jsp:setProperty name="address" property="zipcode" value="07564"></jsp:setProperty>
<%
    m.setAddress(address);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Title</title>
</head>
<body>
<table align="center" border="1">
    <tr>
        <td width="7%"><b>아이디</b></td>
        <td width="7%"><b>비밀번호</b></td>
        <td width="5%"><b>이름</b></td>
        <td width="5%"><b>이메일</b></td>
        <td width="5%"><b>주소</b></td>
        <td width="5%"><b>도시</b></td>
        <td width="5%"><b>우편번호</b></td>
    </tr>

    <tr align="center">
        <td><%=m.getId() %></td>
        <td><%=m.getPwd() %></td>
        <td><%=m.getName() %></td>
        <td><%=m.getEmail() %></td>
        <td><%=m.address.city %></td>
        <td><%=m.address.zipcode %></td>
    </tr>
</table>
</body>
</html>