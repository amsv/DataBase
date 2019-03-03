ALTER TABLE `countryandtown`.`town` 
DROP FOREIGN KEY `fk_district_town`;
ALTER TABLE `countryandtown`.`town` 
DROP COLUMN `district_id`,
ADD COLUMN `important` TINYINT(1) NOT NULL AFTER `name`,
DROP INDEX `fk_district_town_idx` ;

ALTER TABLE `countryandtown`.`town` 
DROP FOREIGN KEY `fk_country_town`,
DROP FOREIGN KEY `fk_area_town`;
ALTER TABLE `countryandtown`.`town` 
DROP INDEX `fk_country_town_idx` ,
DROP INDEX `fk_area_town_idx` ;

ALTER TABLE `countryandtown`.`area` 
ADD COLUMN `country_id` INT NULL AFTER `name`,
ADD INDEX `Foreign Key _countries (id)_idx` (`country_id` ASC) VISIBLE;
;
ALTER TABLE `countryandtown`.`area` 
ADD CONSTRAINT `Foreign Key _countries (id)`
  FOREIGN KEY (`country_id`)
  REFERENCES `countryandtown`.`country` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

DROP TABLE `countryandtown`.`district`;

ALTER TABLE `countryandtown`.`town` 
ADD CONSTRAINT `Foreign Key _regions (id)`
  FOREIGN KEY (`area_id`)
  REFERENCES `countryandtown`.`area` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
  
ALTER TABLE `countryandtown`.`town` 
DROP COLUMN `country_id`;

ALTER TABLE `countryandtown`.`area` 
CHANGE COLUMN `name` `title` VARCHAR(150) NOT NULL ;

ALTER TABLE `countryandtown`.`country` 
CHANGE COLUMN `name` `title` VARCHAR(150) NOT NULL ;

ALTER TABLE `countryandtown`.`town` 
CHANGE COLUMN `name` `title` VARCHAR(150) NOT NULL ;

ALTER TABLE `countryandtown`.`town` 
DROP FOREIGN KEY `Foreign Key _regions (id)`;
ALTER TABLE `countryandtown`.`town` 
CHANGE COLUMN `area_id` `region_id` INT(11) NULL DEFAULT NULL ;
ALTER TABLE `countryandtown`.`town` 
ADD CONSTRAINT `Foreign Key _regions (id)`
  FOREIGN KEY (`region_id`)
  REFERENCES `countryandtown`.`area` (`id`);

ALTER TABLE `countryandtown`.`country` 
RENAME TO  `countryandtown`.`countries` ;
ALTER TABLE `countryandtown`.`area` 
RENAME TO  `countryandtown`.`regions` ;
ALTER TABLE `countryandtown`.`town` 
RENAME TO  `countryandtown`.`cities` ;

ALTER TABLE `countryandtown`.`countries` 
ADD UNIQUE INDEX `title_UNIQUE` (`title` ASC) VISIBLE;
ALTER TABLE `countryandtown`.`regions` 
ADD UNIQUE INDEX `title_UNIQUE` (`title` ASC) VISIBLE;
ALTER TABLE `countryandtown`.`cities` 
ADD UNIQUE INDEX `title_UNIQUE` (`title` ASC) VISIBLE;
  