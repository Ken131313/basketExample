<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Assuming you have a database connection established
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "project2";
    $conn = mysqli_connect($servername, $username, $password, $dbname);

    // Check connection
    if (!$conn) {
        die("Connection failed: " . mysqli_connect_error());
    }

    // Retrieve user details from the form
    $firstName = $_POST['firstName'];
    $lastName = $_POST['lastName'];
    $address = $_POST['address'];

    // Insert user details into the database
    $userInsertQuery = "INSERT INTO users (first_name, last_name, address) VALUES ('$firstName', '$lastName', '$address')";
    if (mysqli_query($conn, $userInsertQuery)) {
        echo "User details inserted successfully";
    } else {
        echo "Error inserting user details: " . mysqli_error($conn);
    }

    // Retrieve dummy payment token (you would handle this differently in a real scenario)
    $token = $_POST['token'];

    // Insert payment information into the database
    $paymentInsertQuery = "INSERT INTO payments (user_id, token) VALUES (LAST_INSERT_ID(), '$token')";
    if (mysqli_query($conn, $paymentInsertQuery)) {
        echo "Payment details inserted successfully";
    } else {
        echo "Error inserting payment details: " . mysqli_error($conn);
    }

    // Close database connection
    mysqli_close($conn);
}
?>
