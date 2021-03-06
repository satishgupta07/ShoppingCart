<%@page import="com.satishkrgupta.shopingcart.helper.Helper"%>
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
        <style>
            .discount-label {
                font-size: 10px!important;
                font-style: italic!important;
            }
            .product-card:hover {
                background: #e2e2e2;
                cursor: pointer;
            }
        </style>
    </head>
    <body>

        <%@include file="components/navbar.jsp" %>
        <div class="container-fluid">
            <div class="row mt-3 mx-2">
                <%                    String cat = request.getParameter("category");
                    ProductDao dao = new ProductDao(FactoryProvider.getFactory());
                    List<Product> list = null;
                    if (cat == null || cat.trim().equals("all")) {
                        list = dao.getAllProducts();
                    } else {
                        int cid = Integer.parseInt(cat.trim());
                        list = dao.getProductsById(cid);
                    }
                    CategoryDao cdao = new CategoryDao(FactoryProvider.getFactory());
                    List<Category> clist = cdao.getCategories();
                %>
                <!-- show categories -->
                <div class="col-md-2">
                    <div class="list-group mt-4">
                        <a href="index.jsp?category=all" class="list-group-item list-group-item-action active">
                            Categories
                        </a>   
                        <%
                            for (Category category : clist) {
                        %>    
                        <a href="index.jsp?category=<%= category.getCategoryId()%>" class="list-group-item list-group-item-action"><%= category.getCategoryTitle()%></a>
                        <%
                            }
                        %>
                    </div>   
                </div> 

                <!-- show products -->
                <div class="col-md-10">
                    <div class="row mt-4">
                        <div class="col-md-12">
                            <div class="card-columns">
                                <%
                                    for (Product p : list) {
                                %>
                                <div class="card product-card">
                                    <div class="container text-center">
                                        <img class="card-img-top m-2" style="max-height: 200px; max-width: 100%; width: auto;" src="img/products/<%= p.getpPhoto()%>" alt="<%= p.getpName()%>">
                                    </div>
                                    <div class="card-body">
                                        <h5 class="card-title"><%= p.getpName()%></h5>
                                        <p class="card-text"><%= Helper.get10Words(p.getpDesc())%></p>
                                    </div>
                                    <div class="card-footer text-center">
                                        <button class="btn custom-bg text-white" onclick="addToCart(<%= p.getpId() %>,'<%= p.getpName() %>',<%= p.getpPrice() %>)">Add To Cart</button>
                                        <button class="btn btn-outline-success">₹<%= p.getpPrice()%>/- <span class="text-secondary discount-label"><%= p.getpDiscount()%>% off</span></button>
                                    </div>
                                </div>

                                <%
                                    }
                                    if (list.size() == 0) {
                                        out.println("<h5>No items in this category</h5>");
                                    }
                                %>    
                            </div>
                        </div>
                    </div>    
                </div> 
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
