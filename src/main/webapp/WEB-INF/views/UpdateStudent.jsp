<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>  
<%@include file="bootstrap.jsp" %>

<!DOCTYPE html>
<html>
<head>
</head>
<body>

<div><h2>UPDATE DETAILS</h2></div>

<div class="form-group" >

<sf:form action="updateStudent" commandName="data">

<sf:input path="id" type="hidden" value="${data.id}"/>

<label for="firstname">NAME:</label>
<sf:input path="firstname"  id="firstname" value="${data.firstname}"/><br><br>

<label for="lastname">NAME:</label>
<sf:input path="lastname"  id="lastname" value="${data.lastname}"/><br><br>

<label for="course">COURSE:</label>
<sf:input path="course"  id="course" value="${data.course}"/><br><br>

<label for="address">ADDRESS:</label>
<sf:input path="address"  id="address" value="${data.address}"/><br><br>


<input type="submit" value="UPDATE" class="btn btn-warning">

</sf:form>
</div>
</body>
</html>