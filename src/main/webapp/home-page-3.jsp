<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Four Cards Example with Transition</title>
    <!-- Include Tailwind CSS -->
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
    <style>
        .card {
            transition: transform 0.3s ease-in-out, z-index 0.3s ease-in-out;
        }

        .card:hover {
            transform: scale(1.05);
            z-index: 1;
        }
    </style>
</head>
<body>
<div class="bg-blue-300 p-20">
	<div class="mx-auto max-w-screen-sm text-center lg:mb-16 mb-8">
          <h2 class="mb-4 text-6xl lg:text-6xl tracking-tight font-extrabold text-emerald-700 dark:text-emerald-700">The Solution</h2>
     </div>
       
    <div class="flex justify-center space-x-4">

        <!-- Card 1 -->
        <div class="w-1/4 bg-white rounded-lg p-4 shadow-md card relative">
            <img src="img/card1.jpg" alt="Card 1" class="w-full h-full object-cover mb-4 rounded">
            <h2 class="text-xl font-bold mb-2 text-center">Click Donate Button</h2>
        </div>

        <!-- Card 2 -->
        <div class="w-1/4 bg-white rounded-lg p-4 shadow-md card relative">
            <img src="img/card2.jpg" alt="Card 2" class="w-full h-full object-cover mb-4 rounded">
            <h2 class="text-xl font-bold mb-2 text-center">Fill the Form</h2>
        </div>

        <!-- Card 3 -->
        <div class="w-1/4 bg-white rounded-lg p-4 shadow-md card relative">
            <img src="img/card3.jpg" alt="Card 3" class="w-full h-full object-cover mb-4 rounded">
            <h2 class="text-xl font-bold mb-2 text-center">Volunteer will check</h2>
        </div>

        <!-- Card 4 -->
        <div class="w-1/4 bg-white rounded-lg p-4 shadow-md card relative">
            <img src="img/card4.jpg" alt="Card 4" class="w-full h-full object-cover mb-4 rounded">
            <h2 class="text-xl font-bold mb-2 text-center">The Food will be Donated</h2>
        </div>

    </div>
</div>
</body>
</html>
