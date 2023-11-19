<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>

<body>
    <div class="container">
        <form id="form">
        <h1 class="text-4xl font-bold text-center">Cooked Food Donation</h1>
        <p>Please fill in the following information to donate surplus food.</p>        
        
            <div class="alert">Your message sent</div>

     
                <input type="text" id="name" placeholder="Your name...." />
            

          
                <input type="number" id="number" placeholder="Your number....." />
          

            
                <input type = "text" id="nameorg" placeholder="organization name"></input>
        
              <div>
                <label for="occasion">Occasion Type:</label>
                <select id="occasion" name="occasion" required>
                    <option value="Wedding">Wedding</option>
                    <option value="Birthday">Birthday</option>
                    <option value="Corporate Event">Corporate Event</option>
                    <option value="Other">Other</option>
                </select>
             </div>
			
			   <input type = "text" id="food" placeholder="food name"></input>
			
			<div class="mb-4">
                <label for="peopleCount" class="block text-sm font-medium text-gray-700">Serves How Many?</label>
                <input type="number" id="peopleCount" name="peopleCount" required
                    class="w-full px-3 py-2 border border-gray-300 rounded focus:outline-none focus:border-green-500">
            </div>
            
            <div class="mb-4">
                <label for="location" class="block text-sm font-medium text-gray-700">Location:</label>
                <input type="text" id="location" name="location" placeholder="Enter location" readonly
                    class="w-full px-3 py-2 border border-gray-300 rounded focus:outline-none focus:border-green-500">
            </div>
            
            <div class="mb-4">
                <label for="useCurrentLocation" class="block text-sm font-medium text-gray-700">Use Current Location:</label>
                <a href="#" onclick="getUserLocation()" class="text-blue-500">Get Current Location</a>
            </div>
            
            <div class="mb-4">
                <label for="perishable" class="block text-sm font-medium text-gray-700">Time being cooked:</label>
                <input type="radio" id="perishableYes" name="perishable" value="Yes" required
                    class="form-radio"> less than 7 hours
                <br>
                <input type="radio" id="perishableNo" name="perishable" value="No" required
                    onclick="checkPerishability()"> more than 7 hours
            </div>
            
            <div class="inputBox">
                <button type="submit">Submit</button>
            </div>
        
        </form>
    </div>
<script>
        function checkPerishability() {
            var perishableNo = document.getElementById("perishableNo");
            if (perishableNo.checked) {
                alert("Sorry, you cannot donate this food to the NGO as it is not perishable.");
            }
        }

        function openForm() {
            var formContainer = document.querySelector('.form-container');
            formContainer.classList.remove('hidden');
        }

        function closeForm() {
            var formContainer = document.querySelector('.form-container');
            formContainer.classList.add('hidden');
        }
    </script>
    <script>
        function getUserLocation() {
            if (navigator.geolocation) {
                navigator.geolocation.getCurrentPosition(updateLocation, handleLocationError);
            } else {
                alert("Geolocation is not supported by this browser.");
            }
        }

        function updateLocation(position) {
            var latitude = position.coords.latitude;
            var longitude = position.coords.longitude;
            var locationInput = document.getElementById('location');
            locationInput.value = latitude + ', ' + longitude;
        }

        function handleLocationError(error) {
            switch (error.code) {
                case error.PERMISSION_DENIED:
                    alert("User denied the request for Geolocation.");
                    break;
                case error.POSITION_UNAVAILABLE:
                    alert("Location information is unavailable.");
                    break;
                case error.TIMEOUT:
                    alert("The request to get user location timed out.");
                    break;
                case error.UNKNOWN_ERROR:
                    alert("An unknown error occurred.");
                    break;
            }
        }

        function toggleLocationInput(enable) {
            var locationInput = document.getElementById('location');
            locationInput.readOnly = enable;
        }

        function submitForm(event) {
            event.preventDefault();
            var locationInput = document.getElementById('location');
            var useCurrentLocationRadio = document.getElementById('useCurrentLocation');

            if (useCurrentLocationRadio.checked) {
                alert('Submitted location: ' + locationInput.value);
                alert('Thank you! Your information is submitted, and a volunteer will reach out to you.');
            } else {
                alert('User opted to enter location manually.');
                alert('Thank you! Your information is submitted, and a volunteer will reach out to you.');
            }
        }
    </script>
  
    <script src="https://cdnjs.cloudflare.com/ajax/libs/firebase/7.14.1-0/firebase.js"></script>
    <script src="firebase-config.js"></script>
    
</body>

</html>