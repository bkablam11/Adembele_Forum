<?php
session_start();
?>

<!doctype html>
<html lang="en">
<head>
    <?php include 'partials/_head.php' ;?>
</head>
<body>
    <header>
    <?php include 'partials/_navbar.php';?>
    </header>

    <section>
    
<h1 class="titre">Bienvenue dans notre forum : Login</h1> 
</section>
<section>

<form action="" method="post" id="flogin">
<input type="text" name="email" placeholder="Votre Email" class="ch"><br>
<input type="password" name="pw" placeholder="mot de passe" class="ch"><br>
<input type="submit" name="valider" value="Valider" class="ch">

<?php
include("connexion.php");

if(isset($_POST['valider']))
{
	$email=$_POST['email'];
	$mp=sha1($_POST['pw']);
$res=mysqli_query($cn,"select * from utilisateur where email_user='$email' and pw_user='$mp'");	
$nbr=mysqli_num_rows($res);
if($nbr==0)
echo '<br><br>login ou mot de passe incorrects ';
else
{
	$data=mysqli_fetch_assoc($res);
	$_SESSION['id_user']=$data['id_user'];
	$_SESSION['nom']=$data['nom_user'];
	$_SESSION['prenom']=$data['prenom_user'];
	$_SESSION['login']=$data['email_user'];
	$_SESSION['mp']=$data['pw_user'];
	header("location:forum.php");
} }
?>
</form>
</section>


    </section>

    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    -->
</body>
</html>