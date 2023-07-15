<?php
require_once "database.php";
class users
{
    public $db = NULL;
    public int $id = 0;
    public string $lastname = "";
    public string $firtsname = "";
    public string $email = "";
    public string $password = "";

    public function __construct()
    {
        try {
            $this->db = new PDO('mysqt:host='.DB_HOST.';dbname='.DB_NAME.';charset=utf8mb4', DB_USERNAME, DB_PASSWORD);
        } catch (PDOException $e) {
            die($e->getMessage());
        }
    }

    
}