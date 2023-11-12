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
$email = $_POST['email'];
$password = $_POST['password'];

// Add the customer details to the database
$sql = "INSERT INTO customerdetail ( email, password) VALUES ( '$email', '$password')";
if ($conn->query($sql) === TRUE) {
  echo "Customer updated successfully";
} else {
  echo "Error updating customer: " . $conn->error;
}

// Close the database connection
$conn->close();
?>
