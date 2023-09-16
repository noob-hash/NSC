<%-- 
    Document   : AppointmentList.jsp
    Created on : Sep 16, 2023, 10:19:16 AM
    Author     : Subin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Your Page Title</title>
    <!-- Include Bootstrap CSS from CDN -->
    <link
      rel="stylesheet"
      href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
    />
    <!-- Include DataTables Bootstrap CSS from CDN -->
    <link
      rel="stylesheet"
      href="https://cdn.datatables.net/1.13.6/css/dataTables.bootstrap.min.css"
    />

    <style>
      * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
      }

      body {
        font-family: poppins, "san serif";
      }

      

      ul > li > a {
        padding-inline: 10px;
      }
    </style>
  </head>
  <body>
    <nav
      class="navbar navbar-expand-lg navbar-light bg-light"
      style="
        width: 100%;
        display: flex;
        justify-content: space-between;
        align-items: center;
      "
    >
      <div class="container" 
      style="
        width: 100%;
        display: flex;
        justify-content: space-between;
        align-items: center;
      "
      >
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
          style="
        flex: 1;
        display: flex;
        flex-direction: row;
        justify-content: space-evenly;
        align-items: stretch;
      "
        >
          <ul class="navbar-nav me-auto mb-2 mb-lg-0" 
          style="
          list-style: none;
          ">
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

    <section class="container">
        
      <h2 class="mb-3">Basic example</h2>
      <table id="dtBasicExample" class="table" width="100%">
        <thead>
          <tr>
            <th class="th-sm">Hospital</th>
            <th class="th-sm">location</th>
            <th class="th-sm">Service</th>
            <th class="th-sm">Start date</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>Patan Hospital</td>
            <td>Lagankhel</td>
            <td>Edinburgh</td>
            <td>2011/04/25</td>
          </tr>
        </tbody>
        <tfoot>
          <tr>
            <th class="th-sm">Hospital</th>
            <th class="th-sm">location</th>
            <th class="th-sm">Service</th>
            <th class="th-sm">Start date</th>
          </tr>
        </tfoot>
      </table>
    </section>

    <!-- Include jQuery from CDN -->
    <script src="https://code.jquery.com/jquery-3.7.0.js"></script>
    <!-- Include DataTables jQuery from CDN -->
    <script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>
    <!-- Include DataTables Bootstrap from CDN -->
    <script src="https://cdn.datatables.net/1.13.6/js/dataTables.bootstrap.min.js"></script>
    <script>
      // new DataTable('#example');
      $(document).ready(function () {
        $("#dtBasicExample").DataTable();
        $(".dataTables_length").addClass("bs-select");
      });
    </script>
  </body>
</html>
