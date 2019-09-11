<?php
	switch ($_SERVER["SCRIPT_NAME"]) {
		case "appointment.php":
			$CURRENT_PAGE = "About"; 
			$PAGE_TITLE = "Make appointment";
			break;
		case "record.php":
			$CURRENT_PAGE = "Contact"; 
			$PAGE_TITLE = "Previous record";
			break;
		default:
			$CURRENT_PAGE = "home";
			$PAGE_TITLE = "Welcome to my homepage!";
	}
?>