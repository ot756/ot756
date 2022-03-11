<html>
    <head>
        <title>Task - 5</title>
    </head>
    <body>
 
    <?php

   //CONNECT TO MYSQL
   //login to workbench and run
   //ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'root';

   $servername = "localhost:3306";
   $username = "root";
   $password = "omarsql123";
   $DATABASE = "Project_system";
   // Create connection
   $conn = new mysqli($servername, $username, $password,$DATABASE  );

   // Check connection
   if ($conn->connect_error) {
     die("Connection failed: " . $conn->connect_error);
   }
   
 ?> 
        <?php
            $sql = "SELECT * FROM Customer";
            $result = $conn->query($sql);

            if ($result->num_rows > 0) {
                echo "<table border='1'>

		            <tr>
		                <th>Customer Name</th>
		                <th>Customer Address</th>
		                <th>Customer Telephone</th>
                        <th>Customer Telephone 2</th>
		            </tr>";  

            while($row = mysqli_fetch_array($result)){

                echo "<tr>";
                echo "<td>" . $row['CName'] . "</td>";
                echo "<td>" . $row['CAddress'] . "</td>";
                echo "<td>" . $row['CTPrimary'] . "</td>";
                echo "<td>" . $row['SPrimary'] . "</td>";
                echo "</tr>";
              }
                echo "</table>";
            }

            else {
                echo "Course not found";
            }         

        ?>

        <?php
            function createTable() {
                echo "Hello world!";
            }
        ?>

    </body>
</html>