<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<!-- Include Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<title>Home Page</title>
<style type="text/css">
/* CSS for error messages */
.error {
    color: red;
    font-size: 14px;
    margin-top: 5px;
}

/* Body styles */
body {
    background: linear-gradient(175deg,#006400,white);
    text-align: center;
    justify-content: center;
    align-items: center;
    padding-top: 20px;
    margin: 0;
    display: flex;
    flex-direction: column;
    height: 100vh;
}

/* Container styles */
#div1 {
    height: 570px;
    background-color: #2F4F4F;
    color: white;
    border-radius: 10px;
    width: 500px;
    text-align: left;
    padding: 30px;
    border: 2px solid black;
    box-shadow: 9px 6px 13px black;   
}

/* Form input styles */
.form-control {
    width: 400px;
    align-items: center;
    justify-content: center;
    display: flex;
    border: 1px solid black;    
}

/* Success button styles */
.btn-success {
    background-color: #4CAF50;
}

.btn-success:hover {
    background-color: #45a049;
}

/* Error message styles */
h3 {
    color: red;
    font-weight: bold;
}
</style>
</head>
<body>
<% 
// Checking if 'count' attribute exists in request and its value is greater than 0
Integer result = (Integer)request.getAttribute("count");
if(result != null && result > 0) { %>
    <!-- If count is greater than 0, do nothing -->
<% } else { %>
    <!-- If count is not greater than 0, display error message -->
    <h3>Something error, Try With Different Email ):</h3>
<% } %>
<br>
<!-- Form container -->
<div class="mb-3">
    <div id="div1" class="mb-3">
        <!-- Student registration form -->
        <form action="newStudent" method="post" onsubmit="return validateForm()">
            <center><h1>Student Details</h1></center>
            <br>
            <label class="form-label">Enter Name</label><br>
            <!-- Name input field -->
            <input class="form-control" type="text" name="name" id="name">
            <!-- Error message for name -->
            <div id="nameError" class="error"></div>
            <br>
            <label class="form-label">Enter Email Id</label><br>
            <!-- Email input field -->
            <input class="form-control" type="email" name="email" id="email">
            <!-- Error message for email -->
            <div id="emailError" class="error"></div>
            <br>
            <label class="form-label">Enter Mobile Number</label><br>
            <!-- Mobile number input field -->
            <input class="form-control" type="text" name="contact" id="contact">
            <!-- Error message for mobile number -->
            <div id="contactError" class="error"></div>
            <br>
            <label class="form-label">Set Password</label><br>
            <!-- Password input field -->
            <input class="form-control" type="password" name="password" id="password">
            <!-- Error message for password -->
            <div id="passwordError" class="error"></div>
            <br>
            <!-- Submit button -->
            <center><input type="submit" value="Submit Details" class="btn btn-success" id="submitButton"></center>
        </form>
    </div>
</div>

<script type="text/javascript">

// JavaScript function to validate form
function validateForm() {
    var name = document.getElementById('name').value;
    var email = document.getElementById('email').value;
    var contact = document.getElementById('contact').value;
    var password = document.getElementById('password').value;
    var isValid = true;

    // Name validation
    if (!name.match(/^[A-Za-z\s]+$/)) {
        document.getElementById('nameError').innerText = "Name can only contain letters and spaces";
        isValid = false;
    } else {
        document.getElementById('nameError').innerText = "";
    }

    // Email validation
    if (!email.match(/^[^\s@]+@[^\s@]+\.[^\s@]+$/)) {
        document.getElementById('emailError').innerText = "Invalid email format";
        isValid = false;
    } else {
        document.getElementById('emailError').innerText = "";
    }

    // Contact number validation
    if (!contact.match(/^\d{10}$/)) {
        document.getElementById('contactError').innerText = "Mobile number must be 10 digits";
        isValid = false;
    } else {
        document.getElementById('contactError').innerText = "";
    }

    // Password validation
    if (password.length < 6) {
        document.getElementById('passwordError').innerText = "Password must be at least 6 characters long";
        isValid = false;
    } else {
        document.getElementById('passwordError').innerText = "";
    }

    // Enable or disable submit button based on validation
    document.getElementById('submitButton').disabled = !isValid;

    return isValid;
}


function handleInputChange() {
    validateForm(); // Validate the form when input changes
}


document.getElementById('name').addEventListener('input', handleInputChange);
document.getElementById('email').addEventListener('input', handleInputChange);
document.getElementById('contact').addEventListener('input', handleInputChange);
document.getElementById('password').addEventListener('input', handleInputChange);

</script>

</body>
</html>
