<!DOCTYPE html>
<html lang="hr">
<head>
    <?php session_start(); ?>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Administracija</title>
    <link rel="stylesheet" href="css/style.css">
    <?php
    include 'connect.php';
    define ('UPLPATH', 'img/');
    $query = "SELECT * FROM clanci ORDER BY datum DESC";
    $result = mysqli_query($dbc, $query);
    ?>
</head>
<body>
    <div id="container">
        <?php include 'header.php'; ?>
        <main>
            <?php
            if($_SESSION['razina'] == 'admin'){
            while($row = mysqli_fetch_array($result)){
                echo '<form action="" method="post" class="adminform">
                <label for="naslov">Naslov vijesti:</label>
                <input type="text" name="naslov" id="naslov" class="inputnasl" value="'.$row['naslov'].'">

                <label for="sazetak">Unesite sažetak vijesti:</label>
                <textarea name="sazetak" id="sazetak" cols="30" rows="10" class="textpolje">'.$row['sazetak'].'</textarea>

                <label for="textvijesti">Unesite vijest:</label>
                <textarea name="textvijesti" id="textvijesti" cols="30" rows="10" class="textpolje">'.$row['text'].'</textarea>

                <label for="kategorija">Kategorija:</label>
                    <select name="kategorija" id="kategorija" class="ktg" value="'.$row['kategorija'].'>
                    <option value="Odaberi">Odaberi kategoriju</option>
                    <option value="Glazba">Glazba</option>
                    <option value="Filmovi">Filmovi</option>
                </select>

                <label for="vijestimg">Slika:</label>';
                echo "<input type='file' id='vijestimg' name='vijestimg' value='img/".$row['slika'].">";
                echo "<img src='img/".$row['slika']."' width='100px'>";

                if ($row['arhiva'] == 0){
                echo '<div class="check">
                <input type="checkbox" name="arhiva"> Spremiti u arhivu
                </div>';
                } else{
                    echo '<div class="check">
                <input type="checkbox" name="arhiva" checked> Spremiti u arhivu
                </div>';

                }

                echo '<input type="hidden" name="id" value="' . $row['id'] . '">';

                echo '<div class="gumbi">
                <input type="reset" value="Poništi" name="reset">
                <input type="submit" value="Prihvati" name="update">
                <input type="submit" value="Obriši" name="delete">
                </div>';

                echo '</form>';

            }
        }else{
            echo "<h2>Pozdrav ".$_SESSION['user'] . "!</h2>";
            echo "<p>Nemate ovlasti za pristup ovoj stranici.";
            echo "<div class='space'></div>";

        }
            ?>
        </main>
        <?php include 'footer.php'; ?>
        <?php
        if (isset($_POST['update'])){
            $title = $_POST['naslov'];
            $about = $_POST['sazetak'];
            $content = $_POST['textvijesti'];
            $category = $_POST['kategorija'];
            $img = $_POST['vijestimg'];
        
            if (isset($_POST['arhiva'])){
                $archive = 1;
            }else{
                $archive = 0;
            }

            $id = $_POST['id'];
            $query = "UPDATE clanci SET naslov='$title', sazetak='$about', text='$content', slika='$img', kategorija='$category', arhiva='$archive' WHERE id=$id";
            $result = mysqli_query($dbc, $result);
        }

        if (isset($_POST['delete'])){
            $id = $_POST['id'];
            $query = "DELETE FROM clanci WHERE id=$id";
            $result = mysqli_query($dbc, $query);
        }

        

        ?>

    </div>
    <?php mysqli_close($dbc); ?>
</body>
</html>