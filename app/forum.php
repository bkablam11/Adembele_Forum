<?php mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT);?>

<?php
session_start();
if(isset($_SESSION['login']) and isset($_SESSION['mp']))
{
    include("connexion.php");
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
    
    <h1 class="titre">Bienvenue dans notre forum</h1> 
</section>
<section id="sect1">
<?php
    /* changer le format de la date en français*/
function changedate($dt)

{
$tab = explode("-",$dt);
$nd = $tab[2]."-".$tab[1]."-".$tab[0];
return $nd;
}

$res=mysqli_query($cn,"select * from utilisateur,message where utilisateur.id_user=message.id_user order by id_message DESC"); 

while($data=mysqli_fetch_assoc($res))
{
    
    echo '<div id="div1">
    <img src="images/'.$data['id_user'].'.jpg" class="photo" width="30px" height="30px">';
    echo $data['nom_user'];
    echo '<br>'.$data['prenom_user'].'</div>';
    echo '<div id="div2">Posté le : '.changedate($data['date_message']);
    echo ' à '.$data['heure_message'];
    echo '<br>'.$data['texte_message'].'</div>';

}


?>

<form action="" method="post">
<textarea name="message"  placeholder="Votre message" id="zmessage"></textarea>
<input type="submit" name="envoyer" value="Envoyer" class="btn2">
</form>
<?php
if(isset($_POST['envoyer']))
{

    $id=$_SESSION['id_user'];
    $msg=$_POST['message'];
    $date=date('Y-m-d');
    $heure=date('H:i');
    $req1=mysqli_query($cn,"insert into message values (NULL,'$msg','$date','$heure','$id')"); 
header("location:forum.php");
}

?>

</section>

</body>
</html>
<?php
}
else
header("location:index.php");
?>
