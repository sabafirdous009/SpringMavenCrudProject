<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ADD A STUDENT</title>
 <style type="text/css">
.errorName
{
color:red;
}
</style> 
</head>
<body>

<div><h2>FILL REGISTRATION DETAILS</h2></div>

<sf:form action="saveStudent" method="post" commandName="stu">
<label for="firstname">First NAME:</label>
<sf:input path="firstname" type="text" id="firstname"/>
<sf:errors path="firstname" cssClass="errorName"/><br><br>


<%-- <sf:errors path="name" cssClass="errorName"/> --%>
<label for="lastname">Last NAME:</label>
<sf:input path="lastname" type="text" id="lastname"/>
<sf:errors path="lastname" cssClass="errorName"/><br><br>
<%-- <sf:errors path="name" cssClass="errorName"/> --%>


<label for="course">COURSE:</label>
<sf:input path="course" type="text" id="course"/>
<sf:errors path="course" cssClass="errorName"/><br><br>
<br><br>

<label for="address">ADDRESS:</label>
<sf:input path="address" type="text" id="address"/>
<sf:errors path="address" cssClass="errorName"/><br><br>

<input type="SUBMIT" value="SAVE">

</sf:form>
</body>
</html>