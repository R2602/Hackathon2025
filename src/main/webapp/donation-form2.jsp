<!DOCTYPE html>
<html>

<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css">
    <script src="https://www.gstatic.com/firebasejs/9.6.0/firebase-app.js"></script>
    <script src="https://www.gstatic.com/firebasejs/9.6.0/firebase-database.js"></script>

</head>
<style>
        /* Hide form by default */
        .popup-form {
            display: none;
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            z-index: 1000;
        }

        /* Style for overlay background */
        .overlay {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.5);
            z-index: 999;
        }

        /* Style for form content */
        .form-content {
            text-align: center;
        }
    </style>
<body>

    <button class="bg-green-500 text-white py-2 px-4 rounded inline-block mt-8 ml" onclick="openForm()">Donate</button>
    <div class="overlay bg-white hidden text-black" id="overlay">
        <div class="popup-form bg-white rounded-lg shadow-lg" id="popupForm">
            <div class="form-content p-4">
                <form class="space-y-4" id="form">
                    <h1 class="text-2xl font-bold text-center mb-4">Raw Food Donation</h1>
                    <p>Please fill in the following information to donate surplus food.</p>

                    <div class="mb-4">
                        <input type="text" id="name" placeholder="Your name...." class="p-2 rounded-lg w-full" />
                    </div>
                    <div class="mb-4">
                        <input type="number" id="number" placeholder="Your number....." class="p-2 rounded-lg w-full" />
                    </div>

                    <div class="mb-4">
                        <label for="organization" class="block text-sm font-medium text-gray-700">Name of the Organization:</label>
                        <input type="text" id="nameorg" name="organization" required
                            class="w-full px-3 py-2 border border-gray-300 rounded focus:outline-none focus:border-green-500">
                    </div>

                    <div class="mb-4">
                        <label for="occasion" class="block text-sm font-medium text-gray-700">Occasion Type:</label>
                        <select id="occasion" name="occasion" required
                            class="w-full px-3 py-2 border border-gray-300 rounded focus:outline-none focus:border-green-500">
                            <option value="Wedding">Wedding</option>
                            <option value="Birthday">Birthday</option>
                            <option value="Corporate Event">Corporate Event</option>
                            <option value="Other">Other</option>
                        </select>
                    </div>
                    <div class="mb-4">
                        <label for="foodType" class="block text-sm font-medium text-gray-700">Type of Food:</label>
                        <input type="text" id="food" name="foodType" required
                            class="w-full px-3 py-2 border border-gray-300 rounded focus:outline-none focus:border-green-500">
                    </div>
                    <div class="mb-4">
                        <label for="peopleCount" class="block text-sm font-medium text-gray-700">Serves How Many?</label>
                        <input type="number" id="peopleCount" name="peopleCount" required
                            class="w-full px-3 py-2 border border-gray-300 rounded focus:outline-none focus:border-green-500">
                    </div>
                    <div class="mb-4">
                        <label for="location" class="block text-sm font-medium text-gray-700">Location:</label>
                        <input type="text" id="location" name="location" placeholder="Click the get location link" readonly
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
                    <button type="submit" class="bg-green-500 text-white py-2 px-4 rounded hover:bg-green-600 focus:outline-none" onclick="submitF()">Submit</button>
                    <button class="bg-green-500 text-white font-semibold py-2 px-4 rounded mt-4" onclick="closeForm()">Close Form</button>

                </form>
            </div>
        </div>
    </div>
    <script>
        function openForm() {
            document.getElementById("popupForm").style.display = "block";
            document.getElementById("overlay").style.display = "block";
        }

        function closeForm() {
            document.getElementById("popupForm").style.display = "none";
            document.getElementById("overlay").style.display = "none";
            
        }

        function submitForm() {
            alert("Form submitted!");
            closeForm();
        }
    </script>
    <script>
        function checkPerishability() {
            var perishableNo = document.getElementById("perishableNo");
            if (perishableNo.checked) {
                alert("Sorry, you cannot donate this food to the NGO as it is not perishable.");
            }
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

        function submitF() {
            var formContainer = document.querySelector('.overlay');
            formContainer.classList.add('hidden');
            alert('Thank you! Your information is submitted, and a volunteer will reach out to you.');
        }
    </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/firebase/7.14.1-0/firebase.js"></script>
    <script src="firebase-config.js"></script>
</body>

</html>
