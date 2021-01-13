<?php include __dir__."/../controllers/communitiesController.php"; 
    //List of all the possible method calls from the URL
	$possible_actions = array( "get_communities_list");
	
	//By default the resulting value will be an error, until it change by the correct one
	$value = "An error has occurred (is this action included in the possible actions?)";
	
	//Check if the call is correct and if the parameter of the call is included in the possible URL's
	if (isset($_GET["action"]) && in_array($_GET["action"], $possible_actions))
	{
		switch ($_GET["action"])
		{
        case "get_communities_list":
            $value = get_communities_list();
            exit(json_encode(array("communities_list" => $value)));
            break;
		}
	}
	
	//return JSON array
	exit(json_encode($value));
 ?>