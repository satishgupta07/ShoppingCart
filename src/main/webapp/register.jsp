<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
    <link rel="stylesheet" href="css/style.css">
    
    <title>Shopping Cart | About Page</title>
    </head>
    <body>
        
        <%@include file="components/navbar.jsp" %>
        
        <div class="row mt-5">
            <div class="col-md-4 offset-md-4">
                <div class="card">
                    <div class="card-body px-5">
                        <div class="text-center">
                            <i class="fa fa-user-plus" style="font-size:36px"></i>
                            <h3 class="text-center mt-2 mb-3">Sign up here !!</h3>
                        </div>
                       <form>
                         <div class="form-group">
                           <label for="name">User Name</label>
                           <input type="text" class="form-control" id="name" aria-describedby="emailHelp" placeholder="Enter here">
                         </div>
                         <div class="form-group">
                           <label for="email">Email ID</label>
                           <input type="email" class="form-control" id="email" aria-describedby="emailHelp" placeholder="Enter here">
                         </div>
                         <div class="form-group">
                           <label for="password">Password</label>
                           <input type="password" class="form-control" id="password" aria-describedby="emailHelp" placeholder="Enter here">
                         </div>
                         <div class="form-group">
                           <label for="phone">Phone Number</label>
                           <input type="number" class="form-control" id="phone" aria-describedby="emailHelp" placeholder="Enter here">
                         </div>
                         <div class="form-group">
                           <label for="address">Address</label>
                           <textarea style="height: 150px" class="form-control" placeholder="Enter your address"></textarea>
                         </div>

                       <div class="container text-center">
                           <button class="btn btn-outline-success">Register</button>
                           <button class="btn btn-outline-warning">Reset</button>
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