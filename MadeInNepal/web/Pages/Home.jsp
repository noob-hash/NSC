<%-- 
    Document   : Home.jsp
    Created on : Sep 16, 2023, 10:19:16 AM
    Author     : Subin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%-- 
    Document   : navbar.jsp
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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" >

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

    <%include file="nav.jsp"%>

    <section style="min-height: 50vh">
      <!-- flex wrapper -->
      <div
        class="container-fluid"
        style="
          position: relative;
          min-height: 70vh;
          display: flex;
          flex-direction: row;
          justify-content: space-evenly;
          align-items: center;
        "
      >
        <!-- left -->
        <div
          style="
            width: 50%;
            margin-left: 8%;
            margin-bottom: 80px;
            padding-inline: 40px;
          "
        >
          <div class="hero-section">
            <h1>
              A heritage in care. <br />
              A reputation in <br />excellence.
            </h1>
          </div>
          <span
            >Lorem ipsum dolor sit amet consectetur adipisicing elit. Earum
            error esse reprehenderit illum aut dicta sed at corporis odio
            repellat.</span
          >
          <form class="d-flex" style="margin-top: 30px;">
            <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-primary" type="submit">Search</button>
          </form>
        </div>

        <!-- right -->
        <div
          style="
            background-color: antiquewhite;
            width: 50%;
            height: 100vh;
            overflow: hidden;
          "
        >
          <img
            src="https://www.myclinic.ie/images/banner_gp.png"
            alt=""
            style="object-fit: contain"
          />
        </div>

      </div>
    </section>

    <!-- item listing -->
    <section class="container mb-4">
      <div class="mb-4">
        <h3>Available Hospital</h3>
      </div>

      <!-- flex wrap =container to list the card -->
      <div class="flex-container d-flex justify-content-between gap-4">
        
        <!-- card items -->
        <div class="card p-4" style="flex: 1;">
          <img src="https://upload.wikimedia.org/wikipedia/commons/5/53/PAHS_Official_Seal.png" class="card-img-top" alt="..." style="object-fit: fill;">
          <div class="card-body">
            <h5 class="card-title">Card title</h5>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
          </div>
     
          <div class="card-body">
            <a href="/PageController?page=HospitalDetails.jsp" class="card-link">See more</a>
          </div>
        </div>
        <div class="card p-4" style="flex: 1;">
          <img src="https://upload.wikimedia.org/wikipedia/commons/5/53/PAHS_Official_Seal.png" class="card-img-top" alt="..." style="object-fit: fill;">
          <div class="card-body">
            <h5 class="card-title">Card title</h5>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
          </div>
     
          <div class="card-body">
            <a href="/PageController?page=HospitalDetails.jsp" class="card-link">See more</a>
          </div>
        </div>
        <div class="card p-4" style="flex: 1;">
          <img src="https://upload.wikimedia.org/wikipedia/commons/5/53/PAHS_Official_Seal.png" class="card-img-top" alt="..." style="object-fit: fill;">
          <div class="card-body">
            <h5 class="card-title">Card title</h5>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
          </div>
     
          <div class="card-body">
            <a href="/PageController?page=HospitalDetails.jsp" class="card-link">See more</a>
          </div>
        </div>
        <div class="card p-4" style="flex: 1;">
          <img src="https://upload.wikimedia.org/wikipedia/commons/5/53/PAHS_Official_Seal.png" class="card-img-top" alt="..." style="object-fit: fill;">
          <div class="card-body">
            <h5 class="card-title">Card title</h5>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
          </div>
     
          <div class="card-body">
            <a href="/PageController?page=HospitalDetails.jsp" class="card-link">See more</a>
          </div>
        </div>
     </div>
      
    </section>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    -->
  </body>
</html>