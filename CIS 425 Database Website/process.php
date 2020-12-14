 <?php

   $con = mysqli_connect("localhost", "admin_name", "password");
   if (!connect) { die('Connection Failed: ' .
     mysql_error()); { mysql_select_db("data_store", $connect);

    $user_info = "INSERT INTO table_name (username, email) VALUES ('$_POST[username]', '$_POST[email]')"; if (!mysql_query($user_info, $connect)) { die('Error: ' . mysql_error()); }

  echo "Your information was added to the database.";

  mysql_close($connect);


/*
  $servername = "localhost";
  $username = "username";
  $password = "password";
  $dbname = "myDB";

  // Create connection
  $conn = new mysqli($servername, $username, $password, $dbname);
  // Check connection
  if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
  }

  // sql to create table
  $sql = "CREATE TABLE MyGuests (
  id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  firstName VARCHAR(30) NOT NULL,
  lastName VARCHAR(30) NOT NULL,
  email VARCHAR(50),
  reg_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
  )";

  if ($conn->query($sql) === TRUE) {
    echo "Table MyGuests created successfully";
  } else {
    echo "Error creating table: " . $conn->error;
  }

  $conn->close();
  */



if(isset($_POST["submit"])) {
  $studentNumber = $_POST['studentNumber'];
  $firstName = $_POST['firstName'];
  $lastName = $_POST['lastName'];
  $phoneNumber = $_POST['phoneNumber'];
  $emailAddress = $_POST['emailAddress'];
  $gender = $_POST['subject'];
  $dateOfBirth = $_POST['dateOfBirth'];
  $classStatus = $_POST['status'];
  $gpaNum = $_POST['gpaNum'];
  $numCreditHours = $_POST['numCreditHours'];

  echo "Thank you, $firstName $lastName for applying for the scholarship! \n";

  echo "\n The information you inputted is: $studentNumber, $phoneNumber, $emailAddress, $gender, $dateOfBirth, $classStatus, $gpaNum, $numCreditHours";
}

?>
