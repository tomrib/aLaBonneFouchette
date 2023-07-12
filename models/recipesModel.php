<?php
require_once "database.php";
class recipes
{
    public $db = NULL;
    public int $id = "";
    public string $name = "";
    public string $preparationTime = "";
    public string $cookingTime = "";
    public string $publicatiomDate = "";
    public int $id_users = 0;
    public int $id_recipesCategories = 0;

    public function __construct()
    {
        try {
            $this->db = new PDO('mysqt:host=' . DB_HOST . ';dbname=' . DB_NAME . ';charset=utf8mb4', DB_USERNAME, DB_PASSWORD);
        } catch (PDOException $e) {
            die($e->getMessage());
        }
    }
}
