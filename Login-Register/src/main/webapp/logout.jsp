<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="style.css">
</head>

<body>
    <%
        // Retrieve the session object
        HttpSession curr_session = request.getSession(false);
           
           if(curr_session != null){
           curr_session.invalidate();
           response.sendRedirect("index.html");
        }
    %>


</body>


</html>