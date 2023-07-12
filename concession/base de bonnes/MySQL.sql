#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: fn4x_users
#------------------------------------------------------------

CREATE TABLE fn4x_users(
        id        Int  Auto_increment  NOT NULL ,
        lastname  Varchar (20) NOT NULL ,
        firtsname Varchar (20) NOT NULL ,
        email     Varchar (100) NOT NULL ,
        password  Varchar (255) NOT NULL
	,CONSTRAINT users_PK PRIMARY KEY (id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: fn4x_recipesCategories
#------------------------------------------------------------

CREATE TABLE fn4x_recipesCategories(
        id   Int  Auto_increment  NOT NULL ,
        name Varchar (20) NOT NULL
	,CONSTRAINT recipesCategories_PK PRIMARY KEY (id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table:  fn4x_recipes
#------------------------------------------------------------

CREATE TABLE fn4x_recipes(
        id                        Int  Auto_increment  NOT NULL ,
        name                      Varchar (25) NOT NULL ,
        preparationTime           Time NOT NULL ,
        cookingTime               Time NOT NULL ,
        publicatiomDate           Date NOT NULL ,
        id_users             Int NOT NULL ,
        id_recipesCategories Int NOT NULL
	,CONSTRAINT recipes_PK PRIMARY KEY (id)

	,CONSTRAINT recipes_users_FK FOREIGN KEY (id_users) REFERENCES fn4x_users(id)
	,CONSTRAINT recipes_recipesCategories0_FK FOREIGN KEY (id_recipesCategories) REFERENCES fn4x_recipesCategories(id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: fn4x_ingredientsCategories
#------------------------------------------------------------

CREATE TABLE fn4x_ingredientsCategories(
        id_ingredientsCategories   Int  Auto_increment  NOT NULL ,
        name Varchar (25) NOT NULL
	,CONSTRAINT ingredientsCategories_PK PRIMARY KEY (id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: fn4x_ingredients
#------------------------------------------------------------

CREATE TABLE fn4x_ingredients(
        id                            Int  Auto_increment  NOT NULL ,
        name                          Varchar (100) NOT NULL ,
        id_ingredientsCategories Int NOT NULL
	,CONSTRAINT ingredients_PK PRIMARY KEY (id)

	,CONSTRAINT ingredients_ingredientsCategories_FK FOREIGN KEY (id_ingredientsCategories) REFERENCES fn4x_ingredientsCategories(id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: fn4x_units
#------------------------------------------------------------

CREATE TABLE fn4x_units(
        id   Int  Auto_increment  NOT NULL ,
        name Varchar (10) NOT NULL
	,CONSTRAINT units_PK PRIMARY KEY (id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: fn4x_images
#------------------------------------------------------------

CREATE TABLE fn4x_images(
        id               Int  Auto_increment  NOT NULL ,
        name             Varchar (255) NOT NULL ,
        cover            Int NOT NULL ,
        id_recipes Int NOT NULL
	,CONSTRAINT images_PK PRIMARY KEY (id)

	,CONSTRAINT images_recipes_FK FOREIGN KEY (id_recipes) REFERENCES fn4x_recipes(id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: fn4x_recipesSteps
#------------------------------------------------------------

CREATE TABLE fn4x_recipesSteps(
        id               Int  Auto_increment  NOT NULL ,
        text             Text NOT NULL ,
        number           Int NOT NULL ,
        id_recipes Int NOT NULL
	,CONSTRAINT recipesSteps_PK PRIMARY KEY (id)

	,CONSTRAINT recipesSteps_recipes_FK FOREIGN KEY (id_recipes) REFERENCES fn4x_recipes(id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: fn4x_recipesContent
#------------------------------------------------------------

CREATE TABLE fn4x_recipesContent(
        id_recipesContent    Int NOT NULL ,
        id_ingredients Int NOT NULL ,
        id_units       Int NOT NULL ,
        quantity            Float NOT NULL
	,CONSTRAINT recipesContent_PK PRIMARY KEY (id_recipesContent ,id_ingredients,id_units)

	,CONSTRAINT recipesContent_recipes_FK FOREIGN KEY (id) REFERENCES fn4x_recipes(id)
	,CONSTRAINT recipesContent_ingredients0_FK FOREIGN KEY (id_ingredients) REFERENCES fn4x_ingredients(id)
	,CONSTRAINT recipesContent_units1_FK FOREIGN KEY (id_units) REFERENCES fn4x_units(id)
)ENGINE=InnoDB;

