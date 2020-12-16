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
    
    <title>Shopping Cart | Login Page</title>
    </head>
    <body>
        
        <%@include file="components/navbar.jsp" %>
        
        <div class="container">
            <div class="row">
                <div class="col-md-6 offset-md-3">
                    <div class="card mt-3">
                        <div class="card-header custom-bg text-white text-center">
                            <h3> Login Here </h3>
                        </div>
                        <div class="card-body">
                            <form action="LoginServlet" method="post">
                                <div class="form-group">
                                  <label for="name">User Name</label>
                                  <input name="user_name" type="text" class="form-control" id="name" aria-describedby="emailHelp" placeholder="Enter here">
                                </div>
                                <div class="form-group">
                                  <label for="password">Password</label>
                                  <input name="user_password" type="password" class="form-control" id="password" aria-describedby="emailHelp" placeholder="Enter here">
                                </div>
                                
                                <div class="container text-center">
                                      <button type="submit" class="btn btn-primary custom-bg">Login</button>
                                      <br> <br>
                                      Don't have an account? <a href="register.jsp">Register Here!</a>
                                </div>
                            </form>    
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