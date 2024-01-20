DROP TABLE IF EXISTS lesson;

DROP TABLE IF EXISTS student_study_group;

DROP TABLE IF EXISTS discipline;

DROP TABLE IF EXISTS hometask;

CREATE TABLE
    IF NOT EXISTS discipline (
        discipline_id SERIAL NOT NULL PRIMARY KEY,
        discipline_name VARCHAR(30) NOT NULL
    );

DROP TABLE IF EXISTS teacher;

CREATE TABLE
    IF NOT EXISTS teacher (
        teacher_id SERIAL NOT NULL PRIMARY KEY,
        teacher_login VARCHAR(30) NOT NULL,
        teacher_password VARCHAR(30) NOT NULL,
        teacher_name VARCHAR(30) NOT NULL
    );

DROP TABLE IF EXISTS study_group;

CREATE TABLE
    IF NOT EXISTS study_group (
        study_group_id SERIAL NOT NULL PRIMARY KEY,
        study_group_name VARCHAR(30) NOT NULL
    );

DROP TABLE IF EXISTS student;

CREATE TABLE
    IF NOT EXISTS student (
        student_id SERIAL NOT NULL PRIMARY KEY,
        student_login VARCHAR(30) NOT NULL,
        student_password VARCHAR(30) NOT NULL,
        student_name VARCHAR(30) NOT NULL
    );

CREATE TABLE
    IF NOT EXISTS administator (
        administrator_id SERIAL NOT NULL PRIMARY KEY,
        administator_login VARCHAR(30) NOT NULL,
        administator_password VARCHAR(30) NOT NULL,
        administrator_name VARCHAR(30) NOT NULL
    );

CREATE TABLE
    IF NOT EXISTS student_study_group (
        student_study_group_id SERIAL NOT NULL PRIMARY KEY,
        study_group_id SERIAL NOT NULL,
        student_id SERIAL NOT NULL,
        FOREIGN KEY (study_group_id) REFERENCES study_group (study_group_id) ON DELETE CASCADE,
        FOREIGN KEY (student_id) REFERENCES student (student_id) ON DELETE CASCADE
    );

DROP TABLE IF EXISTS room;

CREATE TABLE
    IF NOT EXISTS room (
        room_id SERIAL NOT NULL PRIMARY KEY,
        room_name VARCHAR(30) NOT NULL
    );

CREATE TABLE
    IF NOT EXISTS hometask (
        hometask_id SERIAL NOT NULL PRIMARY KEY,
        description VARCHAR(255) NOT NULL,
        attachments VARCHAR(255) NOT NULL,
        max_score INT NOT NULL,
        due_date DATE NOT NULL,
        test_id INT
    );

CREATE TABLE
    IF NOT EXISTS lesson (
        lesson_id SERIAL NOT NULL PRIMARY KEY,
        discipline_id SERIAL NOT NULL,
        teacher_id SERIAL NOT NULL,
        study_group_id SERIAL NOT NULL,
        room_id SERIAL NOT NULL,
        lesson_date DATE NOT NULL,
        duration INT NOT NULL,
        start_time TIME NOT NULL,
        hometask_id SERIAL NOT NULL,
        FOREIGN KEY (hometask_id) REFERENCES hometask (hometask_id) ON DELETE CASCADE,
        FOREIGN KEY (discipline_id) REFERENCES discipline (discipline_id) ON DELETE CASCADE,
        FOREIGN KEY (teacher_id) REFERENCES teacher (teacher_id) ON DELETE CASCADE,
        FOREIGN KEY (study_group_id) REFERENCES study_group (study_group_id) ON DELETE CASCADE,
        FOREIGN KEY (room_id) REFERENCES room (room_id) ON DELETE CASCADE
    );

-- discipline data
insert into
    discipline (discipline_name)
values
    ('algebra');

insert into
    discipline (discipline_name)
values
    ('geometry');

insert into
    discipline (discipline_name)
values
    ('statistics');

insert into
    discipline (discipline_name)
values
    ('calculus');

insert into
    discipline (discipline_name)
values
    ('python course');

insert into
    discipline (discipline_name)
values
    ('Math extended');

-- teacher data
insert into
    teacher (teacher_name)
values
    ('Arne Stonner');

insert into
    teacher (teacher_name)
values
    ('Pat Chatelain');

insert into
    teacher (teacher_name)
values
    ('Darrelle Aldcorn');

insert into
    teacher (teacher_name)
values
    ('Roth Olpin');

insert into
    teacher (teacher_name)
values
    ('Berenice Ivison');

insert into
    teacher (teacher_name)
values
    ('Douglas Lucy');

insert into
    teacher (teacher_name)
values
    ('Munroe Montford');

insert into
    teacher (teacher_name)
values
    ('Lesli Tetsall');

-- study_group data
insert into
    study_group (study_group_name)
values
    ('python10_2020');

insert into
    study_group (study_group_name)
values
    ('python11_2022');

insert into
    study_group (study_group_name)
values
    ('python11_2023');

insert into
    study_group (study_group_name)
values
    ('math10_2021');

insert into
    study_group (study_group_name)
values
    ('math10_2022');

insert into
    study_group (study_group_name)
values
    ('math11_2023');

insert into
    study_group (study_group_name)
values
    ('statistics10_2020');

insert into
    study_group (study_group_name)
values
    ('statistics10_2022');

insert into
    study_group (study_group_name)
values
    ('statistics11_2023');

insert into
    study_group (study_group_name)
values
    ('english10_2020');

-- student data
insert into
    student (student_name)
values
    ('Delphinia Reeders');

insert into
    student (student_name)
values
    ('Patricio Caps');

insert into
    student (student_name)
values
    ('Alwin Grinham');

insert into
    student (student_name)
values
    ('Avie Warwicker');

insert into
    student (student_name)
values
    ('Shayna Goodbanne');

insert into
    student (student_name)
values
    ('Rina Van Son');

insert into
    student (student_name)
values
    ('Buiron Olenikov');

insert into
    student (student_name)
values
    ('Amitie Linkie');

insert into
    student (student_name)
values
    ('Imelda Ambroisin');

insert into
    student (student_name)
values
    ('Stanislaw Chambers');

insert into
    student (student_name)
values
    ('Tome Kment');

insert into
    student (student_name)
values
    ('Heda Gerge');

insert into
    student (student_name)
values
    ('Willi Jodlkowski');

insert into
    student (student_name)
values
    ('Darby Mott');

insert into
    student (student_name)
values
    ('Boy Romain');

insert into
    student (student_name)
values
    ('Roderich Honatsch');

insert into
    student (student_name)
values
    ('Gene Eldrid');

insert into
    student (student_name)
values
    ('Lynsey Breydin');

insert into
    student (student_name)
values
    ('Lambert Bleesing');

insert into
    student (student_name)
values
    ('Maryanne Mouatt');

insert into
    student (student_name)
values
    ('Tomasina Grinikhinov');

insert into
    student (student_name)
values
    ('Patrizio Hatwells');

insert into
    student (student_name)
values
    ('Vaughan Bourges');

insert into
    student (student_name)
values
    ('Ketti Witson');

insert into
    student (student_name)
values
    ('Blinny Ousby');

insert into
    student (student_name)
values
    ('Frank Tchaikovsky');

insert into
    student (student_name)
values
    ('Garry Swyer-Sexey');

insert into
    student (student_name)
values
    ('Misha Benoit');

insert into
    student (student_name)
values
    ('Cirilo Doring');

insert into
    student (student_name)
values
    ('Doy Minghetti');

insert into
    student (student_name)
values
    ('Obadias Worts');

insert into
    student (student_name)
values
    ('Tallou Preator');

insert into
    student (student_name)
values
    ('Loren Chastey');

insert into
    student (student_name)
values
    ('Farly Splaven');

insert into
    student (student_name)
values
    ('Hermine Dairton');

insert into
    student (student_name)
values
    ('Drud Badcock');

insert into
    student (student_name)
values
    ('Xavier Cattellion');

insert into
    student (student_name)
values
    ('Gabriela Rivitt');

insert into
    student (student_name)
values
    ('Elyse Willcot');

insert into
    student (student_name)
values
    ('Janifer Stovin');

insert into
    student (student_name)
values
    ('Kimmy Aldgate');

insert into
    student (student_name)
values
    ('Maxi Diggle');

insert into
    student (student_name)
values
    ('Sebastiano Spensley');

insert into
    student (student_name)
values
    ('Forest Duling');

insert into
    student (student_name)
values
    ('Eleanora Bruntje');

insert into
    student (student_name)
values
    ('Dugald Fermin');

insert into
    student (student_name)
values
    ('Blair Fortman');

insert into
    student (student_name)
values
    ('Camille Coxhell');

insert into
    student (student_name)
values
    ('Candy Gaskall');

insert into
    student (student_name)
values
    ('Clyve Riggoll');

insert into
    student (student_name)
values
    ('Dennis Ferguson');

insert into
    student (student_name)
values
    ('Bradford Jodkowski');

insert into
    student (student_name)
values
    ('Taddeo Halladey');

insert into
    student (student_name)
values
    ('Ricca Tomczak');

insert into
    student (student_name)
values
    ('Feodora Puleque');

insert into
    student (student_name)
values
    ('Twila Boliver');

insert into
    student (student_name)
values
    ('Brinna Slegg');

insert into
    student (student_name)
values
    ('Loreen Ghirardi');

insert into
    student (student_name)
values
    ('Pierette Blum');

insert into
    student (student_name)
values
    ('Syd McDermott');

insert into
    student (student_name)
values
    ('Xylina Ramsby');

insert into
    student (student_name)
values
    ('Jillie Dampier');

insert into
    student (student_name)
values
    ('Bentlee Whitmell');

insert into
    student (student_name)
values
    ('Munmro Goodings');

insert into
    student (student_name)
values
    ('Anthony Spatoni');

insert into
    student (student_name)
values
    ('Hephzibah Fulger');

insert into
    student (student_name)
values
    ('Caesar Hinckley');

insert into
    student (student_name)
values
    ('Sybyl Finch');

insert into
    student (student_name)
values
    ('Hortensia Woolfitt');

insert into
    student (student_name)
values
    ('Kelby Loblie');

insert into
    student (student_name)
values
    ('Royce Vasyagin');

insert into
    student (student_name)
values
    ('Dominick Greenstock');

insert into
    student (student_name)
values
    ('Belvia Tipple');

insert into
    student (student_name)
values
    ('Sibylla Hanner');

insert into
    student (student_name)
values
    ('Christyna Ferrar');

insert into
    student (student_name)
values
    ('Corabelle Boor');

insert into
    student (student_name)
values
    ('Kerwinn Cropton');

insert into
    student (student_name)
values
    ('Titos Compton');

insert into
    student (student_name)
values
    ('Sampson Skett');

insert into
    student (student_name)
values
    ('Eustacia Choppin');

insert into
    student (student_name)
values
    ('Sherye Grono');

insert into
    student (student_name)
values
    ('Boigie Probin');

insert into
    student (student_name)
values
    ('Louisa Ancketill');

insert into
    student (student_name)
values
    ('Filip Balint');

insert into
    student (student_name)
values
    ('Chaunce Sarsfield');

insert into
    student (student_name)
values
    ('Vivianna Astill');

insert into
    student (student_name)
values
    ('Giacobo Battersby');

insert into
    student (student_name)
values
    ('Matilde McCallister');

insert into
    student (student_name)
values
    ('Alejandro Maple');

insert into
    student (student_name)
values
    ('Leontyne Nial');

insert into
    student (student_name)
values
    ('Jule Gietz');

insert into
    student (student_name)
values
    ('Doe Poznanski');

insert into
    student (student_name)
values
    ('Anselma Lempenny');

insert into
    student (student_name)
values
    ('Bernardo Croutear');

insert into
    student (student_name)
values
    ('Cassy Beeres');

insert into
    student (student_name)
values
    ('Dinah Freer');

insert into
    student (student_name)
values
    ('Frieda Borsnall');

insert into
    student (student_name)
values
    ('Velma Le Franc');

insert into
    student (student_name)
values
    ('Odilia O''Codihie');

insert into
    student (student_name)
values
    ('Leroy Lomasna');

-- student_study_group
insert into
    student_study_group (study_group_id, student_id)
values
    (1, 1);

insert into
    student_study_group (study_group_id, student_id)
values
    (1, 2);

insert into
    student_study_group (study_group_id, student_id)
values
    (1, 3);

insert into
    student_study_group (study_group_id, student_id)
values
    (1, 4);

insert into
    student_study_group (study_group_id, student_id)
values
    (1, 5);

insert into
    student_study_group (study_group_id, student_id)
values
    (1, 6);

insert into
    student_study_group (study_group_id, student_id)
values
    (1, 7);

insert into
    student_study_group (study_group_id, student_id)
values
    (1, 8);

insert into
    student_study_group (study_group_id, student_id)
values
    (1, 9);

insert into
    student_study_group (study_group_id, student_id)
values
    (1, 10);

insert into
    student_study_group (study_group_id, student_id)
values
    (1, 11);

insert into
    student_study_group (study_group_id, student_id)
values
    (1, 12);

insert into
    student_study_group (study_group_id, student_id)
values
    (2, 13);

insert into
    student_study_group (study_group_id, student_id)
values
    (2, 14);

insert into
    student_study_group (study_group_id, student_id)
values
    (2, 15);

insert into
    student_study_group (study_group_id, student_id)
values
    (2, 16);

insert into
    student_study_group (study_group_id, student_id)
values
    (2, 17);

insert into
    student_study_group (study_group_id, student_id)
values
    (2, 18);

insert into
    student_study_group (study_group_id, student_id)
values
    (2, 19);

insert into
    student_study_group (study_group_id, student_id)
values
    (2, 20);

insert into
    student_study_group (study_group_id, student_id)
values
    (2, 21);

insert into
    student_study_group (study_group_id, student_id)
values
    (3, 22);

insert into
    student_study_group (study_group_id, student_id)
values
    (3, 23);

insert into
    student_study_group (study_group_id, student_id)
values
    (3, 24);

insert into
    student_study_group (study_group_id, student_id)
values
    (3, 25);

insert into
    student_study_group (study_group_id, student_id)
values
    (3, 26);

insert into
    student_study_group (study_group_id, student_id)
values
    (3, 27);

insert into
    student_study_group (study_group_id, student_id)
values
    (3, 28);

insert into
    student_study_group (study_group_id, student_id)
values
    (3, 29);

insert into
    student_study_group (study_group_id, student_id)
values
    (4, 30);

insert into
    student_study_group (study_group_id, student_id)
values
    (4, 31);

insert into
    student_study_group (study_group_id, student_id)
values
    (4, 32);

insert into
    student_study_group (study_group_id, student_id)
values
    (4, 33);

insert into
    student_study_group (study_group_id, student_id)
values
    (4, 34);

insert into
    student_study_group (study_group_id, student_id)
values
    (4, 35);

insert into
    student_study_group (study_group_id, student_id)
values
    (4, 36);

insert into
    student_study_group (study_group_id, student_id)
values
    (4, 37);

insert into
    student_study_group (study_group_id, student_id)
values
    (4, 38);

insert into
    student_study_group (study_group_id, student_id)
values
    (4, 39);

insert into
    student_study_group (study_group_id, student_id)
values
    (5, 40);

insert into
    student_study_group (study_group_id, student_id)
values
    (5, 41);

insert into
    student_study_group (study_group_id, student_id)
values
    (5, 42);

insert into
    student_study_group (study_group_id, student_id)
values
    (5, 43);

insert into
    student_study_group (study_group_id, student_id)
values
    (5, 44);

insert into
    student_study_group (study_group_id, student_id)
values
    (5, 45);

insert into
    student_study_group (study_group_id, student_id)
values
    (5, 46);

insert into
    student_study_group (study_group_id, student_id)
values
    (5, 47);

insert into
    student_study_group (study_group_id, student_id)
values
    (5, 48);

insert into
    student_study_group (study_group_id, student_id)
values
    (5, 49);

insert into
    student_study_group (study_group_id, student_id)
values
    (6, 50);

insert into
    student_study_group (study_group_id, student_id)
values
    (6, 51);

insert into
    student_study_group (study_group_id, student_id)
values
    (6, 52);

insert into
    student_study_group (study_group_id, student_id)
values
    (6, 53);

insert into
    student_study_group (study_group_id, student_id)
values
    (6, 54);

insert into
    student_study_group (study_group_id, student_id)
values
    (6, 55);

insert into
    student_study_group (study_group_id, student_id)
values
    (6, 56);

insert into
    student_study_group (study_group_id, student_id)
values
    (6, 57);

insert into
    student_study_group (study_group_id, student_id)
values
    (6, 58);

insert into
    student_study_group (study_group_id, student_id)
values
    (6, 59);

insert into
    student_study_group (study_group_id, student_id)
values
    (7, 60);

insert into
    student_study_group (study_group_id, student_id)
values
    (7, 61);

insert into
    student_study_group (study_group_id, student_id)
values
    (7, 62);

insert into
    student_study_group (study_group_id, student_id)
values
    (7, 63);

insert into
    student_study_group (study_group_id, student_id)
values
    (7, 64);

insert into
    student_study_group (study_group_id, student_id)
values
    (7, 65);

insert into
    student_study_group (study_group_id, student_id)
values
    (7, 66);

insert into
    student_study_group (study_group_id, student_id)
values
    (7, 67);

insert into
    student_study_group (study_group_id, student_id)
values
    (8, 68);

insert into
    student_study_group (study_group_id, student_id)
values
    (8, 69);

insert into
    student_study_group (study_group_id, student_id)
values
    (8, 70);

insert into
    student_study_group (study_group_id, student_id)
values
    (8, 71);

insert into
    student_study_group (study_group_id, student_id)
values
    (8, 72);

insert into
    student_study_group (study_group_id, student_id)
values
    (8, 73);

insert into
    student_study_group (study_group_id, student_id)
values
    (8, 74);

insert into
    student_study_group (study_group_id, student_id)
values
    (8, 75);

insert into
    student_study_group (study_group_id, student_id)
values
    (8, 76);

insert into
    student_study_group (study_group_id, student_id)
values
    (8, 77);

insert into
    student_study_group (study_group_id, student_id)
values
    (8, 78);

insert into
    student_study_group (study_group_id, student_id)
values
    (8, 79);

insert into
    student_study_group (study_group_id, student_id)
values
    (8, 80);

insert into
    student_study_group (study_group_id, student_id)
values
    (9, 81);

insert into
    student_study_group (study_group_id, student_id)
values
    (9, 82);

insert into
    student_study_group (study_group_id, student_id)
values
    (9, 83);

insert into
    student_study_group (study_group_id, student_id)
values
    (9, 84);

insert into
    student_study_group (study_group_id, student_id)
values
    (9, 85);

insert into
    student_study_group (study_group_id, student_id)
values
    (9, 86);

insert into
    student_study_group (study_group_id, student_id)
values
    (9, 87);

insert into
    student_study_group (study_group_id, student_id)
values
    (9, 88);

insert into
    student_study_group (study_group_id, student_id)
values
    (9, 89);

insert into
    student_study_group (study_group_id, student_id)
values
    (9, 90);

insert into
    student_study_group (study_group_id, student_id)
values
    (10, 91);

insert into
    student_study_group (study_group_id, student_id)
values
    (10, 92);

insert into
    student_study_group (study_group_id, student_id)
values
    (10, 93);

insert into
    student_study_group (study_group_id, student_id)
values
    (10, 94);

insert into
    student_study_group (study_group_id, student_id)
values
    (10, 95);

insert into
    student_study_group (study_group_id, student_id)
values
    (10, 96);

insert into
    student_study_group (study_group_id, student_id)
values
    (10, 97);

insert into
    student_study_group (study_group_id, student_id)
values
    (10, 98);

insert into
    student_study_group (study_group_id, student_id)
values
    (10, 99);

insert into
    student_study_group (study_group_id, student_id)
values
    (10, 100);

-- room data
insert into
    room (room_name)
values
    ('Room 1');

insert into
    room (room_name)
values
    ('Room 2');

insert into
    room (room_name)
values
    ('Room 3');

insert into
    room (room_name)
values
    ('Room 4');

insert into
    room (room_name)
values
    ('Room 5');

-- lesson data
insert into
    lesson (
        discipline_id,
        teacher_id,
        study_group_id,
        room_id,
        lesson_date,
        duration,
        start_time
    )
values
    (1, 1, 1, 1, '2021-08-01', 90, '10:00'),
    (1, 2, 1, 4, '2021-08-02', 60, '14:00'),
    (2, 3, 2, 2, '2021-08-03', 90, '10:00'),
    (2, 4, 2, 5, '2021-08-04', 60, '14:00'),
    (3, 5, 3, 3, '2021-08-05', 90, '10:00'),
    (3, 6, 3, 3, '2021-08-06', 60, '14:00'),
    (4, 7, 4, 4, '2021-08-07', 60, '10:00'),
    (4, 8, 4, 2, '2021-08-08', 60, '14:00'),
    (5, 1, 5, 5, '2021-08-09', 90, '10:00'),
    (5, 3, 5, 1, '2021-08-10', 60, '14:00'),
    (6, 5, 6, 4, '2021-08-11', 60, '10:00'),
    (6, 5, 6, 2, '2021-08-12', 60, '14:00'),
    (1, 6, 7, 3, '2021-08-12', 90, '10:00'),
    (1, 2, 7, 1, '2021-08-12', 60, '14:00'),
    (3, 4, 8, 5, '2021-08-12', 60, '10:00'),
    (2, 1, 8, 1, '2021-08-16', 90, '14:00');