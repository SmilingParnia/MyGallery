<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>action page</title>
</head>

<body>

    <?php
    include('dbconfig.php');
    if (
        isset($_FILES['Title']) && !empty($_FILES['Title']) &&
        isset($_POST['Detail']) && !empty($_POST['Detail'])
    ) {
    }
    $uploadOK = 1;
    $Title = $_FILES['Title']['name'];
    $Detail = $_POST['Detail'];
    // echo $Title . $Detail . " " . $_FILES['Title']['tmp_name']; 


    $target = "Upload/images/";
    $target_file = $target . basename($_FILES['Title']['name']);
    $image = strtolower(pathinfo($target_file, PATHINFO_EXTENSION));

    $check = getimagesize($_FILES['Title']['tmp_name']);

    if (file_exists($target_file)) {
        echo "file is exised";
        $uploadOK = 0;
    }
    if ($_FILES['Title']['size'] > (200 * 500)) {
        echo "file is too large!!";
        $uploadOK = 0;
    }
    if ($uploadOK == 0) {
        echo "sorry, your file was not uploaded!!!";
    } else {
        if (move_uploaded_file($_FILES['Title']['tmp_name'],$target_file)) {
            echo "your file has been uploaded!!! yeay!";
            $sql1 = "INSERT INTO `books`(`pic_name`, `pic_detal`) VALUES ('$Title','$Detail');";
            $result = mysqli_query($conn, $sql1);

            if ($result === TRUE) {
                ?>
                <script>
                    location.replace('index.php');
                </script>
                <?php
                // echo "Upload picture is Successful";
            } else {
                echo "A problem occurred. Please try again later.:(";
            }
        }
    }




    ?>

    
</body>

</html>