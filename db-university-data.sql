USE `test_university`;


-- DATI
INSERT INTO `departments`(`name`,`address`, `phone`, `email`, `website`, `head_of_department`) VALUES ('Ingegneria', 'P.za Leonardo da Vinci, Milano', 1331212123, 'emaildip@polimi.it', 'www.dipartimetomilano.it', 'Giovanni Andreotti');
INSERT INTO `departments`(`name`,`address`, `phone`, `email`, `website`, `head_of_department`) VALUES ('Medicina', 'P.za Matteotti, Perugia', 1331217723, 'emaildip@unipg.it', 'www.dipartimetoperugia.it', 'Susanna Meloni');
INSERT INTO `departments`(`name`,`address`, `phone`, `email`, `website`, `head_of_department`) VALUES ('Filosofia', 'P.za Canarino, Cagliari', 1335512123, 'emaildip@punica.it', 'www.dipartimetocagliario.it', 'Jack Sparrow');


INSERT INTO `degrees`(`name`,`email`,`level`, `departments_id`) VALUES ('Laurea in Ingegneria Informatica', 'informatica1@polimi.it', 'Triennale', 1);
INSERT INTO `degrees`(`name`,`email`,`level`, `departments_id`) VALUES ('Laurea in Ingegneria Meccanica', 'informatica2@polimi.it', 'Magistrale', 1);
INSERT INTO `degrees`(`name`,`email`,`level`, `departments_id`) VALUES ('Laurea in Ingegneria Elettrica', 'informatica3@polimi.it', 'Dottorato', 1);

INSERT INTO `students`(`name`, `surname`, `date_of_birth`, `fiscal_code`, `enrolment_date`, `registration_number`, `email`,`degrees_id`) VALUES ('Marco', 'Rossi', '2000-01-01', '123456789ABCDEFG', '2010-01-01', 987, 'informatica1STUDENTI@polimi.it',1);
INSERT INTO `students`(`name`, `surname`, `date_of_birth`, `fiscal_code`, `enrolment_date`, `registration_number`, `email`,`degrees_id`) VALUES ('Giulia', 'Gialletti', '2000-02-02', '123456780ABZDEFG', '2010-02-02', 654, 'informatica2STUDENTI@polimi.it',2);
INSERT INTO `students`(`name`, `surname`, `date_of_birth`, `fiscal_code`, `enrolment_date`, `registration_number`, `email`,`degrees_id`) VALUES ('Zlatan', 'Ibra', '2000-03-03', '123456709ABCDEHG', '2010-03-03', 321, 'informatica3STUDENTI@polimi.it',3);

INSERT INTO `departments_degrees`(`departments_id`, `degrees_id`) VALUES(1,1);
INSERT INTO `departments_degrees`(`departments_id`, `degrees_id`) VALUES(2,1);
INSERT INTO `departments_degrees`(`departments_id`, `degrees_id`) VALUES(1,3);
INSERT INTO `departments_degrees`(`departments_id`, `degrees_id`) VALUES(2,3);


INSERT INTO `teachers`(`name`,`surname`,`phone`, `email`, `office_address`) VALUES ('Luca', 'Rossi' , 1041217723, 'informatica1PROFESSORRI@polimi.it','piano_primo_porta_1A');

INSERT INTO `courses`(`name`, `description`, `cfu`, `degrees_id`) VALUES('Analisi', 'il corso di analisi è un corso di matematica avanzata che parla di calcolo differenziale', 9, 2);

INSERT INTO `exams`(`date`, `hour`, `location`, `courses_id`) VALUES('2015-05-06', '09:30:00', 'P.za Leonardo da Vinci, Milano', 1);
