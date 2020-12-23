<%@page import="com.satishkrgupta.shopingcart.entities.Category"%>
<%@page import="com.satishkrgupta.shopingcart.dao.CategoryDao"%>
<%@page import="java.util.List"%>
<%@page import="com.satishkrgupta.shopingcart.entities.Product"%>
<%@page import="com.satishkrgupta.shopingcart.dao.ProductDao"%>
<%@page import="com.satishkrgupta.shopingcart.helper.FactoryProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.css">
    
    <title>Shopping Cart | Home Page</title>
    </head>
    <body>
        
        <%@include file="components/navbar.jsp" %>
        
        <div class="row mt-3 mx-2">
            <%
                ProductDao dao = new ProductDao(FactoryProvider.getFactory());
                List<Product> list = dao.getAllProducts();
                CategoryDao cdao = new CategoryDao(FactoryProvider.getFactory());
                List<Category> clist = cdao.getCategories();
            %>
            <!-- show categories -->
            <div class="col-md-2">
                <h1>Number of categories is <%= clist.size() %> </h1>
                   <%
                    for(Category category : clist) {
                        out.println(category.getCategoryTitle()+"<br>");
                    }
                   %>
            </div> 
            <!-- show products -->
            <div class="col-md-8">
                <h1>Number of products is <%= list.size() %> </h1>
                <%
                    for(Product product:list) {
                        out.println(product.getpName()+"<br>");
                    }
                %>
            </div> 
        </div>
        
         <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" ></script>
    <script src="js/script.js"></script>
    </body>
</html>
