<?php
require_once "database.php";
class recipescontent 
{
    public $db = NULL;
    public int $id_recipesContent = 0;
    public int $id_ingredients = 0;
    public int $id_units = 0;
    public string $quantily = "";


    public function __construct()
    {
        try {
            $this->db = new PDO('mysqt:host='.DB_HOST.';dbname='.DB_NAME.';charset=utf8mb4', DB_USERNAME, DB_PASSWORD);
        } catch (PDOException $e) {
            die($e->getMessage());
        }
    }
}