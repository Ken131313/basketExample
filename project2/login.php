<?php
// Retrieve the user input from the login form
$email = $_POST["email"];
$password = $_POST["password"];

// Connect to the database
$conn = mysqli_connect("localhost", "root", "", "project2");

// Prepare the SQL statement for the customer table
$sql = "SELECT * FROM customerdetail WHERE Email = ? AND Password = ?";
$stmt = mysqli_prepare($conn, $sql);
mysqli_stmt_bind_param($stmt, "ss", $email, $password);

// Execute the query for the customer table
mysqli_stmt_execute($stmt);
$result = mysqli_stmt_get_result($stmt);

  // Check if a matching record is found in the employee table
  if ($row = mysqli_fetch_assoc($result)) {
    header("Location: productPage2.html");
  } else {
    echo "Invalid username or password. Please try again.";
  }


// Close the database connection
mysqli_close($conn);
?>