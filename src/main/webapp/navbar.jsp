<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="ISO-8859-1">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css">
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Anton">
</head>

<body>

<nav class="py-4"> 
    <div class="flex flex-wrap items-center justify-between max-w-screen-xl px-4 mx-auto">
        <a href="home-page.jsp" class="flex items-center">
            <img src="img/logo.png" class="h-12 mr-3 sm:h-16" alt="Logo"> <!-- Increased the logo size to h-12 -->
            <span class="self-center font-family:Anton text-4xl font-bold whitespace-nowrap dark:text-gray-900">Donation</span> <!-- Increased font size -->
        </a>
        <div class="flex items-center lg:order-2">
            <div class="hidden mt-2 mr-4 sm:inline-block">
                <span></span>
            </div>

            <a href="donation-page.jsp"
                class="text-white bg-red-500 hover:bg-red-600 focus:ring-4 focus:ring-red-500 font-medium rounded-lg text-xl px-6 lg:px-8 py-3 lg:py-4 sm:mr-2 lg:mr-0 dark:bg-red-500 dark:hover:bg-red-600 focus:outline-none dark:focus:ring-red-600">Donate</a> <!-- Increased button size -->
            <button data-collapse-toggle="mobile-menu-2" type="button"
                class="inline-flex items-center p-2 ml-1 text-lg text-gray-500 rounded-lg lg:hidden hover:bg-gray-100 focus:outline-none focus:ring-2 focus:ring-gray-200 dark:text-gray-400 dark:hover:bg-gray-700 dark:focus:ring-gray-600"
                aria-controls="mobile-menu-2" aria-expanded="true">
                <span class="sr-only">Open main menu</span>
                <svg class="w-8 h-8" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                    <path fill-rule="evenodd"
                        d="M3 5a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zM3 10a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zM3 15a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1z"
                        clip-rule="evenodd"></path>
                </svg>
                <svg class="hidden w-8 h-8" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                    <path fill-rule="evenodd"
                        d="M4.293 4.293a1 1 0 011.414 0L10 8.586l4.293-4.293a1 1 0 111.414 1.414L11.414 10l4.293 4.293a1 1 0 01-1.414 1.414L10 11.414l-4.293 4.293a1 1 0 01-1.414-1.414L8.586 10 4.293 5.707a1 1 0 010-1.414z"
                        clip-rule="evenodd"></path>
                </svg>
            </button>
        </div>
        <div class="items-center justify-between w-full lg:flex lg:w-auto lg:order-1" id="mobile-menu-2">
            <ul class="flex flex-col mt-4 font-medium lg:flex-row lg:space-x-8 lg:mt-0">
                <li>
                    <a href="home-page.jsp"
                        class="text-2xl font:Anton block py-4 pl-4 pr-6 text-gray-900 border-b border-gray-100 hover:bg-white lg:hover:bg-transparent lg:border-0 lg:hover:text-purple-700 lg:p-0 dark:text-gray-900 lg:dark:hover:text-gray-900 dark:hover:text-gray-900 lg:dark:hover:bg-transparent dark:border-gray-200"
                        aria-current="page">Home</a>
                </li>
               
                <li>
                    <a href="impact.jsp"
                        class="text-2xl font:Anton block py-4 pl-4 pr-6 text-gray-900 border-b border-gray-100 hover:bg-white lg:hover:bg-transparent lg:border-0 lg:hover:text-purple-700 lg:p-0 dark:text-gray-900 lg:dark:hover:text-gray-900 dark:hover:text-gray-900 lg:dark:hover:bg-transparent dark:border-gray-200">
                        Impact</a>
                </li>
                
                <li>
                    <a href="Whatwedo1.jsp"
                        class="text-2xl font:Anton block py-4 pl-4 pr-6 text-gray-900 border-b border-gray-100 hover:bg-white lg:hover:bg-transparent lg:border-0 lg:hover:text-purple-700 lg:p-0 dark:text-gray-900 lg:dark:hover:text-gray-900 dark:hover:text-gray-900 lg:dark:hover:bg-transparent dark:border-gray-200">
                        What we do</a>
                </li>
               

            </ul>
        </div>
    </div>
</nav>

<script src="https://unpkg.com/flowbite@1.4.1/dist/flowbite.js"></script>

</body>

</html>
