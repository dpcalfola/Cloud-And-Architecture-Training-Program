<?php
if($_SERVER["REQUEST_METHOD"] == "POST"){   
    
   $db = new mysqli('192.168.56.51', 'root', 'cisco', 'test');  
    
   if($db->connect_error){ 
      die('Not Connected : ' . $db->connect_error);  
}
     
   $query = "select ID, PW from user where ID ='$_POST[ID]' && PW='$_POST[PW]'";
    
   $result = $db->query($query); 
   if($result->num_rows !== 0){    
      header("location: ");
      echo "Login Success";
   }
   else{    
      echo "Information that does not exist";   
   }
}
?>

<html>
<h1> LOGIN PAGE </h1>
<form action="" method="post">     
   <label for="ID">ID : </label>       
      <input type="text" name="ID">  

   <label for="PW">PW : </label>       
      <input type="text" name="PW">  

   <input type="submit" value="submit">     
</form>
</html>
