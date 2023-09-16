<%-- 
    Document   : Registration.jsp
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

    <title>Registration</title>
    <style>
      
    </style>
  </head>
  <body>
    <!-- Navbar-->
<header class="header">
  <nav class="navbar navbar-expand-lg navbar-light py-3">
      <div class="container">
          <!-- Navbar Brand -->
          <a href="#" class="navbar-brand">
              <img src="https://bootstrapious.com/i/snippets/sn-registeration/logo.svg" alt="logo" width="150">
          </a>
      </div>
  </nav>
</header>  


<div class="container">
  <div class="row py-5 mt-4 align-items-center">
      <!-- For Demo Purpose -->
      <div class="col-md-5 pr-lg-5 mb-5 mb-md-0">
          <img src="https://bootstrapious.com/i/snippets/sn-registeration/illustration.svg" alt="" class="img-fluid mb-3 d-none d-md-block">
          <h1>Create an Account</h1>
          <p class="font-italic text-muted mb-0">Enter your data.</p>
          
      </div>

      <!-- Registeration Form -->
      <div class="col-md-7 col-lg-6 ml-auto">
          <form action="UserAuth?action=register">
              <div class="row">

                <div class="input-group col-lg-12 mb-4">
                     
                  <select class="form-control custom-select bg-white border-left-0 border-md" name="role">
                      <option value="" selected>Select role</option>
                      <option value="H">Hospital</option>
                      <option value="O">Organization</option>
                      <option value="I">Individual</option>
                  </select>
              </div>

                  <!-- First Name -->
                  <div class="col-md-12">
                    <label for="inputName" class="form-label">Username</label>
                    <input type="text" class="form-control" id="inputName" name="username">
                  </div>

                  <!-- Last Name -->
                  <div class="col-md-6">
                    <label for="inputPassword4" class="form-label">Phone</label>
                    <input type="number" class="form-control" id="inputPhone" name="phone">
                  </div>
                  <div class="col-md-6">
                    <label for="inputEmail" class="form-label">Email</label>
                    <input type="email" class="form-control" id="inputEmail" name="email">
                  </div>

                  <div class="col-md-12">
                    <label for="inputAddress" class="form-label">Address</label>
                    <input type="text" class="form-control" id="inputAddress" name="address">
                  </div>
        
                  <div class="col-md-12">
                    <label for="inputAddress" class="form-label">Password</label>
                    <input type="password" class="form-control" id="inputAddress" name="password">
                  </div>
        
                  <div class="mb-3">
                    <label for="formFile" class="form-label">Upload photo</label>
                    <input class="form-control" type="file" id="formFile" name="photo">
                  </div>


                  <!-- Password -->
                  <div class="col-md-12">
                    <label for="inputAddress" class="form-label">Password</label>
                    <input type="text" class="form-control" id="inputAddress" name="password">
                  </div>

                  
                  <!-- Submit Button -->
                  <div class="form-group col-lg-12 mx-auto mt-4 mb-0">
                      <a href="#" class="btn btn-primary btn-block py-2">
                          <span class="font-weight-bold">Create your account</span>
                      </a>
                  </div>

                
                  <!-- Already Registered -->
                  <div class="text-center w-auto">
                      <p class="text-muted font-weight-bold">Already Registered? <a href="#" class="text-primary ml-2">Login</a></p>
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