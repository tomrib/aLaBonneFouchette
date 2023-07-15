/*------------------------------------------------------------
*        Script SQLSERVER 
------------------------------------------------------------*/


/*------------------------------------------------------------
-- Table: fn4x_recipesCategories
------------------------------------------------------------*/
CREATE TABLE fn4x_recipesCategories(
	id     INT Auto_increment NOT NULL ,
	name   VARCHAR (20) NOT NULL  ,
	CONSTRAINT recipesCategories_PK PRIMARY KEY (id)
);


/*------------------------------------------------------------
-- Table: fn4x_ingredientsCategories
------------------------------------------------------------*/
CREATE TABLE fn4x_ingredientsCategories(
	id     INT Auto_increment NOT NULL ,
	name   VARCHAR (25) NOT NULL  ,
	CONSTRAINT ingredientsCategories_PK PRIMARY KEY (id)
);


/*------------------------------------------------------------
-- Table: fn4x_ingredients
------------------------------------------------------------*/
CREATE TABLE fn4x_ingredients(
	id                              INT Auto_increment NOT NULL ,
	name                            VARCHAR (100) NOT NULL ,
	id_ingredientsCategories   INT  NOT NULL  ,
	CONSTRAINT ingredients_PK PRIMARY KEY (id)

	,CONSTRAINT ingredients_ingredientsCategories_FK FOREIGN KEY (id_ingredientsCategories) REFERENCES fn4x_ingredientsCategories(id)
);


/*------------------------------------------------------------
-- Table: fn4x_units
------------------------------------------------------------*/
CREATE TABLE fn4x_units(
	id     INT Auto_increment NOT NULL ,
	name   VARCHAR (10) NOT NULL  ,
	CONSTRAINT units_PK PRIMARY KEY (id)
);


/*------------------------------------------------------------
-- Table: fn4x_member
------------------------------------------------------------*/
CREATE TABLE fn4x_member(
	id     INT Auto_increment NOT NULL ,
	name   VARCHAR (20) NOT NULL  ,
	CONSTRAINT member_PK PRIMARY KEY (id)
);


/*------------------------------------------------------------
-- Table: fn4x_users
------------------------------------------------------------*/
CREATE TABLE fn4x_users(
	id               INT Auto_increment NOT NULL ,
	lastname         VARCHAR (20) NOT NULL ,
	firtsname        VARCHAR (20) NOT NULL ,
	email            VARCHAR (100) NOT NULL ,
	password         VARCHAR (255) NOT NULL ,
	id_member   INT  NOT NULL  ,
	CONSTRAINT users_PK PRIMARY KEY (id)

	,CONSTRAINT users_member_FK FOREIGN KEY (id_member) REFERENCES fn4x_member(id)
);


/*------------------------------------------------------------
-- Table:  fn4x_recipes
------------------------------------------------------------*/
CREATE TABLE fn4x_recipes(
	id                          INT Auto_increment NOT NULL ,
	name                        VARCHAR (25) NOT NULL ,
	preparationTime             TIME (2) NOT NULL ,
	cookingTime                 TIME (2) NOT NULL ,
	publicatiomDate             DATETIME NOT NULL ,
	id_users               INT  NOT NULL ,
	id_recipesCategories   INT  NOT NULL  ,
	CONSTRAINT recipes_PK PRIMARY KEY (id)

	,CONSTRAINT recipes_users_FK FOREIGN KEY (id_users) REFERENCES fn4x_users(id)
	,CONSTRAINT recipes_recipesCategories0_FK FOREIGN KEY (id_recipesCategories) REFERENCES fn4x_recipesCategories(id)
);


/*------------------------------------------------------------
-- Table: fn4x_images
------------------------------------------------------------*/
CREATE TABLE fn4x_images(
	id                 INT Auto_increment NOT NULL ,
	name               VARCHAR (255) NOT NULL ,
	cover              INT  NOT NULL ,
	id_recipes   INT  NOT NULL  ,
	CONSTRAINT images_PK PRIMARY KEY (id)

	,CONSTRAINT images_recipes_FK FOREIGN KEY (id_recipes) REFERENCES fn4x_recipes(id)
);


/*------------------------------------------------------------
-- Table: fn4x_recipesSteps
------------------------------------------------------------*/
CREATE TABLE fn4x_recipesSteps(
	id                 INT Auto_increment NOT NULL ,
	text               TEXT  NOT NULL ,
	nuber                 INT  NOT NULL ,
	id_recipes   INT  NOT NULL  ,
	CONSTRAINT recipesSteps_PK PRIMARY KEY (id)

	,CONSTRAINT recipesSteps_recipes_FK FOREIGN KEY (id_recipes) REFERENCES fn4x_recipes(id)
);


/*------------------------------------------------------------
-- Table: fn4x_recipesContent
------------------------------------------------------------*/
CREATE TABLE fn4x_recipesContent(
	id_recipes                    INT  NOT NULL ,
	id_ingredients   INT  NOT NULL ,
	id_units         INT  NOT NULL ,
	quantity              FLOAT  NOT NULL  ,
	CONSTRAINT recipesContent_PK PRIMARY KEY (id_recipes,id_ingredients,id_units)

	,CONSTRAINT recipesContent_recipes_FK FOREIGN KEY (id_recipes) REFERENCES fn4x_recipes(id)
	,CONSTRAINT recipesContent_ingredients0_FK FOREIGN KEY (id_ingredients) REFERENCES fn4x_ingredients(id)
	,CONSTRAINT recipesContent_units1_FK FOREIGN KEY (id_units) REFERENCES fn4x_units(id)
);



