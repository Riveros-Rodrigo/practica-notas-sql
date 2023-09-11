CREATE SCHEMA `notas` ;
-- creo la tabla notas
CREATE TABLE `notas`.`notas` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(100) NOT NULL,
  `createDate` DATE NOT NULL,
  `updateDate` DATE NOT NULL,
  `description` TEXT NOT NULL,
  `delete` TINYINT NOT NULL,
  PRIMARY KEY (`id`));
  -- creo tabla usuarios
  CREATE TABLE `notas`.`usuario` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  `email` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`));
-- creo tabla categorias
CREATE TABLE `notas`.`categories` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`));
  -- creo las fk
  ALTER TABLE `notas`.`notas` 
ADD COLUMN `id_users` INT NOT NULL AFTER `delete`,
ADD COLUMN `id_categories` INT NOT NULL AFTER `id_users`,
ADD INDEX `fk_notes_users_idx` (`id_users` ASC),
ADD INDEX `fk_notes_categories_idx` (`id_categories` ASC);
;
ALTER TABLE `notas`.`notas` 
ADD CONSTRAINT `fk_notes_users`
  FOREIGN KEY (`id_users`)
  REFERENCES `notas`.`usuario` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_notes_categories`
  FOREIGN KEY (`id_categories`)
  REFERENCES `notas`.`categories` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
  -- agrego usuarios
  INSERT INTO `notas`.`usuario` (`id`, `name`, `email`) VALUES ('1', 'rodrigo', 'rorigo@gmail.com');
INSERT INTO `notas`.`usuario` (`id`, `name`, `email`) VALUES ('2', 'jazmin', 'jazmin@gmail.com');
INSERT INTO `notas`.`usuario` (`id`, `name`, `email`) VALUES ('3', 'alejandro', 'alejandro@gmail.com');
INSERT INTO `notas`.`usuario` (`id`, `name`, `email`) VALUES ('4', 'mabel', 'mabel@gmail.com');
INSERT INTO `notas`.`usuario` (`id`, `name`, `email`) VALUES ('5', 'marco', 'marco@gmail.com');
INSERT INTO `notas`.`usuario` (`id`, `name`, `email`) VALUES ('6', 'sergio', 'sergio@gmail.com');
INSERT INTO `notas`.`usuario` (`id`, `name`, `email`) VALUES ('7', 'sebastian', 'sebas@gmail.com');
INSERT INTO `notas`.`usuario` (`id`, `name`, `email`) VALUES ('8', 'yani', 'yani@gmail.com');
INSERT INTO `notas`.`usuario` (`id`, `name`, `email`) VALUES ('9', 'nano', 'nano@gmail.com');
INSERT INTO `notas`.`usuario` (`id`, `name`, `email`) VALUES ('10', 'messi', 'messi@gmail.com');
-- agrego categorias

INSERT INTO `notas`.`categories` (`id`, `name`) VALUES ('1', 'matematicas');
INSERT INTO `notas`.`categories` (`id`, `name`) VALUES ('2', 'ingles');
INSERT INTO `notas`.`categories` (`id`, `name`) VALUES ('3', 'historia');
INSERT INTO `notas`.`categories` (`id`, `name`) VALUES ('4', 'geometria');
INSERT INTO `notas`.`categories` (`id`, `name`) VALUES ('5', 'geografia');
INSERT INTO `notas`.`categories` (`id`, `name`) VALUES ('6', 'contabilidad');
INSERT INTO `notas`.`categories` (`id`, `name`) VALUES ('7', 'literatura');
INSERT INTO `notas`.`categories` (`id`, `name`) VALUES ('8', 'biofisica');
INSERT INTO `notas`.`categories` (`id`, `name`) VALUES ('9', 'informatica');
INSERT INTO `notas`.`categories` (`id`, `name`) VALUES ('10', 'gimnasia');

-- agrego notas
INSERT INTO `notas`.`notas` (`id`, `title`, `createDate`, `description`, `id_users`, `id_categories`) VALUES ('1', 'examen', 'now()', 'este es un examen de historia', '1', '3');
INSERT INTO `notas`.`notas` (`id`, `title`, `createDate`, `description`, `id_users`, `id_categories`) VALUES ('2', 'examen', now() , 'este es un examen de ingles', '2', '2');
INSERT INTO `notas`.`notas` (`id`, `title`, `createDate`, `description`, `id_users`, `id_categories`) VALUES ('3', 'examen', now() , 'este es un examen de matematicas', '3', '1');
INSERT INTO `notas`.`notas` (`id`, `title`, `createDate`, `description`, `id_users`, `id_categories`) VALUES ('4', 'examen', now(), 'examen de geometria', '4', '4');
INSERT INTO `notas`.`notas` (`id`, `title`, `createDate`, `description`, `id_users`, `id_categories`) VALUES ('5', 'examen', now(), 'examen de geografia', '5', '5');
INSERT INTO `notas`.`notas` (`id`, `title`, `createDate`, `description`, `id_users`, `id_categories`) VALUES ('6', 'examen', now(), 'examen de contabilidad', '6', '6');
INSERT INTO `notas`.`notas` (`id`, `title`, `createDate`, `description`, `id_users`, `id_categories`) VALUES ('7', 'examen', now(), 'examen de literatura', '7', '7');
INSERT INTO `notas`.`notas` (`id`, `title`, `createDate`, `description`, `id_users`, `id_categories`) VALUES ('8', 'examen', now(), 'examen de biofisica', '8', '8');
INSERT INTO `notas`.`notas` (`id`, `title`, `createDate`, `description`, `id_users`, `id_categories`) VALUES ('9', 'examen', now(), 'examen de informatica', '9', '9');
INSERT INTO `notas`.`notas` (`id`, `title`, `createDate`, `description`, `id_users`, `id_categories`) VALUES ('10', 'examen', now(), 'examen de gimnasia', '10', '10');

