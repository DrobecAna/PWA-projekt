<?php
if(isset($_SESSION['razina'])){
    if($_SESSION['razina'] == 'admin'){
    echo '<header>';
           echo " <a href='index.php'><h1>L'OBS</h1></a>'";
            echo "<nav>";
                echo "<ul>";
                    echo "<li><a href='index.php'>naslovna</a></li>";
                    echo "<li><a href='kategorija.php?id=glazba'>glazba</a></li>";
                    echo "<li><a href='kategorija.php?id=filmovi'>filmovi</a></li>";
                    echo "<li><a href='administracija.php'>administracija</a></li>";
                    echo "<li><a href='unos.php'>unos</a></li>";
                    echo "<li><a href='logout.php'>logout</a></li>";
                echo "</ul>";
            echo "</nav>";
       echo "</header>";
    }else if($_SESSION['razina'] == 'korisnik'){
    echo '<header>';
           echo " <a href='index.php'><h1>L'OBS</h1></a>'";
            echo "<nav>";
                echo "<ul>";
                    echo "<li><a href='index.php'>naslovna</a></li>";
                    echo "<li><a href='kategorija.php?id=glazba'>glazba</a></li>";
                    echo "<li><a href='kategorija.php?id=filmovi'>filmovi</a></li>";
                    echo "<li><a href='administracija.php'>administracija</a></li>";
                    echo "<li><a href='logout.php'>logout</a></li>";
                echo "</ul>";
            echo "</nav>";
       echo "</header>";
    }}
else{
    echo '<header>';
           echo " <a href='index.php'><h1>L'OBS</h1></a>'";
            echo "<nav>";
                echo "<ul>";
                    echo "<li><a href='index.php'>naslovna</a></li>";
                    echo "<li><a href='kategorija.php?id=glazba'>glazba</a></li>";
                    echo "<li><a href='kategorija.php?id=filmovi'>filmovi</a></li>";
                    echo "<li><a href='login.php'>login</a></li>";
                echo "</ul>";
            echo "</nav>";
       echo "</header>";
}

?>