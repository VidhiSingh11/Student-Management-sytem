<?php
include('../config/db.php');

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $firstName = $_POST['firstName'];
    $lastName = $_POST['lastName'];
    $email = $_POST['email'];
    $phoneNumber = $_POST['phoneNumber'];
    $dob = $_POST['dob'];
    $registrationDate = date("Y-m-d");

    $sql = "INSERT INTO Students (FirstName, LastName, Email, PhoneNumber, DateOfBirth, RegistrationDate)
            VALUES ('$firstName', '$lastName', '$email', '$phoneNumber', '$dob', '$registrationDate')";

    if ($conn->query($sql) === TRUE) {
        echo "New student added successfully";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }

    $conn->close();
}
?>

<form method="POST" action="">
    First Name: <input type="text" name="firstName" required><br>
    Last Name: <input type="text" name="lastName" required><br>
    Email: <input type="email" name="email" required><br>
    Phone Number: <input type="text" name="phoneNumber" required><br>
    Date of Birth: <input type="date" name="dob" required><br>
    <button type="submit">Add Student</button>
</form>
