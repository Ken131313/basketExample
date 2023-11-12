<?php
// Connect to the database
$servername = "localhost";
$username = "username";
$password = "password";
$dbname = "project2";
$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

// Get the form data
$name = $_POST['name'];
$email = $_POST['email'];
$message = $_POST['message'];


// Add the customer details to the database
$sql = "INSERT INTO query (name, email, message) VALUES ('$name', '$email', '$message')";
if ($conn->query($sql) === TRUE) {
    echo "<script>alert('Your query has been updated successfully');</script>";
  } else {
    echo "Error: " . $sql . "<br>" . $conn->error;
  }
  

// Close the database connection
$conn->close();
?>
