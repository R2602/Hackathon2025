<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Food Donation</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Antic+Didone">
  	<script src="https://cdn.tailwindcss.com"></script>
    
    
</head>
<body>
      <jsp:include page="navbar.jsp" />
		<div class="relative">
  			<img src="img/home-page-img.png" alt="Your Image" class="w-full h-auto">
			<div class="absolute top-40 left-24 flex items-left justify-left">
    			<div class=" bg-opacity-50 text-white p-4">
    				<p class="text-8xl font-bold p-2 text-emerald-700">Give a Little,</p>
    				<p class="text-8xl font-bold p-2 text-emerald-700">Help a lot</p>
    				<p class = "text-8lg font-semiblod p-2 text-gray-500"> This web site connects food donors with those in need,<br> allowing surplus food to be easily donated in a few simple steps,<br> reducing food waste and helping the community.</p>
    			</div>
  			</div>
		</div>
		<div>
		<jsp:include page="home-page-2.jsp" />
		</div>	
		<div>
		<jsp:include page="home-page-3.jsp" />
		</div>	
		<div>
		<jsp:include page="footer.jsp" />
		</div>	
	</body>
</html>