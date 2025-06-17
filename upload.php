<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Upload</title>
</head>

<body>
    <!-- header -->
    <div class="header">
        <a href="index.php">
            <div class="title">Back</div>
        </a>
    </div>

    <div>
        <form action="action_upload.php" method="POST" enctype="multipart/form-data" id="form">
            <table class="uploadbox">
                <tr>
                    <td><input type="file" name="Title" id="Title"></td>
                </tr>
                <tr>
                    <td>Detail:</td>
                </tr>
                <tr>
                    <td><input type="text" name="Detail" id="Detail"></td>
                </tr>
                <tr>
                    <td><button type="submit" onclick="func()">Upload</button></td>
                </tr>
            </table>
        </form>
    </div>


    <script>
        function func() {
            let x = document.getElementById("Detail").value;
            if (x == "") {
                alert("Detail filed is empty!");
                const formElement = document.getElementById('form');
                formElement.action = '';
            }
        }
    </script>
</body>

</html>