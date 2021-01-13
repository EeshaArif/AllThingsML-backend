<?php include __dir__."/../controllers/articlesController.php"; 
    //List of all the possible method calls from the URL
	$possible_url = array( "get_articles_list");
	
	//By default the resulting value will be an error, until it change by the correct one
	$value = "An error has occurred (does this action included in possible URLs ?)";
	
	//Check if the call is correct and if the parameter of the call is included in the possible URL's
	if (isset($_GET["action"]) && in_array($_GET["action"], $possible_url))
	{
		switch ($_GET["action"])
		{
        case "get_articles_list":
            $value = get_articles_list();
            exit(json_encode(array("articles_list" => $value)));
            break;
		}
	}
	
	//return JSON array
	exit(json_encode($value));
 ?>