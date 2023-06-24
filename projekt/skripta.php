<!DOCTYPE html>
<html lang="hr">
<head>
    <?php session_start(); ?>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>L'OBS</title>
    <link rel="stylesheet" href="css/style.css">

</head>
<body>
<?php
    include 'connect.php';

    if(isset($_POST['naslov']) && isset($_POST['sazetak']) && isset($_POST['textvijesti']) && isset($_POST['kategorija']) && isset($_POST['vijestimg']) && isset($_POST['send'])){
        $title = $_POST['naslov'];
        $about = $_POST['sazetak'];
        $content = $_POST['textvijesti'];
        $category = $_POST['kategorija'];
        $img = $_POST['vijestimg'];
        $date = date('d.m.Y.');
        $time = date('H:i');
        
        if (isset($_POST['arhiva'])){
            $archive = 1;
        }else{
            $archive = 0;
        }

        
        $query = "INSERT INTO clanci(datum, vrijeme, naslov, sazetak, text, slika, kategorija, arhiva) VALUES ('$date', '$time', '$title', '$about', '$content', '$img', '$category', '$archive')";
        
        $result = mysqli_query($dbc, $query) or die ('Error querying the database.');


    //}

    ?>
    <div id="container">
    <?php include 'header.php';?>

        <main>
            <section class="kategorija-path">
                L'OBS > <?php echo $category;?>
            </section>
            <h2><?php echo $title;?></h2>
            <figure class="clanakimg">
                <img src="img/<?php echo $img; ?>" alt="slika" class="clanakimg"/>
            </figure>
            <section class="opis">
                <?php echo $about;?>
            </section>
            <section class="objavljeno">
                Objavljeno <?php echo $date;?> u <?php echo $time;?>

            </section>
            <section class="clanaktext">
                <?php echo $content; ?>
            </section>

        </main>

        <?php include 'footer.php';?>

    </div>

    <?php 
    }
    mysqli_close($dbc);
    ?>
    
</body>
</html>