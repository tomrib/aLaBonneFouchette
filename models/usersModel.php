<?php
require_once "database.php";
class users
{
    public $db = NULL;
    public int $id = 0;
    public string $lastname = "";
    public string $firtname = "";
    public string $email = "";
    public string $password = "";
    public int $id_member = 1;

    public function __construct()
    {
        try {
            $this->db = new PDO('mysqt:host='.DB_HOST.';dbname='.DB_NAME.';charset=utf8mb4', DB_USERNAME, DB_PASSWORD);
        } catch (PDOException $e) {
            die($e->getMessage());
        }
    }

    public function addUser()
    {
        $query = "INSERT INTO `fn4x_users`( `lastname`, `firtname`, `email`, `password`) 
        VALUES (':lastname',':firtname',':email',':password');";
        $request = $this->db->prepare($query);
        $request->bindValue(":lastname",$this->lastname,PDO::PARAM_STR);
        $request->bindValue(":firtname",$this->firtname,PDO::PARAM_STR);
        $request->bindValue(":email",$this->email,PDO::PARAM_STR);
        $request->bindValue(":password",$this->password,PDO::PARAM_STR);
        return $request->execute();
    }
}