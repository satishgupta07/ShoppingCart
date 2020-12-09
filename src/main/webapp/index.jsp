<%-- 
    Document   : index
    Created on : 09-Dec-2020, 11:24:57 PM
    Author     : satishkumar06
--%>

<%@page import="com.satishkrgupta.shopingcart.helper.FactoryProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <h1>Creating Session Factory object</h1>
        
        <% 
            out.println(FactoryProvider.getFactory());
        %>
    </body>
</html>
