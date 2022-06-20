<?php
$insert = false;
if (isset($_POST['name'])) {
    $server = "localhost";
    $username = "root";
    $password = "";
    $database = "moviesdb";
    $connect = mysqli_connect($server, $username, $password, $database);
    if (!$connect) {
        die("connection to this database failed due to" . mysqli_connect_error());
    }
    echo "Success connecting to the db";  
    $name = $_POST['name'];
    $genre = $_POST['genre'];
    $lang = $_POST['lang'];
    $posterimg = $_POST['posterimg'];
    $actors = $_POST['actors'];
    $movielink = $_POST['movielink'];
    $sql = "INSERT INTO `movietb` (`name`, `genre`, `lang`, `posterimg`, `actors`, `movielink`) VALUES ('$name', '$genre', '$lang', '$posterimg', '$actors', '$movielink');";

    if ($connect->query($sql) == true) {     
        $insert = true;
    } else {
        echo "ERROR: $sql <br> $connect->error";
    }
    $connect->close();
}
?>

<!DOCTYPE html>
<html>

<head>
    <link rel="preconnect" href="https://fonts.gstatic.com">

    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="styles/main.css">
</head>

<body>
    <div class="container">
        <div class="header">
            <span>Hello Admin!</span>
        </div>
        <h1>Welcome Admin</h1>
        <p>Enter the movie details</p>
        <?php
        if ($insert == true) {
            echo "<p class='submitMsg'>Movie Details succesfully inserted</p>";
        }
        ?>
        <div class="page-content">
            <div class="admin-container">
                <form action="admin.php" id="form" method="post" name="form">
                    <div class="admin-row">
                        <h4>Name</h4>
                        <input name="name" class="text-input" placeholder="Enter movie name" required type="text" value="" />
                    </div>
                    <div class="admin-row">
                        <h4>Actors</h4>
                        <input name="actors" class="text-input" placeholder="Enter actors" required type="text" value="" />
                    </div>
                    <div class="admin-row">
                        <h4>Poster Image File Name</h4>
                        <input name="posterimg" class="text-input" placeholder="Enter Poster Image File Name" required type="text" value="" />
                    </div>
                    <div class="admin-row">
                        <h4>Language</h4>
                        <select name="lang" required>
                            <option value="">Select Language</option>
                            <option value="English">English</option>
                            <option value="Hindi">Hindi</option>
                            <option value="Telugu">Telugu</option>
                        </select>
                    </div>
                    <div class="admin-row">
                        <h4>Genre</h4>
                        <select name="genre" required>
                            <option value="">Select Genre</option>
                            <option value="SuperHero">SuperHero</option>
                            <option value="Horror">Horror</option>
                            <option value="Comedy">Comedy</option>
                            <option value="Romance">Romance</option>
                            <option value="Thriller">Thriller</option>
                            <option value="Drama">Drama</option>
                            <option value="Action">Action</option>
                        </select>
                    </div>
                    <div class="admin-row">
                        <h4>Embed Movie Link</h4>
                        <input name="movielink" class="text-input" placeholder="Enter embed format youtube of movie" required type="text" value="" />
                    </div>
                    <div class="admin-row btn-container">
                        <button type="submit" class="btn">Submit</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>

</html>