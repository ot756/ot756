<html>
    <head>
        <title>Task - 5</title>

        <style>
            
            * {
                font-family:'Calibri', sans-serif;
            }

            h1, h2 {
                margin-top: 1%;
                margin-left: 2%;
            }

            table {
                margin-left: 2%;
            }

            table, th, td {
                border-collapse: collapse;
            }

            th {
                padding: 5px;
                background-color: #0B0B45;
                color: #fff;
            }

            td {
                background-color: #F5F5F5;
            }

        </style>
    </head>
    <body>
 
    <?php

    $conn = new mysqli("localhost:3306", "root", "omarsql123", "project_115");

    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }
   
    ?> 

    <h1>Select * queries for all tables</h1>
   
    <?php

        // Customer select
        $sql = "SELECT * FROM Customer";
        $result = $conn->query($sql);

        if ($result->num_rows > 0) {

            echo "<br> <table border='1'>
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

    <br>
    <h2>Pets Table</h2>

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

    <br>
    <h2>Customer Table</h2>

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

    <br>
    <h2>Vaccination Table</h2>

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

    <br>
    <h2>Disease Table</h2>

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

    <br>
    <h2>Vaccinated_pet Table</h2>

    <?php
        // Vaccinated_pet select
        $sql = "SELECT * FROM Vaccinated_pet";
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

    <br>
    <h2>Med_info Table</h2>

    <?php
        // Med_info select
        $sql = "SELECT * FROM Med_info";
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

    <br>
    <h2>Medicine Table</h2>

    <?php
        //Medicine select
        $sql = "SELECT * FROM Medicine";
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

    <br>
    <h2>SpecialFood Table</h2>

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

    <br><br>
    <h1>Select queries from task - 4</h1>

    <br>
    <h2>First select Table</h2>

    <?php
        // First select
        $sql = "SELECT DISTINCT C.Cus_name, VP.Tele1, VP.Pet_name, VP.Disease_name, 
        VP.Vacc_name, VP.Vacc_date FROM Vaccinated_pet AS VP, Pets AS P, Customer AS C  
        WHERE P.Pet_name=VP.Pet_name AND VP.Tele1=P.Tele1 AND P.Tele1=C.Tele1;";
        $result = $conn->query($sql);

        if ($result->num_rows > 0) {
            echo "<br><br> <table border='1'>
                <tr>
                    <th>Customer Name</th>
                    <th>Main Telephone</th>
                    <th>Pet Name</th>
                    <th>Disease Name</th>
                    <th>Vaccination Name</th>
                    <th>Vaccination Date</th>
                </tr>";  
            while($row = mysqli_fetch_array($result)){
                echo "<tr>";
                echo "<td>" . $row['Cus_name'] . "</td>";
                echo "<td>" . $row['Tele1'] . "</td>";
                echo "<td>" . $row['Pet_name'] . "</td>";
                echo "<td>" . $row['Disease_name'] . "</td>";
                echo "<td>" . $row['Vacc_name'] . "</td>";
                echo "<td>" . $row['Vacc_date'] . "</td>";
                echo "</tr>";
            }
            echo "</table>";
        }
    ?>

    <br>
    <h2>Second select Table</h2>

    <?php
        // Second select
        $sql = "SELECT Vis.Payment, Vis.Cus_name, Vis.Pet_name, Vis.Tele1 FROM Visits 
        AS Vis, Customer AS C WHERE Vis.Tele1=C.Tele1 AND Vis.Cus_name=C.Cus_name;";
        $result = $conn->query($sql);

        if ($result->num_rows > 0) {
            echo "<br><br> <table border='1'>
                <tr>
                    <th>Payment Fee</th>
                    <th>Customer Name</th>
                    <th>Pet Name</th>
                    <th>Main Telephone</th>
                </tr>";  
            while($row = mysqli_fetch_array($result)){
                echo "<tr>";
                echo "<td>" . $row['Payment'] . "</td>";
                echo "<td>" . $row['Cus_name'] . "</td>";
                echo "<td>" . $row['Pet_name'] . "</td>";
                echo "<td>" . $row['Tele1'] . "</td>";
                echo "</tr>";
            }
            echo "</table>";
        }
    ?>

    <br>
    <h2>Fourth select Table</h2>

    <?php
        // Fourth select
        $sql = "SELECT DISTINCT CN1, PN1, MAX(Count_pets) AS Visit FROM (SELECT Cus_name as CN1,
        Pet_name as PN1, COUNT(Pet_name) AS Count_pets FROM Visits GROUP BY CN1) 
        AS subq1, Visits GROUP BY Cus_name;";
        $result = $conn->query($sql);

        if ($result->num_rows > 0) {
            echo "<br><br> <table border='1'>
                <tr>
                    <th>Customer Name</th>
                    <th>Pet Name</th>
                    <th>Visits</th>
                </tr>";  
            while($row = mysqli_fetch_array($result)){
                echo "<tr>";
                echo "<td>" . $row['CN1'] . "</td>";
                echo "<td>" . $row['PN1'] . "</td>";
                echo "<td>" . $row['Visit'] . "</td>";
                echo "</tr>";
            }
            echo "</table>";
        }
    ?>

    <br>
    <h2>Fifth select Table</h2>

    <?php
        // Fifth select
        $sql = "SELECT Pet_name FROM Pets WHERE Pet_name NOT IN(SELECT Pet_name FROM Visits);";
        $result = $conn->query($sql);

        if ($result->num_rows > 0) {
            echo "<br><br> <table border='1'>
                <tr>
                    <th>Pet Name</th>
                </tr>";  
            while($row = mysqli_fetch_array($result)){
                echo "<tr>";
                echo "<td>" . $row['Pet_name'] . "</td>";
                echo "</tr>";
            }
            echo "</table>";
        }
    ?>

    <br>
    <h2>Seventh select Table</h2>

    <?php
        // Seventh select
        $sql = "SELECT DISTINCT Minf.Cus_name, Minf.Pet_name, IF(P.Cus_name = Minf.Cus_name AND P.Pet_name = Minf.Pet_name, Med_SF_name, '')
        FROM Med_info AS Minf, Pets AS P;";
        $result = $conn->query($sql);

        if ($result->num_rows > 0) {
            echo "<br><br> <table border='1'>
                <tr>
                    <th>Customer Name</th>
                    <th>Pet Name</th>
                    <th>Medcine/SpecialFood</th>
                </tr>";  
            while($row = mysqli_fetch_array($result)){
                echo "<tr>";
                echo "<td>" . $row['Cus_name'] . "</td>";
                echo "<td>" . $row['Pet_name'] . "</td>";
                echo "<td>" . $row["IF(P.Cus_name = Minf.Cus_name AND P.Pet_name = Minf.Pet_name, Med_SF_name, '')"] . "</td>";
                echo "</tr>";
            }
            echo "</table>";
        }
    ?>

    <br>
    <h2>Eigth select Table</h2>

    <?php
        // Eigth select
        $sql = "SELECT Cus_name, Pet_name, COUNT(Pet_name) AS TotalVisits, SUM(payment) FROM Visits GROUP BY Pet_name;";
        $result = $conn->query($sql);

        if ($result->num_rows > 0) {
            echo "<br><br> <table border='1'>
                <tr>
                    <th>Customer Name</th>
                    <th>Pet Name</th>
                    <th>TotalVisits</th>
                </tr>";  
            while($row = mysqli_fetch_array($result)){
                echo "<tr>";
                echo "<td>" . $row['Cus_name'] . "</td>";
                echo "<td>" . $row['Pet_name'] . "</td>";
                echo "<td>" . $row['TotalVisits'] . "</td>";
                echo "</tr>";
            }
            echo "</table>";
        }
    ?>

    <br><br>
    <h1>Task - 5 (1)</h1>

    <br><br>
    <h1>Task - 5 (2)</h1>


    </body>
</html>
