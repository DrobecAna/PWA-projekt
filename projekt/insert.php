<?php
include 'connect.php';

if((isset($_POST['naslov']) && isset($_POST['sazetak']) && isset($_POST['textvijesti']) && isset($_POST['kategorija']) && isset($_POST['vijestimg']) && isset($_POST['send']))){
$title = $_POST['naslov'];
$about = $_POST['sazetak'];
$content = $_POST['textvijesti'];
$category = $_POST['kategorija'];
$img = $_FILES['vijestimg']['name'];
$date = date('d.m.Y.');

if (isset($_POST['arhiva'])){
    $archive = 1;
}else{
    $archive = 0;
}

$query = "INSERT INTO clanci(datum, naslov, sazetak, text, slika, kategorija, arhiva) VALUES ('$date', '$title', '$about', '$content', '$img', '$category', '$archive')";

$result = mysqli_query($dbc, $query) or die ('Error querying the database.');

}
mysqli_close($dbc);


?>