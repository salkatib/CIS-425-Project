 <?php

 $host = "localhost";
 $username = "root";
 $user_pass = "";
 $database_in_use = "data_store";
 $database_in_use1 = "registrar_office";

 $mysqli = new mysqli($host, $username, $user_pass, $database_in_use);
if ($mysqli->connect_errno) {
  echo "Failed to connect to MySQL: (" . $mysqli->connect_errno . ") " . $mysqli->connect_error;
}
echo $mysqli->host_info . "<br>";

$sql = "SELECT studentId, firstName, lastName, phoneNumber, email, gender, dateOfBirth, classStatus, gpaNum, numCreditHours FROM student_info";
//$sql = "SELECT gpaNum FROM student_info WHERE studentId = 1";

$mysqli = new mysqli($host, $username, $user_pass, $database_in_use1);
if ($mysqli->connect_errno) {
 echo "Failed to connect to MySQL: (" . $mysqli->connect_errno . ") " . $mysqli->connect_error;
}
echo $mysqli->host_info . "<br>";

$sql3 = "SELECT firstName, lastName, dateOfBirth, classStatus, gpaNum, numCreditHours FROM registrar_office";



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
}

$sql2 = "INSERT INTO student_info (studentId, firstName, lastName, phoneNumber, email, gender, dateOfBirth, classStatus, gpaNum, numCreditHours)
VALUES ('$studentNumber', '$firstName', '$lastName', '$phoneNumber', '$emailAddress', '$gender', '$dateOfBirth', '$classStatus', '$gpaNum', '$numCreditHours')";
$result2 = $mysqli->query($sql2);
$result = $mysqli->query($sql);



if ($result->num_rows > 0) {
  // output data of each row
  while($row = $result->fetch_assoc()) {
    echo "<br>- Student ID: " . $row["studentId"]. "<br> - First Name: " . $row["firstName"]. "<br> - Last Name: " . $row["lastName"].
    "<br>- Phone Number: " . $row["phoneNumber"]. "<br>- Email: " . $row["email"]. "<br>- Gender: " . $row["gender"].
    "<br>- Date of Birth: " . $row["dateOfBirth"]. "<br>- Class Status: " . $row["classStatus"].
    "<br>- GPA: " . $row["gpaNum"]. "<br>- Number of Credit Hours: " . $row["numCreditHours"]. "<br><br>";
  }
} else {
  echo "0 results";
}
$mysqli->close();

  echo "Thank you, $firstName $lastName for applying for the scholarship! <br>";

  echo "<br> The information you inputted is:  Student Number: $studentNumber,". " Phone Number: $phoneNumber,".
  " Email Address: $emailAddress,". " Gender: $gender,". " Date of Birth: $dateOfBirth,".
  " Class Status: $classStatus,". " GPA: $gpaNum,". " Number of Credit Hours: $numCreditHours";

?>
