<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head> 
	  <meta charset="UTF-8">
	  <style>
	    /* Internal CSS styling */
	    .body1 {
	      font-family: Arial, sans-serif;
	      margin: 0;
	      padding: 0;
	      display: flex;
	      flex-direction: column;
	      align-items: center;
	      background-color: #f0f0f0;
	    }
	
	    h1 {
	      margin-top: 40px;
	      font-size: 30px;
	      color: #333;
	    }
	
	    .card-container {
			padding-top: 30px;
	      display: flex;
	      justify-content: space-between;
	      width: 80%;
	      margin-top: 20px;
	    }
	
	    .card {
	      position: relative;
	      width: 300px;
	      height: 390px;
	      background-color: #fff;
	      border-radius: 8px;
	      overflow: hidden;
	      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	      transition: transform 0.3s ease;
	      margin-right: 20px; /* Added margin between cards */
	    }
	
	    .card:last-child {
	      margin-right: 0; /* Remove right margin for the last card */
	    }
	
	    .card:hover {
	      transform: translateY(-10px);
	    }
	
	    .card-img {
	      width: 100%;
	      height: 150px;
	      object-fit: cover;
	    }
	
	    .card-content {
	      padding: 10px;
	       height: 200px; /* Set a fixed height for the content */
      overflow-y: auto;
	    }
	    .card-content::-webkit-scrollbar {
  width: 6px; /* Adjust this value to your preferred width */
}

/* Modify the scrollbar button */
.card-content::-webkit-scrollbar-thumb {
  background-color: #999; /* Change the color if needed */
  border-radius: 5px; /* Optional: Rounded corners */
}
	
	    h2 {
	      margin: 0;
	      font-size: 18px;
	    }
	
	    p {
	      margin-top: 8px;
	      font-size: 14px;
	      color: #000;
	    }
	    
	    
	  </style>
	</head>
	<body>
	      <jsp:include page="navbar.jsp" />
	<div class="body1">
	<h1><b>What we do?</b></h1>
<hr style="width: 100%; margin-top: 5px; border-color: #333;">

	
	<div class="card-container">
	  <div class="card">
	    <img src="img/surplus.jpg" alt="Image 1" class="card-img">
	    <div class="card-content">
	      <h2>Collect Surplus Food</h2>
	      <p>Collecting surplus food from various sources is a vital initiative in our mission to prevent valuable food from going to waste. We collaborate with local restaurants, event venues, and other establishments to rescue excess food that might otherwise be discarded.</p>
	      <div class="additional-content">
        <p>Once collected, the food undergoes thorough quality checks and is redistributed to shelters and food banks for distribution. We prioritize perishable items and ensure they reach those in need promptly.</p>
      </div>
      
    </div>
  </div>
	  
	  <div class="card">
	    <img src="img/img.jpg" alt="Image 2" class="card-img">
	    <div class="card-content">
	      <h2> Distribute to Those in Need</h2>
	      <p>Once we've collected surplus food, our next crucial step is to distribute it to individuals and families in need. We collaborate with local food banks, shelters, and community organizations to ensure that the collected food reaches those who require it the most.This distribution process helps us address food insecurity in our community by providing nutritious meals to those facing hunger. Our commitment to efficiently channeling this surplus food to those in need plays a significant role in reducing food waste and making a positive impact on the lives of individuals and families who rely on our support.</p>
	    </div>
	  </div>
	  
	  <div class="card">
	    <img src="img/food.jpg" alt="Image 3" class="card-img">
	    <div class="card-content">
	      <h2> Reduce Food Waste</h2>
	      <p>Our mission is driven by a commitment to reduce food waste and eliminate the unnecessary discarding of edible food. We believe that no food should go to waste when there are people in need. Through careful collection and distribution, we strive to make the most of surplus food, ensuring it finds its way to those who can benefit from it.By reducing food waste, we not only protect the environment but also contribute to addressing the pressing issue of hunger in our community. Our efforts are focused on preserving the value of food and making it available to those who need it most.</p>
	    </div>
	  </div>
	  
	  <div class="card">
	    <img src="img/hungry.jpg" alt="Image 4" class="card-img">
	    <div class="card-content">
	      <h2>Alleviate Hunger </h2>
	      <p>Our dedicated efforts are aimed at alleviating hunger within the community by ensuring that nutritious meals reach those in need. We believe that access to food is a basic human right, and no one should go to bed hungry.By distributing surplus food collected from various sources, we play a vital role in addressing food insecurity. Our focus on providing not just any food, but nutritious and balanced meals, contributes to the overall well-being of the community members we serve. Through this, we are actively working to make a difference in the fight against hunger and food waste, one meal at a time.</p>
	    </div>
	  </div>
	</div>
	</div>
	<script>
  function toggleContent(cardNumber) {
    const additionalContent = document.querySelector(`.card:nth-child(${cardNumber}) .additional-content`);
    const showMoreBtn = document.querySelector(`.card:nth-child(${cardNumber}) .show-more-btn`);

    if (additionalContent.style.display === 'none' || additionalContent.style.display === '') {
      additionalContent.style.display = 'block';
      showMoreBtn.textContent = 'Read Less';
    } else {
      additionalContent.style.display = 'none';
      showMoreBtn.textContent = 'Read More';
    }
  }
</script>
	
	</body>
	</html>
