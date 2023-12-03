<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>All User list</title>
</head>
<body>
   <div align="center">
        <table border="1" cellpadding="5">
            <caption><h2>List of People</h2></caption>
            <tr>
				<th>Email</th>
                <th>First name</th>
                <th>Last name</th>
                <th>Password</th>
                <th>Quote content</th>
                <th>Quote Response</th>
                <th>Quote status</th>
                <th>Work Order Content</th>
                <th>Work Order Status</th>
                <th>Bill Content</th>
                <th>Bill Status</th>
                <th>User role</th>

            </tr>
            
                <tr style="text-align:center">
                    <td><c:out value="${users.email}" /></td>
                    <td><c:out value="${users.firstName}" /></td>
                    <td><c:out value="${users.lastName}" /></td>
                    <td><c:out value="${users.password}" /></td>
                    <td><c:out value="${users.quotes_content}" /></td>
                    <td><c:out value="${users.quotes_response}"/></td>
                    <td><c:out value="${users.quotes_status}" /></td>
                    <td><c:out value="${users.work_order_status}" /></td>
                    <td><c:out value="${users.bill_of_work_content}"/></td>
                    <td><c:out value="${users.bill_of_work_status}" /></td>
                    <td><c:out value="${users.role}" /></td>
                </tr>
            </table>
    </div>   
</body>
</html>