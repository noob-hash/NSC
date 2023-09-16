<%-- Document : Hospitaldetails.jsp Created on : Sep 16, 2023, 10:19:16 AM
Author : Subin --%> <%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Hospital Details</title>
    <!-- Bootstrap CSS -->
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
      crossorigin="anonymous"
    />
  </head>
  <body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
      <div class="container-fluid">
        <!-- logo -->
        <a class="navbar-brand" href="#">Navbar</a>
        <button
          class="navbar-toggler"
          type="button"
          data-bs-toggle="collapse"
          data-bs-target="#navbarSupportedContent"
          aria-controls="navbarSupportedContent"
          aria-expanded="false"
          aria-label="Toggle navigation"
        >
          <span class="navbar-toggler-icon"></span>
        </button>

        <!-- naglinks and button -->
        <div
          class="collapse navbar-collapse d-flex justify-content-center align-item-right"
          id="navbarSupportedContent"
        >
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
        <div style="width: 50%; margin-left: 8%; padding-inline: 40px">
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

        <!-- appointment form -->
        <div
          style="
            position: absolute;
            bottom: 5%;
            left: 50%;
            width: 90%;
            transform: translateX(-50%);
            height: 100px;
          "
        >
          <div>
            <form
              class="row d-flex align-items-end border bg-white p-3 shadow rounded"
            >
            <input type="hidden" name="hospital_id">
              <div class="form-group col-3">
                <label for="exampleInputEmail1">Date</label>
                <input
                  type="date"
                  class="form-control"
                  id="exampleInputEmail1"
                  aria-describedby="emailHelp"
                  placeholder="Enter email"
                  name="date"
                />
              </div>
              <div class="form-group col-3">
                <label for="exampleInputPassword1">Location</label>
                <input
                  type="text"
                  class="form-control"
                  id="exampleInputPassword1"
                  placeholder="Location"
                  name="location"
                />
              </div>
              <div class="form-group col-3">
                <select
                  class="select p-2 col-12 rounded form-control"
                  name="service"
                >
                  <option selected>Select Services</option>
                  <option value="m">Maternity</option>
                  <option value="H">others</option>
                </select>
              </div>

              <button type="submit" class="btn btn-primary col-3">
                Submit
              </button>
            </form>
          </div>
        </div>
      </div>
    </section>

    <!-- out specialities -->
    <section
      class="container mb-4"
      style="position: relative; margin-top: 50px"
    >
      <div class="mb-4">
        <h3>Our speciality</h3>
      </div>

      <!-- flex wrap =container to list the card -->
      <div class="flex-container d-flex justify-content-between gap-4">
        <!-- card items -->
        <div class="card p-4" style="flex: 1">
          <img
            src="https://upload.wikimedia.org/wikipedia/commons/5/53/PAHS_Official_Seal.png"
            class="card-img-top"
            alt="..."
            style="object-fit: fill"
          />
          <div class="card-body">
            <h5 class="card-title">Card title</h5>
            <p class="card-text">
              Some quick example text to build on the card title and make up the
              bulk of the card's content.
            </p>
          </div>
        </div>
        <div class="card p-4" style="flex: 1">
          <img
            src="https://upload.wikimedia.org/wikipedia/commons/5/53/PAHS_Official_Seal.png"
            class="card-img-top"
            alt="..."
            style="object-fit: fill"
          />
          <div class="card-body">
            <h5 class="card-title">Card title</h5>
            <p class="card-text">
              Some quick example text to build on the card title and make up the
              bulk of the card's content.
            </p>
          </div>
        </div>
        <div class="card p-4" style="flex: 1">
          <img
            src="https://upload.wikimedia.org/wikipedia/commons/5/53/PAHS_Official_Seal.png"
            class="card-img-top"
            alt="..."
            style="object-fit: fill"
          />
          <div class="card-body">
            <h5 class="card-title">Card title</h5>
            <p class="card-text">
              Some quick example text to build on the card title and make up the
              bulk of the card's content.
            </p>
          </div>
        </div>
        <div class="card p-4" style="flex: 1">
          <img
            src="https://upload.wikimedia.org/wikipedia/commons/5/53/PAHS_Official_Seal.png"
            class="card-img-top"
            alt="..."
            style="object-fit: fill"
          />
          <div class="card-body">
            <h5 class="card-title">Card title</h5>
            <p class="card-text">
              Some quick example text to build on the card title and make up the
              bulk of the card's content.
            </p>
          </div>
        </div>
      </div>
    </section>
  </body>
</html>
