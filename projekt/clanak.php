<!DOCTYPE html>
<html lang="hr">
<head>
    <?php session_start(); ?>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>L'OBS</title>
    <link rel="stylesheet" href="css/style.css">
    <?php 
    include 'connect.php';
    $id = $_GET['id'];
    $query = "SELECT * FROM clanci WHERE id='$id'";
    $result = mysqli_query($dbc,$query);
    $row = mysqli_fetch_array($result);
    ?>
</head>
<body>
    <div id="container">
        <?php include 'header.php';?>

        <main>
            <div class="kategorija-path">
                L'OBS > <?php echo $row['kategorija']; ?>
            </div>
            <h2><?php echo $row['naslov']; ?></h2>
            <figure class="clanakimg">
                <img src="img/<?php echo $row['slika']; ?>" alt="slika" class="clanakimg">
            </figure>
            <div class="opis">
                <?php echo $row['sazetak']; ?>
            </div>
            <div class="objavljeno">
            <?php echo "Objavljeno " . $row['datum'] . " u " . $row['vrijeme']; ?>

            </div>
            <div class="clanaktext">
            <?php echo $row['text']; ?>
            </div>

        </main>

        <?php include 'footer.php';?>
        <?php mysqli_close($dbc);?>

    </div>
    
</body>
</html>