<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="style.css">
  <title>My gallery</title>
</head>
<?php include('dbconfig.php'); 

if (isset($_GET['id']) && !empty($_GET['id'])){
    $sql2 = "DELETE FROM `books` WHERE `index` =" .$_GET['id'];
    $result = mysqli_query($conn, $sql2);
}

?>

<body>
  <!-- header -->
  <div class="header">
    <div class="title">My Gallery</div>
    <a href="Upload.php">
      <div class="btn">Upload</div>
    </a>
  </div>

  <!-- main div -->
  <div class="pic-conteiner">
    <?php
    $sql2 = "SELECT * FROM books";
    $result = mysqli_query($conn, $sql2);
    $row = mysqli_fetch_array($result);
    while ($row) {
      echo '<a href="viewpage.php?id='.$row['index'].'"><img  class="pic" src="upload/images/' . $row['pic_name'] . '" alt="' . $row['pic_name'] .'"></a>';
      $row = mysqli_fetch_array($result);
    }


    include('footer.php')
    ?>
  </div>
</body>

</html>