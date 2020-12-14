 <?php

 $host = "localhost";
 $username = "root";
 $user_pass = "";
 $database_in_use = "data_store";

 $mysqli = new mysqli($host, $username, $user_pass, $database_in_use);
if ($mysqli->connect_errno) {
  echo "Oh no! Failed to connect to MySQL: (" . $mysqli->connect_errno . ") " . $mysqli->connect_error;
}
echo $mysqli->host_info . "<br> <br>";



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

//NOT WORKING FOR SOME REASON
$sql1 = "INSERT INTO student_info (studentId, firstName, lastName, phoneNumber, email, gender, dateOfBirth, classStatus, gpaNum, numCreditHours)
VALUES ('$studentNumber', '$firstName', '$lastName', '$phoneNumber', '$emailAddress', '$gender', '$dateOfBirth', '$classStatus', '$gpaNum', '$numCreditHours')";

//selecting/grabbing all data from student_info db
$sql2 = "SELECT studentId, firstName, lastName, phoneNumber, email, gender, dateOfBirth, classStatus, gpaNum, numCreditHours FROM student_info";
//$sql = "SELECT gpaNum FROM student_info WHERE studentId = 1";

//selecting info from registrar db to be able to compare with any new applicants to see eligibility
$sql_registrarInfo = "SELECT studentId, firstName, lastName, phoneNumber, email, gender, dateOfBirth, classStatus, gpaNum, numCreditHours FROM registrar_info";

//executing query statements here (INSERT first then SELECT)
$result = $mysqli->query($sql1);  //INSERT
$result2 = $mysqli->query($sql2); //SELECT
$result3 = $mysqli->query($sql_registrarInfo); //SELECT


$exists = false;
$eligibility = false;


//Comparing input info with registrar db to see if applicant exists
while($row = $result3->fetch_assoc())
{
  if ($firstName  == $row['firstName'])
  {
    echo "We matched your name in our database <br>";
    $exists = true;
    break;
  }

}

if ($exists == true) {
  if($gpaNum >= 3.2){
    if($numCreditHours >= 12){
      $eligibility = true;
    }
  }
}


if($eligibility == true && $exists == true){
  echo "Thank you for submitting your application! We have found that you exist within the database and is eligible to recieve this scholarship.<br>";
  echo "We will be sending you an email at $emailAddress regarding the results of the scholarship";
}
else if($eligibility == false && $exists == true){
  echo "Sorry! You are an ineligbile applicant. <br>";
  echo "We have sent you an email at: $emailAddress";
}
else if($exists != true){
  echo "Sorry! We did not find you in our database";
}


$mysqli->close();
  // echo "Thank you, $firstName $lastName for applying for the scholarship! <br>";

  echo "<br> <br> <br> The information you inputted is:  Student Number: $studentNumber, ". "Student Name: $firstName,". " Phone Number: $phoneNumber,".
  " Email Address: $emailAddress,". " Gender: $gender,". " Date of Birth: $dateOfBirth,".
  " Class Status: $classStatus,". " GPA: $gpaNum,". " Number of Credit Hours: $numCreditHours";

?>
