<?php
require_once "database.php";
class recipscategories 
{
    public $db = NULL;
    public int $id = 0;
    public string $name = "";

    public function __construct()
    {
        try {
            $this->db = new PDO('mysqt:host='.DB_HOST.';dbname='.DB_NAME.';charset=utf8mb4', DB_USERNAME, DB_PASSWORD);
        } catch (PDOException $e) {
            die($e->getMessage());
        }
    }
}