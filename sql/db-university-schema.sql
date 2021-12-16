-- SCHEMA
CREATE DATABASE `test_university`;
USE `test_university`;

CREATE TABLE `departments`(
	`id` INT NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(100) NOT NULL,
	`address` VARCHAR(255),
	`phone`BIGINT NOT NULL,
	`email` VARCHAR(100) NOT NULL,
	`website` VARCHAR(100),
	`head_of_department` VARCHAR(100) NOT NULL,
	PRIMARY KEY(`id`)
);

CREATE TABLE `degrees`(
	`id`INT NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(255) NOT NULL,
	`email`VARCHAR(100),
	`level` VARCHAR(100) NOT NULL,
	`departments_id` INT NOT NULL,
	PRIMARY KEY(`id`),
	FOREIGN KEY(`departments_id`) REFERENCES departments(`id`)
);


CREATE TABLE `students`(
	`id`INT NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(255) NOT NULL,
	`surname` VARCHAR(255) NOT NULL,
	`date_of_birth` DATE,
	`fiscal_code` VARCHAR(16) NOT NULL,
	`enrolment_date` DATE,
	`registration_number` SMALLINT NOT NULL ,
	`email` VARCHAR(100),
	`degrees_id` INT NOT NULL,
	PRIMARY KEY(`id`),
	FOREIGN KEY(`degrees_id`) REFERENCES `degrees`(`id`)
);

CREATE TABLE `teachers`(
	`id`INT NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(255) NOT NULL,
	`surname` VARCHAR(255) NOT NULL,
	`phone` INT NOT NULL,
	`email` VARCHAR(100),
	`office_address` VARCHAR(100),
	PRIMARY KEY(`id`)
);

CREATE TABLE `courses`(
	`id` INT NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(255) NOT NULL,
	`description` TEXT NOT NULL,
	`website` VARCHAR(100),
	`cfu` TINYINT NOT NULL,
	`degrees_id` INT NOT NULL,
	PRIMARY KEY(`id`),
	FOREIGN KEY(`degrees_id`) REFERENCES `degrees`(`id`)
);

CREATE TABLE `exams`(
	`id` INT NOT NULL AUTO_INCREMENT,
	`date` DATE NOT NULL,
	`hour` TIME NOT NULL,
	`location` VARCHAR(100) NOT NULL,
	`address` VARCHAR(255),
	`courses_id` INT NOT NULL,
	PRIMARY KEY(`id`),
	FOREIGN KEY(`courses_id`) REFERENCES `courses`(`id`) 
);


CREATE TABLE `courses_teachers`(
	`courses_id` INT NOT NULL,
	`teachers_id` INT NOT NULL,
	PRIMARY KEY(`courses_id`,`teachers_id`),
	FOREIGN KEY(`courses_id`) REFERENCES courses(`id`),
	FOREIGN KEY(`teachers_id`) REFERENCES teachers(`id`)
);

CREATE TABLE `vote`(
	`students_id` INT NOT NULL,
	`exams_id` INT NOT NULL,
	`vote`SMALLINT NOT NULL,
	PRIMARY KEY(`students_id`,`exams_id`),
	FOREIGN KEY(`students_id`) REFERENCES students(`id`),
	FOREIGN KEY(`exams_id`) REFERENCES exams(`id`)
);


