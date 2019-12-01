<?php 

// variables declaration
 $First_Name = filter_input(INPUT_POST, 'First_Name');
 $Last_Name = filter_input(INPUT_POST, 'Last_Name');
 $Organization = filter_input(INPUT_POST, 'Organization');
 $Code = filter_input(INPUT_POST, 'Code');
 $Tel_No = filter_input(INPUT_POST, 'Tel_No');
 $Email = filter_input(INPUT_POST, 'Email');
 
//Use of If Statement for validation of details
 if (!empty($First_Name) || !empty($Last_Name)|| !empty($Organization) 
 || !empty($Code) || !empty($Tel_No) || !empty($Email)) {
 
	 $host = "localhost";
	 $dbUsername = "root";
	 $dbPassword = "";
	 $dbname = "africantech";
	 
	 //creating the connection and ascertaining its validity
	 $conn = new mysqli ($host, $dbUsername, $dbPassword, $dbname);
	 
	 if (mysqli_connect_error()){
		 die('connect Error('.mysqli_connect_errno().')'. mysqli_connect_error());
	 }
	 else{
		 $sql = "INSERT INTO registration (First_Name, Last_Name, Organization, Code, Tel_No, Email)
          VALUES('$First_Name','$Last_Name','$Organization','$Code','$Tel_No','$Email')";
		 if (mysqli_query($conn,$sql)){
			 echo "New record is inserted successfully";
		 }
		 else{
			 echo "Error: All Fields are Required...Please insert Record!";
		 }
		 header("refresh:5; url=assignment.html");
		 $conn->close();
 }
 }
 ?> 