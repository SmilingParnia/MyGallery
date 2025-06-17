<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Picture <?php echo $_GET['id']; ?></title>
</head>
<?php
include('dbconfig.php');
$sql2 = "SELECT * FROM books WHERE `index` = " . $_GET['id'];
$result = mysqli_query($conn, $sql2);
$row = mysqli_fetch_array($result);
?>

<body>
    <!-- header -->
    <div class="header">
        <a href="index.php">
            <div class="title">Back</div>
        </a>
        <div class="title"><?php echo $row['pic_name'] ?></div>
        <ul>
            <li>
                <div class="btn_more">...</div>
                <ul>
                    <li><a href="viewpage.php?action=true&id=<?php echo $_GET['id']; ?>">Edit</a></li>
                    <li><a href="index.php?id=<?php echo $_GET['id'] ?>">Delete</a></li>
                </ul>
            </li>
        </ul>
    </div>


    <div>
        <table class="viewbox">
            <?php
            echo '<tr><td><img class="viewboxpic" src="upload/images/' . $row['pic_name'] . '"></td></tr>';
            echo '<tr><td>Detail:</td></tr>';
            if (isset($_GET['action']) == "true") {
                echo '<tr><td><input type="text" name="" id="" value="' . $row['pic_detal'] . '"></td></tr>';
                echo '<tr><td><button type="submit" onclick="submit()">Upload</button></td></tr>';
            } else
                echo '<tr><td>' . $row['pic_detal'] . '</td></tr>';
            ?>
        </table>
    </div>


    <script>
    function submit() {
    var Title = document.getElementById('Title').value;
    var Detail = document.getElementById('Detail').value;
    console.log(Title);

    if (Title && Detail == "") {
    alert("some fields are empty, please write something!");
    }
    }
    </script>
</body>

</html>