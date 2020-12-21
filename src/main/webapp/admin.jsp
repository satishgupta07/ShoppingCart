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
        <style>
            .admin .card {
                border: 1px solid #304ffe;
            }
            .admin .card:hover {
                background: #e2e2e2;
                cursor: pointer;
            }
        </style>
    </head>
    <body>
        
        <%@include file="components/navbar.jsp" %>
        
        <div class="container mb-3 admin">
            <div class="row mt-3">
                <div class="col-md-4">
                    <div class="card">
                        <div class="card-body text-center">
                            <div class="container">
                                <img style="max-width: 125px;" class="img-fluid" src="img/group.png" alt="users">
                            </div>
                            <h1>6235</h1>
                            <h1 class="text-uppercase text-muted">Users</h1>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">
                        <div class="card-body text-center">
                            <div class="container">
                                <img style="max-width: 125px;" class="img-fluid" src="img/list.png" alt="users">
                            </div>
                            <h1>82</h1>
                            <h1 class="text-uppercase text-muted">Categories</h1>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">
                        <div class="card-body text-center">
                            <div class="container">
                                <img style="max-width: 125px;" class="img-fluid" src="img/delivery-box.png" alt="users">
                            </div>
                            <h1>87323</h1>
                            <h1 class="text-uppercase text-muted">Products</h1>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="row mt-3">
                <div class="col-md-6">
                     <div class="card" data-toggle="modal" data-target="#addCategoryModal">
                        <div class="card-body text-center">
                            <div class="container">
                                <img style="max-width: 125px;" class="img-fluid" src="img/categories.png" alt="users">
                            </div>
                            <p class="mt-2">Click here to add new category</p>
                            <h1 class="text-uppercase text-muted">Add Category</h1>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                     <div class="card">
                        <div class="card-body text-center">
                            <div class="container">
                                <img style="max-width: 125px;" class="img-fluid" src="img/plus.png" alt="users">
                            </div>
                            <p class="mt-2">Click here to add new product</p>
                            <h1 class="text-uppercase text-muted">Add Product</h1>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        
        <!-- add category modal -->

        <!-- Modal -->
        <div class="modal fade" id="addCategoryModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
          <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
              <div class="modal-header custom-bg text-white">
                <h5 class="modal-title" id="exampleModalLabel">Fill category details</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
              <div class="modal-body">
                  <form action="#">
                      <div class="form-group">
                          <input type="text" class="form-control" name="catTitle" placeholder="Enter category title" required />
                      </div>
                       <div class="form-group">
                           <textarea style="height: 150px" class="form-control" placeholder="Enter category description" name="catDescription" required></textarea>
                      </div>
                      <div class="container text-center">
                          <button class="btn btn-outline-success">Add Category</button>
                          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                      </div>
                  </form>
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
