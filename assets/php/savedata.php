<?php
include_once 'common/connection.php';
require("trace/MyLogPHP-1.2.1.class.php");
$method = $_SERVER['REQUEST_METHOD'];
$log = new MyLogPHP();

if ($method == 'POST') {

  $name   = $_POST['name'];
  $email  = $_POST['email'];
  $phone  = $_POST['phone'];
  $subject = $_POST['subject'];
  $message = $_POST['message'];
try{

      $ret = $database->insert('tel_message_data', [
        'name'        => $name,
        'email'       => $email,                  
        'phone'       => $phone,
        'subject'     => $subject,
        'message'     => $message    
      ]);
    
      if ($ret)
      {   
        $result['result'] = "1";
          $log->info("Response Saved");
      } else {
        $result['result'] = "0";
        $log->info(var_dump($database->error()));
     }
    
    echo json_encode($result);

}
catch(Exception $e){
    $log->info($e->getMessage());
}

} else {
  header("HTTP/1.1 405 Method Not Allowed");
}

?>
