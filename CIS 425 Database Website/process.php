 <?php

if(isset($_POST["showName"])) {
  $firstName = $_POST['firstName'];
  $lastName = $_POST['lastName'];
  echo "Thank you, $firstName $lastName for joining the list!";
}

?>
