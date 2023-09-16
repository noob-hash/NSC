<%-- 
    Document   : Home.jsp
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

    <title>Home page</title>
    <style>
      * {
        padding: 0;
        margin: 0;
        box-sizing: border-box;
      }

      .card {
        flex: 1;
      }


    </style>
  </head>
  <body>

    <nav class="navbar navbar-expand-lg navbar-light bg-light ">
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

    <section class="mb-5 d-flex justify-content-between" style="min-height: 80vh; width: 100&">
      <!-- Leeft section -->
      <div class="flex-1" style="height: 100vh; width: 100%;">
          
        
        <div class="container">
          <div class="row" style="height: 100vh;">
            <!-- left section -->
            <div class=" bg-success col-md-6 d-flex flex-column justify-content-center align-item-center">
              <h3 >Welcome to the world of coding!</h3><br/>
              <form action="/search" method="get">
                <div class="input-group mb-3">
                  <input type="text" class="form-control" placeholder="Search" name="q">
                  <button class="btn btn-primary" type="submit">Search</button>
                </div>
              </form>
            </div>

            <!-- right section -->
          <div class="col-md-6">
                <div class="input-group mb-3">
                  image goes here
                </div>
            </div>
          </div>
      </div> 

    </section>

    <!-- item listing -->
    <section class="container">
      <div class="mb-4">
        <h2>Available Equipments</h2>
      </div>

      <!-- flex wrap =container to list the card -->
      <div class="flex-container d-flex justify-content-between gap-4">
        
        <!-- card items -->
        <div class="card" style="flex: 1;">
          <img src="https://m.media-amazon.com/images/I/81ny2C5hUGL.jpg" class="card-img-top" alt="..." style="object-fit: fill;">
          <div class="card-body">
            <h5 class="card-title">Card title</h5>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
          </div>
     
          <div class="card-body">
            <a href="#" class="card-link">Card link</a>
            <a href="#" class="card-link">Another link</a>
          </div>
        </div>
        <div class="card" style="flex: 1;">
          <img src="https://m.media-amazon.com/images/I/81ny2C5hUGL.jpg" class="card-img-top" alt="..." style="object-fit: fill;">
          <div class="card-body">
            <h5 class="card-title">Card title</h5>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
          </div>
     
          <div class="card-body">
            <a href="#" class="card-link">Card link</a>
            <a href="#" class="card-link">Another link</a>
          </div>
        </div>
        <div class="card" style="flex: 1;">
          <img src="https://m.media-amazon.com/images/I/81ny2C5hUGL.jpg" class="card-img-top" alt="..." style="object-fit: fill;">
          <div class="card-body">
            <h5 class="card-title">Card title</h5>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
          </div>
     
          <div class="card-body">
            <a href="#" class="card-link">Card link</a>
            <a href="#" class="card-link">Another link</a>
          </div>
        </div>
        <div class="card" style="flex: 1;">
          <img src="https://m.media-amazon.com/images/I/81ny2C5hUGL.jpg" class="card-img-top" alt="..." style="object-fit: fill;">
          <div class="card-body">
            <h5 class="card-title">Card title</h5>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
          </div>
     
          <div class="card-body">
            <a href="#" class="card-link">Card link</a>
            <a href="#" class="card-link">Another link</a>
          </div>
        </div>

        
        
      </div>
      
    </section>
    

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    -->
  </body>
</html>