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
    $conn = new mysqli($servername, $username, $password,$DATABASE);

    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }
   
    ?> 

   
    <?php
        // Customer select
        $sql = "SELECT * FROM Customer";
        $result = $conn->query($sql);

        if ($result->num_rows > 0) {
            echo "<br><br> <table border='1'>
                <tr>
                    <th>Customer Name</th>
                    <th>Customer Address</th>
                    <th>Main Telephone</th>
                    <th>Second Telephone</th>
                </tr>";  
            while($row = mysqli_fetch_array($result)){
                echo "<tr>";
                echo "<td>" . $row['Cus_name'] . "</td>";
                echo "<td>" . $row['Cus_address'] . "</td>";
                echo "<td>" . $row['Tele1'] . "</td>";
                echo "<td>" . $row['Tele2'] . "</td>";
                echo "</tr>";
            }
            echo "</table>";
        }
    ?>

    <?php
        // Pets select
        $sql = "SELECT * FROM Pets";
        $result = $conn->query($sql);

        if ($result->num_rows > 0) {
            echo "<br><br> <table border='1'>
                <tr>
                    <th>Customer Name</th>
                    <th>Pet Name</th>
                    <th>Main Telephone</th>
                    <th>Pet Color</th>
                    <th>Pet Sex</th>
                    <th>Date Of Birth</th>
                    <th>Weight</th>
                    <th>Breed</th>
                    <th>Species</th>
                </tr>";  
            while($row = mysqli_fetch_array($result)){
                echo "<tr>";
                echo "<td>" . $row['Cus_name'] . "</td>";
                echo "<td>" . $row['Pet_name'] . "</td>";
                echo "<td>" . $row['Tele1'] . "</td>";
                echo "<td>" . $row['Pet_color'] . "</td>";
                echo "<td>" . $row['Pet_sex'] . "</td>";
                echo "<td>" . $row['Dob'] . "</td>";
                echo "<td>" . $row['Weight'] . "</td>";
                echo "<td>" . $row['Breed'] . "</td>";
                echo "<td>" . $row['Species'] . "</td>";
                echo "</tr>";
            }
            echo "</table>";
        }
    ?>

    <?php
        // Customer select
        $sql = "SELECT * FROM Visits";
        $result = $conn->query($sql);

        if ($result->num_rows > 0) {
            echo "<br><br> <table border='1'>
                <tr>
                    <th>Customer Name</th>
                    <th>Pet Name</th>
                    <th>Main Telephone</th>
                    <th>Visit Time</th>
                    <th>Visit Date</th>
                    <th>Visit Reason</th>
                    <th>Payment</th>
                </tr>";  
            while($row = mysqli_fetch_array($result)){
                echo "<tr>";
                echo "<td>" . $row['Cus_name'] . "</td>";
                echo "<td>" . $row['Pet_name'] . "</td>";
                echo "<td>" . $row['Tele1'] . "</td>";
                echo "<td>" . $row['Visit_time'] . "</td>";
                echo "<td>" . $row['Visit_date'] . "</td>";
                echo "<td>" . $row['Visit_reason'] . "</td>";
                echo "<td>" . $row['Payment'] . "</td>";
                echo "</tr>";
            }
            echo "</table>";
        }
    ?>

    <?php
        // Vaccination select
        $sql = "SELECT * FROM Vaccination";
        $result = $conn->query($sql);

        if ($result->num_rows > 0) {
            echo "<br><br> <table border='1'>
                <tr>
                    <th>Vaccination Name</th>
                    <th>Vaccination Frequency</th>
                    <th>Vaccination Dosage</th>
                </tr>";  
            while($row = mysqli_fetch_array($result)){
                echo "<tr>";
                echo "<td>" . $row['Vacc_name'] . "</td>";
                echo "<td>" . $row['Vacc_freq'] . "</td>";
                echo "<td>" . $row['Vacc_dosage'] . "</td>";
                echo "</tr>";
            }
            echo "</table>";
        }
    ?>

    <?php
        // Disease select
        $sql = "SELECT * FROM Disease";
        $result = $conn->query($sql);

        if ($result->num_rows > 0) {
            echo "<br><br> <table border='1'>
                <tr>
                    <th>Disease Name</th>
                    <th>Disease Symptoms</th>
                </tr>";  
            while($row = mysqli_fetch_array($result)){
                echo "<tr>";
                echo "<td>" . $row['Disease_name'] . "</td>";
                echo "<td>" . $row['Disease_symp'] . "</td>";
                echo "</tr>";
            }
            echo "</table>";
        }
    ?>
      
    <?php
        // VacPet select
        $sql = "SELECT * FROM VacPet";
        $result = $conn->query($sql);

        if ($result->num_rows > 0) {
            echo "<br><br> <table border='1'>
                <tr>
                    <th>Main Telephone</th>
                    <th>Pet Name</th>
                    <th>Vaccination Name</th>
                    <th>Disease Name</th>
                    <th>Vaccination Date</th>
                </tr>";  
            while($row = mysqli_fetch_array($result)){
                echo "<tr>";
                echo "<td>" . $row['Tele1'] . "</td>";
                echo "<td>" . $row['Pet_name'] . "</td>";
                echo "<td>" . $row['Vacc_name'] . "</td>";
                echo "<td>" . $row['Disease_name'] . "</td>";
                echo "<td>" . $row['Vacc_date'] . "</td>";
                echo "</tr>";
            }
            echo "</table>";
        }
    ?>

    <?php
        // MedInformation select
        $sql = "SELECT * FROM MedInformation";
        $result = $conn->query($sql);

        if ($result->num_rows > 0) {
            echo "<br><br> <table border='1'>
                <tr>
                    <th>Customer Name</th>
                    <th>Pet Name</th>
                    <th>Med/SpecialFood Name</th>
                    <th>Dosage Frequency</th>
                    <th>Diagnosis</th>
                    <th>Special Instructions</th>
                    <th>Fee</th>
                </tr>";  
            while($row = mysqli_fetch_array($result)){
                echo "<tr>";
                echo "<td>" . $row['Cus_name'] . "</td>";
                echo "<td>" . $row['Pet_name'] . "</td>";
                echo "<td>" . $row['Med_SF_name'] . "</td>";
                echo "<td>" . $row['Dosage_freq'] . "</td>";
                echo "<td>" . $row['Diagnosis'] . "</td>";
                echo "<td>" . $row['Spec_instruc'] . "</td>";
                echo "<td>" . $row['Fee'] . "</td>";
                echo "</tr>";
            }
            echo "</table>";
        }
    ?>

    <?php
        // medicines select
        $sql = "SELECT * FROM medicines";
        $result = $conn->query($sql);

        if ($result->num_rows > 0) {
            echo "<br><br> <table border='1'>
                <tr>
                    <th>Medicine Name</th>
                    <th>Prescribed Dosage</th>
                </tr>";  
            while($row = mysqli_fetch_array($result)){
                echo "<tr>";
                echo "<td>" . $row['Med_name'] . "</td>";
                echo "<td>" . $row['Presc_dosage'] . "</td>";
                echo "</tr>";
            }
            echo "</table>";
        }
    ?>

    <?php
        // SpecialFood select
        $sql = "SELECT * FROM SpecialFood";
        $result = $conn->query($sql);

        if ($result->num_rows > 0) {
            echo "<br><br> <table border='1'>
                <tr>
                    <th>Special Food Name</th>
                    <th>Amount</th>
                </tr>";  
            while($row = mysqli_fetch_array($result)){
                echo "<tr>";
                echo "<td>" . $row['SF_name'] . "</td>";
                echo "<td>" . $row['Amount'] . "</td>";
                echo "</tr>";
            }
            echo "</table>";
        }
    ?>

    </body>
</html>
