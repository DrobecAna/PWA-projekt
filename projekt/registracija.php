<!DOCTYPE html>
<html lang="hr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registracija</title>
    <link rel="stylesheet" href="css/style.css">
    <?php
    include 'connect.php';
    ?>
</head>
<body>
    <div class="container">
        <?php include 'header.php'; ?>
        <main>
            <h2>Registracija</h2>
            <form method="post" name="reg">

                <label for="ime">Ime:</label>
                <div id="imePoruka" class="error"></div>
                <input type="text" name="ime" id="ime"/>


                <label for="prezime">Prezime:</label>
                <div id="prezimePoruka" class="error"></div>
                <input type="text" name="prezime" id="prezime"/>


                <label for="user">Korisničko ime:</label>
                <div id="userPoruka" class="error"></div>
                <input type="text" name="user" id="user">

                <label for="pass1">Lozinka:</label>
                <div id="pass1Poruka" class="error"></div>
                <input type="password" name="pass1" id="pass1">

                <label for="pass2">Ponovo unesite lozinku:</label>
                <div id="pass2Poruka" class="error"></div>
                <input type="password" name="pass2" id="pass2">
                <div id="razpass" class="error"></div>

                <div class="gumbi">
                <input type="reset" value="Poništi" name="reset">
                <input type="submit" name="registriraj" id="registriraj">
                </div>
            </form>
        
        </main>
        <?php include 'footer.php'; ?>

    </div>
    <script type="text/javascript">
        document.getElementById("registriraj").onclick = function(event){
            var send = true;

            var imePolje = document.getElementById("ime");
            var ime = document.getElementById("ime").value;
            if (ime.length == 0){
                send = false;
                imePolje.style.border = "1px solid red";
                document.getElementById("imePoruka").innerHTML = "Ime mora biti uneseno!";
            }

            var prezimePolje = document.getElementById("prezime");
            var prezime = document.getElementById("prezime").value;
            if (prezime.length == 0){
                send = false;
                prezimePolje.style.border = "1px solid red";
                document.getElementById("prezimePoruka").innerHTML = "Prezime mora biti uneseno!";
            }

            var userPolje = document.getElementById("user");
            var user = document.getElementById("user").value;
            if (user.length == 0){
                send = false;
                userPolje.style.border = "1px solid red";
                document.getElementById("userPoruka").innerHTML = "Korisničko ime mora biti uneseno!";
            }

            var pass1Polje = document.getElementById("pass1");
            var pass1 = document.getElementById("pass1").value;
            if (pass1.length == 0){
                send = false;
                pass1Polje.style.border = "1px solid red";
                document.getElementById("pass1Poruka").innerHTML = "Lozinka mora biti unesena!";
            }

            var pass2Polje = document.getElementById("pass2");
            var pass2 = document.getElementById("pass2").value;
            if (pass2.length == 0){
                send = false;
                pass2Polje.style.border = "1px solid red";
                document.getElementById("pass2Poruka").innerHTML = "Ponovite lozinku!";
            }

           if(pass1 != pass2){
            send = false;
            document.getElementById("razpass").innerHTML = "Lozinke se trebaju podudarati!";
           }

            if(send == false){
                event.preventDefault();
            }

        }

    </script>
    <?php
    if(isset($_POST['ime']) && isset($_POST['prezime']) && isset($_POST['user']) && isset($_POST['pass1']) && isset($_POST['pass2'])){
        $ime = $_POST['ime'];
        $prezime = $_POST['prezime'];
        $user = $_POST['user'];
        $pass = password_hash($_POST['pass1'], CRYPT_BLOWFISH);
        $razina = 0;
        $registriraniKorisnik = '';

        $check = "SELECT kime FROM korisnik WHERE kime= ?";
        $stmt = mysqli_stmt_init($dbc);
        if(mysqli_stmt_prepare($stmt, $check)){
            mysqli_stmt_bind_param($stmt, 's', $user);
            mysqli_stmt_execute($stmt);
            mysqli_stmt_store_result($stmt);
        }
        if(mysqli_stmt_num_rows($stmt) > 0){
            echo "<script type='text/javascript'>alert('Korisničko ime se već koristi!'); </script>";
        }else{
            $sql = "INSERT INTO korisnik(ime, prezime, kime, lozinka, razina) VALUES (?, ?, ?, ?, ?)";
            $stmt = mysqli_stmt_init($dbc);
            if(mysqli_stmt_prepare($stmt, $sql)){
                mysqli_stmt_bind_param($stmt, 'ssssd', $ime, $prezime, $user, $pass, $razina);
                mysqli_stmt_execute($stmt);
                $registriraniKorisnik = true;
                echo "<script type='text/javascript'>alert('Uspješno ste registrirani!'); </script>";
            }
        }


    }

    mysqli_close($dbc);


    ?>
</body>
</html>