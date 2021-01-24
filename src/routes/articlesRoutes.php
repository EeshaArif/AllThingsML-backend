<?php include __dir__."/../controllers/articlesController.php"; 

	$value = "An error has occurred while processing request";
	
	$method = $_SERVER['REQUEST_METHOD'];
	switch ($method) {
		case "GET":
			if(isset($_GET['id'])){
				$value = get_article_of_id($_GET['id']);
				break;
			}
			$value = get_articles_list();
			break;

	}
	exit(json_encode(array("articles_list" => $value)));
