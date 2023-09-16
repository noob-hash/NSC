<%-- 
    Document   : LoginPage.jsp
    Created on : Sep 16, 2023, 10:19:16 AM
    Author     : Subin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <title>Hello, world!</title>
    <style>
      * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
      }

    </style>
  </head>
  <body>

    <nav class="navbar navbar-expand-lg navbar-light bg-light mb-3">
        <div class="container-fluid">
          <!-- logo -->
          <a class="navbar-brand " href="#">Navbar</a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
  
          <!-- naglinks and button -->
          <div class="collapse navbar-collapse d-flex justify-content-center align-item-right" id="navbarSupportedContent">
  
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="#">Home</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">Link</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">Link</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">Link</a>
              </li>
             </ul>
  
            <form class="d-flex">
            
              <button class="btn btn-success" type="submit">Login</button>
            </form>
          </div>
        </div>
      </nav>

      <div class="container">
        <div class="row py-5 mt-4 align-items-center">
          <!-- For Demo Purpose -->
          <div class="col-md-5 pr-lg-5 mb-5 mb-md-0">
            <img
              src="https://bootstrapious.com/i/snippets/sn-registeration/illustration.svg"
              alt=""
              class="img-fluid mb-3 d-none d-md-block"
            />
            <h1>Log in</h1>
            <p class="font-italic text-muted mb-0">Enter your data.</p>
          </div>
  
          <!-- Registeration Form -->
          <div class="col-md-7 col-lg-6 ml-auto">
            <form action="">
              <div class="row">
               
  
                <!-- First Name -->
                <div class="col-md-12">
                  <label for="inputName" class="form-label">Username</label>
                  <input
                    type="text"
                    class="form-control"
                    id="inputName"
                    name="username"
                  />
                </div>
  
                <div class="col-md-12 mb-4">
                  <label for="inputAddress" class="form-label">Password</label>
                  <input
                    type="password"
                    class="form-control"
                    id="inputAddress"
                    name="password"
                  />
                </div>
    
                <!-- Button to trigger the modal -->
                <button
                  type="button"
                  class="btn btn-primary"
                  data-bs-toggle="modal"
                  data-bs-target="#myModal"
                  
                >
                  Log in
                </button>
  
                <!-- Already Registered -->
                <div class="text-center w-auto">
                  <p class="text-muted font-weight-bold">
                    Haven't Registered?
                    <a href="#" class="text-primary ml-2">Sign up</a>
                  </p>
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    -->
  </body>
</html>