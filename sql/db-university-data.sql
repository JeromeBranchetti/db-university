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


INSERT INTO `teachers`(`name`,`surname`,`phone`, `email`, `office_address`) VALUES ('Luca', 'Rossi' , 1041217723, 'informatica1PROFESSORRI1@polimi.it','piano_primo_porta_1A');
INSERT INTO `teachers`(`name`,`surname`,`phone`, `email`, `office_address`) VALUES ('Luca2', 'Rossi2' , 1041217724, 'informatica1PROFESSORRI2@polimi.it','piano_primo_porta_2B');
INSERT INTO `teachers`(`name`,`surname`,`phone`, `email`, `office_address`) VALUES ('Luca3', 'Rossi3' , 1041217724, 'informatica1PROFESSORRI3@polimi.it','piano_primo_porta_3C');

INSERT INTO `courses`(`name`, `description`, `cfu`, `degrees_id`) VALUES('Analisi', 'il corso di analisi ?? un corso di matematica avanzata che parla di calcolo differenziale', 6, 1);
INSERT INTO `courses`(`name`, `description`, `cfu`, `degrees_id`) VALUES('Analisi2', 'il corso di analisi ?? un corso di matematica avanzata che parla di calcolo differenziale intermedio', 9, 2);
INSERT INTO `courses`(`name`, `description`, `cfu`, `degrees_id`) VALUES('Analisi3', 'il corso di analisi ?? un corso di matematica avanzata che parla di calcolo differenziale avanzato', 12, 3);

INSERT INTO `exams`(`date`, `hour`, `location`, `courses_id`) VALUES('2015-05-06', '09:30:00', 'P.za Leonardo da Vinci, Milano', 1);
INSERT INTO `exams`(`date`, `hour`, `location`, `courses_id`) VALUES('2015-06-07', '10:30:00', 'P.za Leonardo da Vinci, Milano', 2);
INSERT INTO `exams`(`date`, `hour`, `location`, `courses_id`) VALUES('2015-08-08', '11:30:00', 'P.za Leonardo da Vinci, Milano', 3);


INSERT INTO `courses_teachers`(`courses_id`,`teachers_id`) VALUES(1,1);
INSERT INTO `courses_teachers`(`courses_id`,`teachers_id`) VALUES(2,1);
INSERT INTO `courses_teachers`(`courses_id`,`teachers_id`) VALUES(2,3);

INSERT INTO `vote`(`students_id`,`exams_id`, `vote`) VALUES(1,1, 30);
INSERT INTO `vote`(`students_id`,`exams_id`, `vote`) VALUES(2,1, 23);
INSERT INTO `vote`(`students_id`,`exams_id`, `vote`) VALUES(2,3, 14);


