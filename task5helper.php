<html>
    <head>
        <title>Webpage</title>
    </head>

    <style>

        * {
            font-family:'Calibri', sans-serif;
        }

        #select {
            margin-top: 5%;
            margin-left: 10%;
            width: 500px;
            height: 500px;
            background-color: #363636;
            padding: 100px;
            border-radius: 25px;
            color: #FFF;
        }

        input[type=checkbox] {
            cursor: pointer;
            margin-top: 2%;
            margin-right: 2%;
            border-radius: 10px;
        }

        label {
            font-size: 18px;
        }

        button {
            cursor: pointer;
            margin-top: 5%;
            padding: 14px;
            width: 140px;
            background-color: #fff;
            color: #000;
            border: none;
            border-radius: 10px;
            transition: 0.3s ease-in-out;
        }

        button:hover {
            background-color: #653ec2;
            color: #FFF;
        }

        input[type=text] {
            padding: 8px;
            border-radius: 5px;
            border: 1px solid black;
            cursor: text;
            margin-top: 4%;
            margin-bottom: 4%;
        }

        #cusdeets, #cuspetdeets {
            margin-left: 3.5%;
            display: none;
        }
        
    </style>

    <body>

    <div id="select">

    <h1>Choose the results you would like to display: </h1>

        <form action="searchCourse.php" method="POST">

            <input type="checkbox" name="seecontent">
            <label for="seecontent">See content of each table</label> <br>

            <input type="checkbox" name="runqueries">
            <label for="runqueries">Run each query</label> <br>

            <input type="checkbox" name="cusrecords" id="cusrecords" onclick="displayOption1()">
            <label for="cusrecords">Show records for a customer</label> <br>

            <div id="cusdeets">
                <input type="text" name="cusname1" placeholder="Enter customer name">
            </div>

            <input type="checkbox" name="cuspetrecords" id="cuspetrecords" onclick="displayOption2()">
            <label for="cuspetrecords">Show records for a customer and pet</label> <br>

            <div id="cuspetdeets">
                <input type="text" name="cusname2" placeholder="Enter customer name"> <br>
                <input type="text" name="petname" placeholder="Enter pet name">
            </div>

            <button type="submit">Submit</button>
        </form>

    </div>

    <script>

        function displayOption1() {

          var checkBox = document.getElementById("cusrecords");
          var div = document.getElementById("cusdeets");

          if (checkBox.checked == true){
            div.style.display = "block";
          } 
          
          else {
            div.style.display = "none";
          }

        }

        function displayOption2() {

          var checkBox = document.getElementById("cuspetrecords");
          var div = document.getElementById("cuspetdeets");

          if (checkBox.checked == true){
            div.style.display = "block";
          }
           
          else {
            div.style.display = "none";
          }

        }

        </script>

    </body>

</html>
