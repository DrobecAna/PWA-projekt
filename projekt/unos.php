<!DOCTYPE html>
<html lang="hr">
<head>
    <?php session_start(); ?>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Unos</title>
    <link rel="stylesheet" href="css/style.css">
    
</head>
<body>
    <div id="container">
        <?php include 'header.php';?>

        <main>
            <h2>Unos nove vijesti</h2>

            <form action="skripta.php" method="post" name="forma">
                <label for="naslov">Naslov vijesti:</label>
                <div id="naslovPoruka" class="error"></div>
                <input type="text" name="naslov" id="title" class="inputnasl"/>

                <label for="sazetak">Unesite sažetak vijesti:</label>
                <div id="sazetakPoruka" class="error"></div>
                <textarea name="sazetak" id="sazetak" cols="30" rows="10" class="textpolje"></textarea>

                <label for="textvijesti">Unesite vijest:</label>
                <div id="textPoruka" class="error"></div>
                <textarea name="textvijesti" id="textvijesti" cols="30" rows="10" class="textpolje"></textarea>

                <label for="kategorija">Kategorija:</label>
                <div id="katPoruka" class="error"></div>
                <select name="kategorija" id="kategorija" class="ktg">
                    <option value="Odaberi">Odaberi kategoriju</option>
                    <option value="Glazba">Glazba</option>
                    <option value="Filmovi">Filmovi</option>
                </select>

                <label for="vijestimg">Slika:</label>
                <div id="slikaPoruka" class="error"></div>
                <input type="file" id="vijestimg" name="vijestimg">

                <div class="check">
                <input type="checkbox" name="arhiva"> Spremiti u arhivu
                </div>

                <div class="gumbi">
                <input type="reset" value="Poništi" name="reset">
                <input type="submit" value="Unesi" name="send" id="sendB">
                </div>
                


            </form>
        </main>

        <?php include 'footer.php';?>

        </div>
        <script type="text/javascript">
            document.getElementById("sendB").onclick = function(event) {
            saljiFormu = true;

            var naslovPolje = document.getElementById("title");
            var naslov = document.getElementById("title").value;
            if(naslov.length < 5 || naslov.length > 30){
            saljiFormu = false;
            naslovPolje.style.border = "1px solid red";
            document.getElementById("naslovPoruka").innerHTML = "Naslov treba imati između 5 i 30 znakova!";
            }

            var sazetakPolje = document.getElementById("sazetak");
            var sazetak = document.getElementById("sazetak").value;
            if(sazetak.length < 10 || sazetak.length > 100){
            saljiFormu = false;
            sazetakPolje.style.border = "1px solid red";
            document.getElementById("sazetakPoruka").innerHTML = "Sažetak treba imati između 10 i 100 znakova!";
            }

            var textPolje = document.getElementById("textvijesti");
            var text = document.getElementById("textvijesti").value;
            if(text.length == 0){
            saljiFormu = false;
            textPolje.style.border = "1px solid red";
            document.getElementById("textPoruka").innerHTML = "Sadržaj mora biti unesen!";
            }

            var katPolje = document.getElementById("kategorija");
            var kategorija = document.getElementById("kategorija").value;
            if(kategorija == 'Odaberi'){
            saljiFormu = false;
            katPolje.style.border = "1px solid red";
            document.getElementById("katPoruka").innerHTML = "Kategorija mora biti unesena!";
            }

            var slikaPolje = document.getElementById("vijestimg");
            var slika = document.getElementById("vijestimg").value;
            if(slika.length == 0){
            saljiFormu = false;
            slikaPolje.style.border = "1px solid red";
            document.getElementById("slikaPoruka").innerHTML = "Slika mora biti odabrana!";
            }

            if(saljiFormu == false){
                event.preventDefault();
            }


            };
        </script>
        


    
</body>
</html>