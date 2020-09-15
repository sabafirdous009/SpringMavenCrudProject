<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
   <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@include file="bootstrap.jsp" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%-- ${allData} --%>

<table border="3" style="height:50%; width:80%; ">
<tr align="center">
<th>ID</th>
<th>FIRST NAME</th>
<th>LAST NAME</th>
<th>COURSE</th>
<th>ADDRESS</th>
<th>OPERATION</th>
</tr>

<c:forEach items="${allData}" var="student">
<tr align="center">
<td>${student.id}</td>
<td>${student.firstname}</td>
<td>${student.lastname}</td>
<td>${student.course}</td>
<td>${student.address}</td>
<td>
<a href="deleteStudent?id=${student.id}" class="btn btn-primary">delete</a>&nbsp; &nbsp;
<a href="editStudent?id=${student.id}" class="btn btn-info">edit</a>
</td>

</tr>
</c:forEach> </table>

</body>
</html>