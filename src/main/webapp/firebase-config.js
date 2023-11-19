/**
 * 
 */
const firebaseConfig = {
     apiKey: "AIzaSyD9uwqOG55DDRnCT4qKClj_0r9Gpy1q3aE",
    authDomain: "donation-site-750dd.firebaseapp.com",
    databaseURL: "https://donation-site-750dd-default-rtdb.firebaseio.com",
    projectId: "donation-site-750dd",
    storageBucket: "donation-site-750dd.appspot.com",
    messagingSenderId: "933190982092",
    appId: "1:933190982092:web:638498e4ca076a91fce569",
    measurementId: "G-XE3L0WM1J3"
    };

// initialize firebase
firebase.initializeApp(firebaseConfig);

// reference your database
var contactFormDB = firebase.database().ref("form");

document.getElementById("form").addEventListener("submit", submitForm);

function submitForm(e) {
	
  e.preventDefault();

  var name = getElementVal("name");
  var number = getElementVal("number");
  var organization = getElementVal("nameorg");
  var occasion = getElementVal("occasion");
  var food = getElementVal("food");
  var peopleCount = getElementVal("peopleCount");
  var location = getElementVal("location");
  var perishableYes = getElementVal("perishableYes");

  saveMessages(name, number, organization, occasion, food, peopleCount, location, perishableYes);

  //   enable alert
  document.querySelector(".alert").style.display = "block";

  //   remove the alert
  setTimeout(() => {
    document.querySelector(".alert").style.display = "none";
  }, 3000);

  //   reset the form
  document.getElementById("contactForm").reset();
}

const saveMessages = (name, number, organization, occasion, food, peopleCount, location, perishableYes) => {
  var newContactForm = contactFormDB.push();

  newContactForm.set({
    name: name,
    number: number,
    organization:organization,
    occasion:occasion,
    food:food,
    peopleCount:peopleCount,
    location:location,
    perishableYes:perishableYes,
   
  });
};

const getElementVal = (id) => {
  return document.getElementById(id).value;
};