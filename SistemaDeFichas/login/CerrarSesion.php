<?php

session_start();

session_destroy();

	header("Location: /SistemaDeFichas/loginuser/index.php");
	exit();
  ?>