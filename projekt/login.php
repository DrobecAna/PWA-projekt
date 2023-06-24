<!DOCTYPE html>
<html lang="hr">
<head>
    <?php session_start(); ?>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="css/style.css">
    <?php include 'connect.php'; ?>
</head>
<body>
    <div id="container">
        <?php include 'header.php'; ?>
        <main>
            <h2>Login</h2>
            <form method="post" name="login">
                <label for="username">Korisničko ime:</label>
                <input type="text" name="username" id="username"/>

                <label for="password">Lozinka:</label>
                <input type="password" name="password" id="password"/>

                <div class="gumbi">
                    <input type="reset" name="reset" value="Poništi">
                    <input type="submit" name="submit" value="Login" id="submit">
                </div>
            </form>

            <p class="regse">Nemate račun? <a href="registracija.php">Registrirajte se</a></p>

        </main>
        <?php include 'footer.php'; ?>


    </div>

    <?php
if(isset($_POST['username']) && isset($_POST['password'])){
    $username = $_POST['username'];
    $password = $_POST['password'];

    $query = "SELECT kime, lozinka, razina FROM korisnik WHERE kime=?";
    $stmt = mysqli_stmt_init($dbc);
    if(mysqli_stmt_prepare($stmt, $query)){
        mysqli_stmt_bind_param($stmt, 's', $username);
        mysqli_stmt_execute($stmt);
        mysqli_stmt_store_result($stmt);
    }

    mysqli_stmt_bind_result($stmt, $a, $b, $razina);
    mysqli_stmt_fetch($stmt);
    if(mysqli_stmt_num_rows($stmt)>0){
        if(password_verify($password, $b)){
            $_SESSION['user'] = $username;
            if($razina ==1){
                $_SESSION['razina'] = 'admin';
                header ('Location: administracija.php');
                
            }else{
                $_SESSION['razina'] = 'korisnik';
                header ('Location: index.php');
            }

        }echo "<script type='text/javascript'>alert('Korisničko ime ili lozinka su krivo uneseni'); </script>";
    }else{
        echo "<script type='text/javascript'>alert('Korisničko ime ili lozinka su krivo uneseni'); </script>";
    }
};

 mysqli_close($dbc); 
    ?>
</body>
</html>