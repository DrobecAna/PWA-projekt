<!DOCTYPE html>
<html lang="en">
<head>
    <?php session_start(); ?>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>L'OBS</title>
    <link rel="stylesheet" href="css/style.css">
    <?php include 'connect.php';
    $kat = $_GET['id'];
    $query = "SELECT * FROM clanci WHERE kategorija='$kat' AND arhiva=0 ORDER BY datum DESC";
    $result = mysqli_query($dbc,$query);
    ?>
</head>
<body>
    <div id="container">
        <?php include 'header.php';?>
        <main>
            <h3><?php echo $kat;?> </h3>
            <div class="grid">
            <?php
            while($row = mysqli_fetch_array($result)){
                    echo "<article class='grid-item'>";
                        echo "<figure>";
                            echo "<img src='img/" . $row['slika'] ."' alt='slika' class='imgop'>";

                        echo '</figure>';
                        echo '<div class="whitebg">';
                            echo '<div class="opcont">';
                                echo '<h4><a href="clanak.php?id=' .$row['id']. '">'. $row['naslov'] . '</a></h4>';
                                echo '<p class="opisop">';
                                echo $row['kategorija'] . ' - ' . $row['datum'];
                                echo '</p>';

                            echo '</div>';

                        echo '</div>';
                echo '</article>';

                }?>


            </div>


        </main>
        <?php include 'footer.php'; ?>
    </div>
    
</body>
</html>