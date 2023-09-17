<%-- 
    Document   : Registration.jsp
    Created on : Sep 16, 2023, 10:19:16 AM
    Author     : Subin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <!-- Bootstrap CSS -->
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
      crossorigin="anonymous"
    />

    <title>Registration</title>
    <style></style>
  </head>
  <body>
    <!-- Navbar-->
    <header class="header">
      <nav class="navbar navbar-expand-lg navbar-light py-3">
        <div class="container">
          <!-- Navbar Brand -->
          <a href="#" class="navbar-brand">
            <img
              src="https://bootstrapious.com/i/snippets/sn-registeration/logo.svg"
              alt="logo"
              width="150"
            />
          </a>
        </div>
      </nav>
    </header>

    <div class="container">
      <div class="row py-5 mt-4 align-items-center">
        <!-- For Demo Purpose -->
        <div class="col-md-5 pr-lg-5 mb-5 mb-md-0">
          <img
            src="https://bootstrapious.com/i/snippets/sn-registeration/illustration.svg"
            alt=""
            class="img-fluid mb-3 d-none d-md-block"
          />
          <h1>Create an Account</h1>
          <p class="font-italic text-muted mb-0">Enter your data.</p>
        </div>

        <!-- Registeration Form -->
        <div class="col-md-7 col-lg-6 ml-auto">
          <form action="">
            <div class="row">
              <div class="input-group col-lg-12 mb-4">
                <select
                  class="form-control custom-select bg-white border-left-0 border-md"
                  name="role"
                  id="mySelect"
                >
                  <option value="" selected>Select role</option>
                  <option value="H" onclick="hospitalClick">Hospital</option>
                  <option value="O">Organization</option>
                  <option value="I">Individual</option>
                </select>
              </div>

              <!-- Hidden input field -->
  
              <div  id="licenseNoInput" class="col-md-12" style="display: none;">
                <label for="inputName" class="form-label">License no. </label>
                <input
                  type="text"
                  class="form-control"
                  id="inputName"
                  name="license"
                />
              </div>

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

              <!-- Last Name -->
              <div class="col-md-6">
                <label for="inputPassword4" class="form-label">Phone</label>
                <input
                  type="number"
                  class="form-control"
                  id="inputPhone"
                  name="phone"
                />
              </div>
              <div class="col-md-6">
                <label for="inputEmail" class="form-label">Email</label>
                <input
                  type="email"
                  class="form-control"
                  id="inputEmail"
                  name="email"
                />
              </div>

              <div class="col-md-12"  id="addressInput" style="display: none;">
                <label for="inputAddress" class="form-label">Address</label>
                <input
                  type="text"
                  class="form-control"
                  id="inputAddress"
                  name="address"
                />
              </div>

              <div class="col-md-12">
                <label for="inputAddress" class="form-label">Password</label>
                <input
                  type="password"
                  class="form-control"
                  id="inputAddress"
                  name="password"
                />
              </div>

              <div class="mb-3">
                <label for="formFile" class="form-label">Upload photo</label>
                <input
                  class="form-control"
                  type="file"
                  id="formFile"
                  name="photo"
                />
              </div>

              <!-- Button to trigger the modal -->
              <button
                type="button"
                class="btn btn-primary"
                data-bs-toggle="modal"
                data-bs-target="#myModal"
              >
                Create an account
              </button>

              <!-- Already Registered -->
              <div class="text-center w-auto">
                <p class="text-muted font-weight-bold">
                  Already Registered?
                  <a href="#" class="text-primary ml-2">Login</a>
                </p>
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>

    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
      crossorigin="anonymous"
    ></script>
    <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.min.js"></script>
    <script>
      // Select the <select> element
        const selectElement = document.getElementById('mySelect');
 
        // Select the License No and Address fields
        const licenseNoInput = document.getElementById('licenseNoInput');
        const addressInput = document.getElementById('addressInput');

        // Add an event listener to detect changes in the select element
        selectElement.addEventListener('change', function() {
            // Check if the selected option is 'H' (Hospital) or 'O' (Other)
            if (this.value === 'H' || this.value === 'O') {
                // Show the License No and Address fields
                licenseNoInput.style.display = 'block';
                addressInput.style.display = 'block';
            } else {
                // Hide the License No and Address fields for other options
                licenseNoInput.style.display = 'none';
                addressInput.style.display = 'none';
            }
        });
    </script>
  </body>
</html>
