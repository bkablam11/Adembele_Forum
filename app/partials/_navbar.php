<nav>
	<ul>
		<li><a href="index.php">Login</a></li>
		<li><a href="inscription.php">Inscription</a></li>
		<?php
		if(isset($_SESSION['nom']))
		{
			echo '<li><a href="logout.php">Déconnexion</a></li>';
		}
		?>
    </ul>
</nav>


