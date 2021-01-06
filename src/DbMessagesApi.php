<?php include "../DbSettings.php"; ?>
<?php
    function get_message_list(){
        $SQL = "SELECT * FROM Message";
        $LINK = $_ENV['DB_LINK'];
        $result = mysqli_query($LINK,$SQL);
        $message_list = array();
        while ( $db_field = mysqli_fetch_assoc($result) ) {
            $message_list[] = array(
            "id" => $db_field['id'],
            "owner" => $db_field['owner'],
            "text" => $db_field['text']);
            }
        
            return $message_list;
    }
    	//List of all the possible method calls from the URL
	$possible_url = array( "get_message_list");
	
	//By default the resulting value will be an error, until it change by the correct one
	$value = "An error has occurred (does this action included in possible URLs ?)";
	
	//Check if the call is correct and if the parameter of the call is included in the possible URL's
	if (isset($_GET["action"]) && in_array($_GET["action"], $possible_url))
	{
		switch ($_GET["action"])
		{
        case "get_message_list":
            $value = get_message_list();
            exit(json_encode(array("message_list" => $value)));
            break;
		}
	}
	
	//return JSON array
	exit(json_encode($value));
 ?>