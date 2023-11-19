<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
</head>

<body class="bg-white">


    <jsp:include page="navbar.jsp" />
    
    
    <div class = "bg-emerald-500 min-h-20">
            <h3 class="text-4xl font-bold mb-4 text-center p-4 text-white">Make a Donation</h3>
    		</div>	
    <div class="flex flex-col items-center justify-center pt-14 ">

        <div class="flex gap-4">
        	<!-- Cooked Food donation card  -->
 <div class="flex gap-10">
    <!-- Cooked Food donation card -->
 <div class="popup" id="cookedFoodForm">
    <div class="bg-white p-4 rounded-lg shadow-lg text-center hover:p-8">
        <h1 class="text-2xl font-semibold text-red-500 mb-4">Donate Cooked Food</h1>
        <img src="img/donation-1.png" class="mx-auto w-30 h-40 mb-8" alt="Cooked Food">
		<jsp:include page="donation-form.jsp" />
    </div>
</div>


    <!-- Raw food Donation card -->
    <div class="popup" id="rawFoodForm">
        <div class="bg-white p-4 rounded-lg shadow-lg text-center hover:p-8">
            <h2 class="text-2xl font-semibold text-red-500 mb-4">Donate Food Items</h2>
            <img src="img/donation-2.jpg" class="mx-auto  h-40 w-34 mb-8" alt="Raw Food Items">
			<jsp:include page="donation-form2.jsp" />
        </div>
    </div>
</div>
</div>
    </div>


    <script>
        function openPopup(id) {
            const popup = document.getElementById(id);
            popup.style.display = 'block';
        }

        function closePopup(id) {
            const popup = document.getElementById(id);
            popup.style display = 'none';
        }
    </script>
</body>
</html>
