<?php include __dir__."/../controllers/articlesController.php"; 
	$possible_actions = array( "get_articles_list","get_article");
	$value = "An error has occurred (is this action included in the possible actions?)";
	
	if (isset($_GET["action"]) && in_array($_GET["action"], $possible_actions))
	{
		switch ($_GET["action"])
		{
        case "get_articles_list":
            $value = get_articles_list();
            break;
		
		case "get_article":
			if(isset($_GET['id'])){
				$value = get_article_of_id($_GET['id']);
			}
			break;
			
		}
		exit(json_encode(array("articles_list" => $value)));
	}
	
	exit(json_encode($value));
 ?>