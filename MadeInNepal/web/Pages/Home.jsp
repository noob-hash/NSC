
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%-- 
    Document   : Home.jsp
    Created on : Sep 16, 2023, 10:19:16 AM
    Author     : Subin
--%>

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
    />

    <title>Home page</title>
    <style>
      * {
        padding: 0;
        margin: 0;
        box-sizing: border-box;
      }

      body {
        font-family: poppins, "san serif";
      }

      .card {
        flex: 1;
      }

      #header {
        background: url(https://images.unsplash.com/photo-1415795854641-f4a487a0fdc8?ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80)
          center center / cover no-repeat;
      }

      section {
        overflow: hidden;
        min-height: 100vh;
        display: grid;
        place-content: center;
      }









 h1 {
	 text-align: center;
	 margin-top: 2rem;
}
 p {
	 text-align: center;
	 margin-bottom: 4rem;
}
 .pricing {
	 display: flex;
	 flex-wrap: wrap;
	 justify-content: center;
}
 .pricing .plan {
	 background-color: #fff;
	 padding: 2.5rem;
	 margin: 12px;
	 border-radius: 5px;
	 text-align: center;
	 transition: 0.3s;
	 cursor: pointer;
}
 .pricing .plan h2 {
	 font-size: 22px;
	 margin-bottom: 12px;
}
 .pricing .plan .price {
	 margin-bottom: 1rem;
	 font-size: 30px;
}
 .pricing .plan ul.features {
	 list-style-type: none;
	 text-align: left;
}
 .pricing .plan ul.features li {
	 margin: 8px;
}
 .pricing .plan ul.features li .fas {
	 margin-right: 4px;
}
 .pricing .plan ul.features li .fa-check-circle {
	 color: #6ab04c;
}
 .pricing .plan ul.features li .fa-times-circle {
	 color: #eb4d4b;
}
 .pricing .plan button {
	 border: none;
	 width: 100%;
	 padding: 12px 35px;
	 margin-top: 1rem;
	 background-color: #6ab04c;
	 color: #fff;
	 border-radius: 5px;
	 cursor: pointer;
	 font-size: 16px;
}
 .pricing .plan.popular {
	 border: 2px solid #6ab04c;
	 position: relative;
	 transform: scale(1.08);
}
 .pricing .plan.popular span {
	 position: absolute;
	 top: -20px;
	 left: 50%;
	 transform: translateX(-50%);
	 background-color: #6ab04c;
	 color: #fff;
	 padding: 4px 20px;
	 font-size: 18px;
	 border-radius: 5px;
}
 .pricing .plan:hover {
	 box-shadow: 5px 7px 67px -28px rgba(0, 0, 0, 0.37);
}
 
footer {
  background: #212529;
}

.text-small {
  font-size: 0.9rem;
}

a {
  color: inherit;
  text-decoration: none;
  transition: all 0.3s;
}

a:hover, a:focus {
  text-decoration: none;
}


    </style>
  </head>
  <body>
    <%@ include file="navbar.jsp"%>

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
            <h1 style="text-align: left;">
              A heritage in care. <br />
              A reputation in <br />excellence.
            </h1>
          </div>
          <span
            >Lorem ipsum dolor sit amet consectetur adipisicing elit. Earum
            error esse reprehenderit illum aut dicta sed at corporis odio
            repellat.</span
          >
          <form action="./Map.html"  class="d-flex" style="margin-top: 30px">
            <input
              class="form-control me-2"
              type="search"
              placeholder="Search"
              name="data"
            />
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

    <section id="gallery"  style="        background-color: #f0f3f6;
    ">
 
      <h1>Feature Hospitals</h1>
      <p>
        Deploy your sites to global infrastructure in seconds. No credit card
        required
      </p>
      <div class="container">
        <div class="row">
          <div class="col-lg-3 mb-4">
            <div class="card p-3">
              <img
                src="https://upload.wikimedia.org/wikipedia/commons/5/53/PAHS_Official_Seal.png"
                alt=""
                class="card-img-top"
              />
              <div class="card-body">
                <h5 class="card-title">Patan Hospital</h5>
                <p class="card-text">
                  Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ut
                  eum similique repellat a laborum, rerum voluptates ipsam eos
                  
                </p>
                <div class="d-flex gap-2 mb-4">
                  <div class="stars-inner"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
                    <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                  </svg></div>
                  <div class="stars-inner"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
                    <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                  </svg></div>
                  <div class="stars-inner"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
                    <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                  </svg></div>
                  <div class="stars-inner"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
                    <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                  </svg></div>
              </div>
                <a href="./Hospitaldetai.html" class="btn btn-outline-primary btn-sm">See More</a>
              
              </div>
            </div>
          </div>
          <div class="col-lg-3 mb-4">
            <div class="card p-3">
              <img
                src="https://upload.wikimedia.org/wikipedia/commons/5/53/PAHS_Official_Seal.png"
                alt=""
                class="card-img-top"
              />
              <div class="card-body">
                <h5 class="card-title">Patan Hospital</h5>
                <p class="card-text">
                  Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ut
                  eum similique repellat a laborum, rerum voluptates ipsam eos
                  
                </p>
                <a href="" class="btn btn-outline-primary btn-sm">See More</a>
              
              </div>
            </div>
          </div>
          <div class="col-lg-3 mb-4">
            <div class="card p-3">
              <img
                src="https://upload.wikimedia.org/wikipedia/commons/5/53/PAHS_Official_Seal.png"
                alt=""
                class="card-img-top"
              />
              <div class="card-body">
                <h5 class="card-title">Patan Hospital</h5>
                <p class="card-text">
                  Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ut
                  eum similique repellat a laborum, rerum voluptates ipsam eos
                  
                </p>
                <a href="" class="btn btn-outline-primary btn-sm">See More</a>
              
              </div>
            </div>
          </div>
          <div class="col-lg-3 mb-4">
            <div class="card p-3">
              <img
                src="https://upload.wikimedia.org/wikipedia/commons/5/53/PAHS_Official_Seal.png"
                alt=""
                class="card-img-top"
              />
              <div class="card-body">
                <h5 class="card-title">Patan Hospital</h5>
                <p class="card-text">
                  Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ut
                  eum similique repellat a laborum, rerum voluptates ipsam eos
                  
                </p>
                <a href="" class="btn btn-outline-primary btn-sm">See More</a>
              
              </div>
            </div>
          </div>
        
        </div>
      </div>
    </section>


    <!-- Pricing plan -->
    <section>
      <h1>Choose the plan that fits for your team</h1>
    <p>
      Deploy your sites to global infrastructure in seconds. No credit card
      required
    </p>

    <div class="pricing">
      <div class="plan">
        <h2>Dev</h2>
        <div class="price">FREE</div>
        <ul class="features">
          <li><i class="fas fa-check-circle"></i> Unlimited Websites</li>
          <li><i class="fas fa-check-circle"></i> 1 User</li>
          <li><i class="fas fa-check-circle"></i> 100MB Space/website</li>
          <li><i class="fas fa-check-circle"></i> Continuous deployment</li>
          <li><i class="fas fa-times-circle"></i> No priority support</li>
        </ul>
        <button>Signup</button>
      </div>
      <div class="plan popular">
        <span>Most Popular</span>
        <h2>Pro</h2>
        <div class="price">$10/month</div>
        <ul class="features">
          <li><i class="fas fa-check-circle"></i> Unlimited Websites</li>
          <li><i class="fas fa-check-circle"></i> 5 Users</li>
          <li><i class="fas fa-check-circle"></i> 512MB Space/website</li>
          <li><i class="fas fa-check-circle"></i> Continuous deployment</li>
          <li><i class="fas fa-check-circle"></i> Email Support</li>
        </ul>
        <button>Buy Now</button>
      </div>
      <div class="plan">
        <h2>Enterprise</h2>
        <div class="price">Custom Pricing</div>
        <ul class="features">
          <li><i class="fas fa-check-circle"></i> Unlimited Websites</li>
          <li><i class="fas fa-check-circle"></i> Unlimited Users</li>
          <li><i class="fas fa-check-circle"></i> Unlimited Space/website</li>
          <li><i class="fas fa-check-circle"></i> Continuous deployment</li>
          <li><i class="fas fa-check-circle"></i> 24/7 Email support</li>
        </ul>
        <button>Contact Us</button>
      </div>
    </div>
    </section>


    <footer class="w-100 py-4 flex-shrink-0">
      <div class="container py-4">
          <div class="row gy-4 gx-5">
              <div class="col-lg-4 col-md-6">
                  <h5 class="h1 text-white">MediNepal.</h5>
                  <p class="small text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt.</p>
              </div>
              <div class="col-lg-2 col-md-6">
                  <h5 class="text-white mb-3">Quick links</h5>
                  <ul class="list-unstyled text-muted">
                      <li><a href="#">Home</a></li>
                      <li><a href="#">About</a></li>
                      <li><a href="#">Get started</a></li>
                      <li><a href="#">FAQ</a></li>
                  </ul>
              </div>
              <div class="col-lg-2 col-md-6">
                  <h5 class="text-white mb-3">Quick links</h5>
                  <ul class="list-unstyled text-muted">
                      <li><a href="#">Home</a></li>
                      <li><a href="#">About</a></li>
                      <li><a href="#">Get started</a></li>
                      <li><a href="#">FAQ</a></li>
                  </ul>
              </div>
              <div class="col-lg-4 col-md-6">
                  <h5 class="text-white mb-3">Newsletter</h5>
                  <p class="small text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt.</p>
                  <form action="#">
                      <div class="input-group mb-3">
                          <input class="form-control" type="text" placeholder="Recipient's username" aria-label="Recipient's username" aria-describedby="button-addon2">
                          <button class="btn btn-primary" id="button-addon2" type="button"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
                            <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
                          </svg></button>
                      </div>
                  </form>
              </div>
          </div>
      </div>
  </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    -->
  </body>
</html>
