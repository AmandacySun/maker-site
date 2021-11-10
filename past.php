<!--Group 9-->
<!--Sunnie Qu: chang.qu@vanderbilt.edu-->
<!--Chuyun Sun: chuyun.sun@vanderbilt.edu-->
<!--Chang Guo: chang.guo@vanderbilt.edu-->
<!--Homework 3-->


<h1>Search Past Events Information By the Host</h1>

<form method="post">
  <label for="host_name">Enter Host Name</label>
  <input type="text" name="host_name" id="host_name" placeholder="Chang Guo">
  <input type="submit" name="submit" value="Submit">
</form>

<?php

    if (isset($_POST['submit'])) {
        require_once("conn.php");
        $host_name = $_POST['host_name'];

        $query = "SELECT * FROM past_event WHERE host_name = :host_name" ;

        try{
            $prepared_stmt = $dbo->prepare($query);
            $prepared_stmt->bindValue(':host_name', $host_name, PDO::PARAM_STR);
            $prepared_stmt->execute();
            $result = $prepared_stmt->fetchAll();
        }catch (PDOException $ex){ // Error in database processing.
            echo $sql . "<br>" . $error->getMessage(); // HTTP 500 - Internal Server Error
        }
}
?>


<?php
if (isset($_POST['submit'])) {
  if ($result && $prepared_stmt->rowCount() > 0) { ?>

    <h2>Results</h2>

    <table>
      <thead>
		<tr>
          <th>Event Name</th>
          <th>Event Time</th>
          <th>Attendant Number</th>
          <th>Host</th>
          <th>Event Location</th>
          <th>Difficulty Level</th>
          <th>Event Theme</th>
		</tr>
      </thead>
      <tbody>

<?php foreach ($result as $row) { ?>

      <tr>
        <td><?php echo $row["event_name"]; ?></td>
        <td><?php echo $row["event_time"]; ?></td>
        <td><?php echo $row["attend_num"]; ?></td>
        <td><?php echo $row["host_name"]; ?></td>
        <td><?php echo $row["event_location"]; ?></td>
        <td><?php echo $row["difficulty"]; ?></td>
        <td><?php echo $row["event_theme"]; ?></td>

      </tr>
<?php } ?>
      </tbody>
  </table>

<?php } else { ?>
    > No results found for <?php echo $_POST['host_name']; ?>.
  <?php }
} ?>

<style>
    label {
    display: block;
    margin: 5px 0;
    }

    table {
    border-collapse: collapse;
    border-spacing: 0;
    }

    td, th {
    padding: 5px 30px 5px 30px;
    border-bottom: 1px solid #aaa;
    }

    a {
    color: #64a19d;
    text-decoration: none;
    background-color: transparent;
    }
    a:hover {
    color: #467370;
    text-decoration: underline;
    }

    html {
    font-family: sans-serif;
    line-height: 1.15;
    -webkit-text-size-adjust: 100%;
    -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
    }
</style>



