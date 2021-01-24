<?php include __dir__."/../controllers/questionsController.php"; 
    //List of all the possible method calls from the URL
	$possible_actions = array( "get_questions_list");
	
	//By default the resulting value will be an error, until it change by the correct one
	$value = "An error has occurred (is this action included in the possible actions?)";
	
	//Check if the call is correct and if the parameter of the call is included in the possible URL's
	if (isset($_GET["action"]) && in_array($_GET["action"], $possible_actions))
	{
		switch ($_GET["action"])
		{
        case "get_questions_list":
            $value = get_questions_list();
            exit(json_encode(array("questions_list" => $value)));
            break;
		}
	}
	else if ($_SERVER['REQUEST_METHOD'] === 'POST') {
		$file = file_get_contents("php://input", true);
		$data = (array) json_decode($file);
		$question_ = new \stdClass();
		if (isset($data['question']) && isset($data['asked_by']) && isset($data['created_at'])) {
			$question_->question = $data['question'];
			$question_->asked_by = $data['asked_by'];
			$question_->created_at = $data['created_at'];
			$value = post_question($question_);
		} else {
			$value = "could not post question, all values not set";
		}
		exit(json_encode(array("questions_list" => $value)));
	}
	
	//return JSON array
	exit(json_encode($value));
