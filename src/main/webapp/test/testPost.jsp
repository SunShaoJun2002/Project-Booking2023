<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page language="java" import="SE.pojo.Description" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>
<body>

<%
    Description description = (Description)request.getAttribute("description");
%>

<form action="/SoftwareEngineering_war_exploded/test" method="GET">
    <div>
        <button type="submit" style="height:30px;width:60px;"></button>
    </div>
</form>

<div>
    <%
        if(description == null){
            out.print("内容为空");
        }else{
            out.print(description.getDescription());
        }
    %>
</div>

</body>
</html>