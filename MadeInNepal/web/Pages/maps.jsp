<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%-- 
    Document   : maps.jsp
    Created on : Sep 16, 2023, 10:19:16 AM
    Author     : Subin
--%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        .map-container{
  overflow:hidden;
  padding-bottom:56.25%;
  position:relative;
  height:0;
}
.map-container iframe{
  left:0;
  top:0;
  height:100%;
  width:100%;
  position:absolute;
}
    </style>
</head>
<body>
    <!--Google map-->
<div id="map-container-google-1" class="z-depth-1-half map-container" style="height: 500px">
    <!-- <p id="receivedData"></p>
    <iframe src="https://maps.google.com/maps?q=civilhospital&t=&z=13&ie=UTF8&iwloc=&output=embed" frameborder="0"
      style="border:0" allowfullscreen></iframe> -->
      <div id="map"></div>
  </div>
  
  <!--Google Maps-->

  <script>
    // Extract data from URL query parameters
    const urlParams = new URLSearchParams(window.location.search);
    const locationName = urlParams.get('data');

    // Display the received data as a map
    if (locationName) {
        const iframe = document.createElement('iframe');
        iframe.setAttribute('width', '600');
        iframe.setAttribute('height', '450');
        iframe.setAttribute('frameborder', '0');
        iframe.setAttribute('style', 'border:0');
        iframe.setAttribute('src', `https://maps.google.com/maps?q=${encodeURIComponent(locationName)}&&t=&z=13&ie=UTF8&iwloc=&output=embed`);
        
        document.getElementById('map').appendChild(iframe);
    }
</script>
</body>
</html>