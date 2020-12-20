<%@page import="com.satishkrgupta.shopingcart.entities.User"%>

<% 
    User user = (User)session.getAttribute("current-user");
    if(user==null) {
        session.setAttribute("message", "You are not logged in !! Login first");
        response.sendRedirect("login.jsp");
        return;
    }
    else {
        if(user.getUserType().equals("normal")){
            session.setAttribute("message", "You are not admin !! You cannot access this page");
            response.sendRedirect("login.jsp");
            return;
        } 
    }
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="css/style.css">
        <title>Shopping Cart | Admin Page</title>
    </head>
    <body>
        
        <%@include file="components/navbar.jsp" %>
        
        <h1>This is admin pannel</h1>
        
        
         <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" ></script>
        <script src="js/script.js"></script>
    </body>
</html>
