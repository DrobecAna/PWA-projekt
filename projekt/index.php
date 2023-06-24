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
    
    ?>
</head>
<body>
    <div id="container">
        <?php include 'header.php';?>
        <main>
        <section>    
            <h3>glazba</h3>
            <div class="clanci">
                <?php
                $query = "SELECT * FROM clanci WHERE arhiva=0 AND kategorija='glazba' ORDER BY datum DESC LIMIT 3"; 
                $result = mysqli_query($dbc, $query);
                while($row = mysqli_fetch_array($result)){
                    echo "<article class='clanak'>";
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
         </section>   
         <section>   
            <h3>filmovi</h3>
            <div class="clanci">
            <?php
                $query = "SELECT * FROM clanci WHERE arhiva=0 AND kategorija='filmovi' ORDER BY datum DESC LIMIT 3 "; 
                $result = mysqli_query($dbc, $query);
                while($row = mysqli_fetch_array($result)){
                    echo "<article>";
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
            </section>
        </main>
        <?php include 'footer.php';?>
        <?php mysqli_close($dbc);?>

    </div>
    
</body>
</html>