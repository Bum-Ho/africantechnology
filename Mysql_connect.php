<html>
<body>
<?php

//variables declaration
	 $host = "localhost";
	 $dbUsername = "root";
	 $dbPassword = "";
	 $dbname = "africantech";

	 //creating the connection
	 $conn = new mysqli ($host, $dbUsername, $dbPassword, $dbname);
	 
	 // Checking the connection
	 if ($conn->connect_error) {
         die("Could not connect to Mysql database: " . $conn->connect_error);
        }
        echo "Connection is successful";	 
 ?> 
</body>
</html>