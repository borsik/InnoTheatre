CREATE TABLE Person (
name VARCHAR,
surname VARCHAR,
pid serial,
PRIMARY KEY (pid));

CREATE TABLE Producer(
grade REAL,
grade_history VARCHAR,
pid INTEGER,
PRIMARY KEY (pid),
FOREIGN KEY (pid) REFERENCES Person (pid) 
ON DELETE CASCADE);

CREATE TABLE Scenarist(
grade REAL,
grade_history VARCHAR,
pid INTEGER,
PRIMARY KEY (pid),
FOREIGN KEY (pid) REFERENCES Person (pid) 
ON DELETE CASCADE);

CREATE TABLE Musician(
grade REAL,
grade_history VARCHAR,
pid INTEGER,
PRIMARY KEY (pid),
FOREIGN KEY (pid) REFERENCES Person (pid) 
ON DELETE CASCADE );

CREATE TABLE Actor(
grade REAL,
grade_history VARCHAR,
pid INTEGER,
PRIMARY KEY (pid),
FOREIGN KEY (pid) REFERENCES Person (pid) 
ON DELETE CASCADE );

CREATE TABLE Dancer(
grade REAL,
grade_history VARCHAR,
pid INTEGER,
PRIMARY KEY (pid),
FOREIGN KEY (pid) REFERENCES Person (pid) 
ON DELETE CASCADE);

CREATE TABLE Musical_group(
grade REAL,
grade_history VARCHAR,
name VARCHAR,
group_id serial,
PRIMARY KEY (group_id)
);

CREATE TABLE Mus_in(
group_id INTEGER,
pid INTEGER,
PRIMARY KEY (pid,group_id),
FOREIGN KEY (pid) REFERENCES musician (pid) 
ON DELETE CASCADE,
FOREIGN KEY (group_id) REFERENCES Musical_group (group_id) 
ON DELETE CASCADE);

CREATE TABLE Dance_group(
grade REAL,
grade_history VARCHAR,
name VARCHAR,
dgroup_id serial,
PRIMARY KEY (dgroup_id)
);

CREATE TABLE Dance_in(
dgroup_id INTEGER,
pid INTEGER,
PRIMARY KEY (pid,dgroup_id),
FOREIGN KEY (pid) REFERENCES Dancer (pid) 
ON DELETE CASCADE,
FOREIGN KEY (dgroup_id) REFERENCES Dance_group (dgroup_id) 
ON DELETE CASCADE);

CREATE TABLE Performance(
per_id serial,
per_name VARCHAR,
description VARCHAR,
grade REAL,
grade_history VARCHAR,
PRIMARY KEY (per_id)

);

CREATE TABLE Perf_prod(
per_id INTEGER,
pid INTEGER,
role VARCHAR,
PRIMARY KEY (pid,per_id),
FOREIGN KEY (pid) REFERENCES Producer (pid) 
ON DELETE CASCADE,
FOREIGN KEY (per_id) REFERENCES Performance (per_id) 
ON DELETE CASCADE);

CREATE TABLE Perf_scen(
per_id INTEGER,
pid INTEGER,
role VARCHAR,
PRIMARY KEY (pid,per_id),
FOREIGN KEY (pid) REFERENCES Scenarist (pid) 
ON DELETE CASCADE,
FOREIGN KEY (per_id) REFERENCES Performance (per_id) 
ON DELETE CASCADE);

CREATE TABLE Viewer(
login VARCHAR,
password VARCHAR,
rating REAL,
PRIMARY KEY (login)
);

CREATE TABLE Theater(
tid serial,
name VARCHAR,
description VARCHAR,
address VARCHAR,
city VARCHAR,
grade REAL,
PRIMARY KEY (tid)
);

CREATE TABLE Play(
sid serial,
play_date DATE,
play_time TIME,
description VARCHAR,
price DECIMAL,
grade REAL,
tid INTEGER NOT NULL,
per_id INTEGER NOT NULL,
PRIMARY KEY (sid),
FOREIGN KEY (tid) REFERENCES Theater (tid) 
ON DELETE CASCADE,
FOREIGN KEY (per_id) REFERENCES Performance (per_id) 
ON DELETE CASCADE
);

CREATE TABLE dg_p(
sid INTEGER,
dgroup_id INTEGER,
role VARCHAR,
PRIMARY KEY (sid,dgroup_id),
FOREIGN KEY (sid) REFERENCES Play (sid) 
ON DELETE CASCADE,
FOREIGN KEY (dgroup_id) REFERENCES Dance_group (dgroup_id) 
ON DELETE CASCADE);

CREATE TABLE a_p(
sid INTEGER,
pid INTEGER,
role VARCHAR,
PRIMARY KEY (sid,pid),
FOREIGN KEY (sid) REFERENCES Play (sid) 
ON DELETE CASCADE,
FOREIGN KEY (pid) REFERENCES Actor (pid) 
ON DELETE CASCADE);

CREATE TABLE m_p(
sid INTEGER,
pid INTEGER,
role VARCHAR,
PRIMARY KEY (sid,pid),
FOREIGN KEY (sid) REFERENCES Play (sid) 
ON DELETE CASCADE,
FOREIGN KEY (pid) REFERENCES musician (pid) 
ON DELETE CASCADE);


CREATE TABLE mg_p(
sid INTEGER,
group_id INTEGER,
role VARCHAR,
PRIMARY KEY (sid,group_id),
FOREIGN KEY (sid) REFERENCES Play (sid) 
ON DELETE CASCADE,
FOREIGN KEY (group_id) REFERENCES Musical_group (group_id) 
ON DELETE CASCADE);

CREATE TABLE Grade(
login VARCHAR,
sid INTEGER,
grade REAL,
PRIMARY KEY (login,sid),
FOREIGN KEY (sid) REFERENCES Play (sid) 
ON DELETE CASCADE,
FOREIGN KEY (login) REFERENCES Viewer (login) 
ON DELETE NO ACTION
);

CREATE TABLE Review(
login VARCHAR,
per_id INTEGER,
review VARCHAR,
PRIMARY KEY (login,per_id),
FOREIGN KEY (per_id) REFERENCES Performance (per_id) 
ON DELETE CASCADE,
FOREIGN KEY (login) REFERENCES Viewer (login) 
ON DELETE NO ACTION
);


INSERT INTO person (name, surname) VALUES ('Benedict', 'Cumberbatch');
INSERT INTO person (name, surname) VALUES ('Ben', 'Affleck');
INSERT INTO person (name, surname) VALUES ('Rachel', 'McAdams');
INSERT INTO person (name, surname) VALUES ('Daniel', 'Radcliffe');
INSERT INTO person (name, surname) VALUES ('Emma', 'Roberts');
INSERT INTO person (name, surname) VALUES ('Tilda', 'Swinton');
INSERT INTO person (name, surname) VALUES ('Scott', 'Derrickson');
INSERT INTO person (name, surname) VALUES ('Mads', 'Mikkelsen');
INSERT INTO person (name, surname) VALUES ('Anna', 'Kendrick');
INSERT INTO person (name, surname) VALUES ('Gavin', 'O-Connor');
INSERT INTO person (name, surname) VALUES ('Woody', 'Allen');
INSERT INTO person (name, surname) VALUES ('Christian', 'Bale');
INSERT INTO person (name, surname) VALUES ('CLemense', 'Poesy');
INSERT INTO person (name, surname) VALUES ('Mila', 'Kunis');
INSERT INTO person (name, surname) VALUES ('Tom', 'Cruise');
INSERT INTO person (name, surname) VALUES ('Xavier', 'Dolan');
INSERT INTO person (name, surname) VALUES ('Dave', 'Franco');
INSERT INTO person (name, surname) VALUES ('Leonardo', 'DiCaprio');
INSERT INTO person (name, surname) VALUES ('Tom', 'Hanks');
INSERT INTO person (name, surname) VALUES ('Margot', 'Robbie');
INSERT INTO person (name, surname) VALUES ('Tim', 'Burton');
INSERT INTO person (name, surname) VALUES ('Chris', 'Pine');
INSERT INTO person (name, surname) VALUES ('Bruce', 'Willis');
INSERT INTO person (name, surname) VALUES ('Bruce', 'Lee');
INSERT INTO person (name, surname) VALUES ('Chiwetel', 'Ejiofor');
INSERT INTO person (name, surname) VALUES ('Emma', 'Watson');
INSERT INTO person (name, surname) VALUES ('Brad', 'Pitt');
INSERT INTO person (name, surname) VALUES ('Johnny', 'Depp');
INSERT INTO person (name, surname) VALUES ('Emily', 'Blunt');
INSERT INTO person (name, surname) VALUES ('Jake', 'Gylienhall');
INSERT INTO person (name, surname) VALUES ('Arnold', 'Schwarzenegger');
INSERT INTO person (name, surname) VALUES ('Keanu', 'Reeves');
INSERT INTO person (name, surname) VALUES ('Christopher', 'Nolan');
INSERT INTO person (name, surname) VALUES ('Quentin', 'Tarantino');
INSERT INTO person (name, surname) VALUES ('Tom', 'Hardy');
INSERT INTO person (name, surname) VALUES ('Will', 'Smith');
INSERT INTO person (name, surname) VALUES ('Chris', 'Hemsworth');
INSERT INTO person (name, surname) VALUES ('Emilia', 'Clark');
INSERT INTO person (name, surname) VALUES ('Clint', 'Eatwood');
INSERT INTO person (name, surname) VALUES ('Sean', 'Bean');
INSERT INTO person (name, surname) VALUES ('Russel', 'Crowe');
INSERT INTO person (name, surname) VALUES ('Olzhas', 'Pistoletov');
INSERT INTO person (name, surname) VALUES ('Nicolas', 'Cage');
INSERT INTO person (name, surname) VALUES ('J.K.', 'Simmons');
INSERT INTO person (name, surname) VALUES ('Angelina', 'Jolie');
INSERT INTO person (name, surname) VALUES ('Eddie', 'Murphye');
INSERT INTO person (name, surname) VALUES ('Kevin', 'Spacey');
INSERT INTO person (name, surname) VALUES ('Paul', 'Dano');
INSERT INTO person (name, surname) VALUES ('Antony', 'Hopkins');
INSERT INTO person (name, surname) VALUES ('Kristen', 'Stewart');
INSERT INTO person (name, surname) VALUES ('Eddie', 'Redmayne');
INSERT INTO person (name, surname) VALUES ('Guy', 'Ritchie');
INSERT INTO person (name, surname) VALUES ('Ryan', 'Peynolds');
INSERT INTO person (name, surname) VALUES ('Ben', 'Foster');
INSERT INTO person (name, surname) VALUES ('Hugh', 'Jackman');
INSERT INTO person (name, surname) VALUES ('Danila', 'Kozlovsky');
INSERT INTO person (name, surname) VALUES ('Rudolf', 'Nuriev');
INSERT INTO person (name, surname) VALUES ('Robert', 'Downey Jr.');
INSERT INTO person (name, surname) VALUES ('Al', 'Pachino');
INSERT INTO person (name, surname) VALUES ('David', 'Duhovny');
INSERT INTO person (name, surname) VALUES ('Jared', 'Leto');
INSERT INTO person (name, surname) VALUES ('Chloe', 'Grace Moretz');
INSERT INTO person (name, surname) VALUES ('Keira', 'Knightley');
INSERT INTO person (name, surname) VALUES ('Anne', 'Hattaway');
INSERT INTO person (name, surname) VALUES ('Mel', 'Gibson');
INSERT INTO person (name, surname) VALUES ('Hugh', 'Laurie');
INSERT INTO person (name, surname) VALUES ('Rupert', 'Grint');
INSERT INTO person (name, surname) VALUES ('Gary', 'Oldman');
INSERT INTO person (name, surname) VALUES ('Amy', 'Adams');
INSERT INTO person (name, surname) VALUES ('Jason', 'Statham');
INSERT INTO person (name, surname) VALUES ('Morgan', 'Freeman');
INSERT INTO person (name, surname) VALUES ('Zac', 'Effron');
INSERT INTO person (name, surname) VALUES ('Emma', 'Stone');
INSERT INTO person (name, surname) VALUES ('Kolomietz', 'Maksimov');
INSERT INTO person (name, surname) VALUES ('Till', 'Schweiger');
INSERT INTO person (name, surname) VALUES ('Vinograd', 'Vladislavov');
INSERT INTO person (name, surname) VALUES ('Kisel', 'Antonov');
INSERT INTO person (name, surname) VALUES ('Afanasiy', 'Romanov');
INSERT INTO person (name, surname) VALUES ('Verenets', 'Sergeev');
INSERT INTO person (name, surname) VALUES ('Kalimul', 'Fanisov');
INSERT INTO person (name, surname) VALUES ('Marash', 'Alekseev');
INSERT INTO person (name, surname) VALUES ('Bondar', 'Bogdanov');
INSERT INTO person (name, surname) VALUES ('Razum', 'Zaichatkov');
INSERT INTO person (name, surname) VALUES ('Pavel', 'Nataliev');
INSERT INTO person (name, surname) VALUES ('Bulich', 'Olegov');
INSERT INTO person (name, surname) VALUES ('Polovinka', 'Andreev');
INSERT INTO person (name, surname) VALUES ('Pistolet', 'Olzhasov');
INSERT INTO person (name, surname) VALUES ('Maslo', 'Andreev');
INSERT INTO person (name, surname) VALUES ('Senil', 'Ivanov');
INSERT INTO person (name, surname) VALUES ('Mordovets', 'Dmitriev');
INSERT INTO person (name, surname) VALUES ('Turuban', 'Konstantinov');
INSERT INTO person (name, surname) VALUES ('Kruka', 'Lidieva');
INSERT INTO person (name, surname) VALUES ('Ivan', 'Dorn');
INSERT INTO person (name, surname) VALUES ('Egor', 'Krid');
INSERT INTO person (name, surname) VALUES ('Pavel', 'Rodni');
INSERT INTO person (name, surname) VALUES ('Oleg', 'Miami');
INSERT INTO person (name, surname) VALUES ('Te', 'Killah');
INSERT INTO person (name, surname) VALUES ('Shyngys', 'Khan');
INSERT INTO person (name, surname) VALUES ('Uspekh', 'Romanov');
INSERT INTO person (name, surname) VALUES ('Kamaltdin', 'Aidarov');
INSERT INTO person (name, surname) VALUES ('Nikifor', 'Nikolaev');


INSERT INTO producer (grade, grade_history, pid) VALUES (2.3, '2.3', 1);
INSERT INTO producer (grade, grade_history, pid) VALUES (5.0, '5.0', 11);
INSERT INTO producer (grade, grade_history, pid) VALUES (3.7, '3.7', 21);
INSERT INTO producer (grade, grade_history, pid) VALUES (1.2, '1.2', 31);
INSERT INTO producer (grade, grade_history, pid) VALUES (3.3, '3.3', 41);
INSERT INTO producer (grade, grade_history, pid) VALUES (2.2, '2.2', 51);
INSERT INTO producer (grade, grade_history, pid) VALUES (4.2, '4.2', 61);
INSERT INTO producer (grade, grade_history, pid) VALUES (4.1, '4.1', 71);
INSERT INTO producer (grade, grade_history, pid) VALUES (3.9, '3.9', 81);

INSERT INTO scenarist (grade, grade_history, pid) VALUES (2.3, '2.3', 91);
INSERT INTO scenarist (grade, grade_history, pid) VALUES (2.2, '2.2', 101);
INSERT INTO scenarist (grade, grade_history, pid) VALUES (4.7, '4.7', 2);
INSERT INTO scenarist (grade, grade_history, pid) VALUES (4.2, '4.2', 12);
INSERT INTO scenarist (grade, grade_history, pid) VALUES (4.4, '4.4', 22);

INSERT INTO musician (grade, grade_history, pid) VALUES (3.2, '3.2', 32);
INSERT INTO musician (grade, grade_history, pid) VALUES (2.2, '2.2', 42);
INSERT INTO musician (grade, grade_history, pid) VALUES (4.4, '4.4', 52);
INSERT INTO musician (grade, grade_history, pid) VALUES (2.4, '2.4', 62);
INSERT INTO musician (grade, grade_history, pid) VALUES (4.1, '4.1', 72);
INSERT INTO musician (grade, grade_history, pid) VALUES (4.0, '4.0', 82);
INSERT INTO musician (grade, grade_history, pid) VALUES (2.4, '2.4', 92);
INSERT INTO musician (grade, grade_history, pid) VALUES (2.6, '2.6', 3);
INSERT INTO musician (grade, grade_history, pid) VALUES (2.8, '2.8', 13);
INSERT INTO musician (grade, grade_history, pid) VALUES (4.8, '4.8', 23);
INSERT INTO musician (grade, grade_history, pid) VALUES (3.8, '3.8', 33);
INSERT INTO musician (grade, grade_history, pid) VALUES (3.1, '3.1', 43);
INSERT INTO musician (grade, grade_history, pid) VALUES (4.1, '4.1', 53);
INSERT INTO musician (grade, grade_history, pid) VALUES (4.7, '4.7', 63);
INSERT INTO musician (grade, grade_history, pid) VALUES (4.2, '4.2', 73);
INSERT INTO musician (grade, grade_history, pid) VALUES (1.2, '1.2', 83);
INSERT INTO musician (grade, grade_history, pid) VALUES (3.7, '3.7', 93);

INSERT INTO actor (grade, grade_history, pid) VALUES (2.2, '2.2', 4);
INSERT INTO actor (grade, grade_history, pid) VALUES (4.2, '4.2', 14);
INSERT INTO actor (grade, grade_history, pid) VALUES (2.4, '2.4', 24);
INSERT INTO actor (grade, grade_history, pid) VALUES (4.4, '4.4', 34);
INSERT INTO actor (grade, grade_history, pid) VALUES (4.1, '4.1', 44);
INSERT INTO actor (grade, grade_history, pid) VALUES (2.0, '2.0', 54);
INSERT INTO actor (grade, grade_history, pid) VALUES (2.4, '2.4', 64);
INSERT INTO actor (grade, grade_history, pid) VALUES (2.6, '2.6', 74);
INSERT INTO actor (grade, grade_history, pid) VALUES (4.8, '4.8', 84);
INSERT INTO actor (grade, grade_history, pid) VALUES (3.8, '3.8', 94);
INSERT INTO actor (grade, grade_history, pid) VALUES (3.8, '3.8', 5);
INSERT INTO actor (grade, grade_history, pid) VALUES (4.1, '4.1', 15);
INSERT INTO actor (grade, grade_history, pid) VALUES (4.1, '4.1', 25);
INSERT INTO actor (grade, grade_history, pid) VALUES (4.7, '4.7', 35);
INSERT INTO actor (grade, grade_history, pid) VALUES (1.2, '1.2', 45);
INSERT INTO actor (grade, grade_history, pid) VALUES (3.2, '3.2', 55);
INSERT INTO actor (grade, grade_history, pid) VALUES (1.7, '1.7', 65);
INSERT INTO actor (grade, grade_history, pid) VALUES (4.1, '4.1', 75);
INSERT INTO actor (grade, grade_history, pid) VALUES (4.1, '4.1', 85);
INSERT INTO actor (grade, grade_history, pid) VALUES (4.7, '4.7', 95);
INSERT INTO actor (grade, grade_history, pid) VALUES (1.2, '1.2', 6);
INSERT INTO actor (grade, grade_history, pid) VALUES (3.2, '3.2', 16);
INSERT INTO actor (grade, grade_history, pid) VALUES (1.7, '1.7', 26);
INSERT INTO actor (grade, grade_history, pid) VALUES (2.7, '2.7', 36);
INSERT INTO actor (grade, grade_history, pid) VALUES (3.7, '3.7', 46);
INSERT INTO actor (grade, grade_history, pid) VALUES (4.7, '4.7', 56);
INSERT INTO actor (grade, grade_history, pid) VALUES (1.7, '1.7', 66);
INSERT INTO actor (grade, grade_history, pid) VALUES (2.7, '2.7', 76);
INSERT INTO actor (grade, grade_history, pid) VALUES (3.7, '3.7', 86);
INSERT INTO actor (grade, grade_history, pid) VALUES (3.7, '4.7', 96);
INSERT INTO actor (grade, grade_history, pid) VALUES (2.2, '2.2', 9);
INSERT INTO actor (grade, grade_history, pid) VALUES (4.9, '4.9', 19);
INSERT INTO actor (grade, grade_history, pid) VALUES (3.7, '3.7', 29);
INSERT INTO actor (grade, grade_history, pid) VALUES (1.0, '1.0', 39);
INSERT INTO actor (grade, grade_history, pid) VALUES (5.0, '5.0', 49);
INSERT INTO actor (grade, grade_history, pid) VALUES (1.9, '1.9', 59);
INSERT INTO actor (grade, grade_history, pid) VALUES (2.3, '2.2', 69);
INSERT INTO actor (grade, grade_history, pid) VALUES (3.6, '3.6', 79);
INSERT INTO actor (grade, grade_history, pid) VALUES (3.9, '3.9', 89);
INSERT INTO actor (grade, grade_history, pid) VALUES (3.2, '3.2', 99);
INSERT INTO actor (grade, grade_history, pid) VALUES (2.5, '2.5', 1);
INSERT INTO actor (grade, grade_history, pid) VALUES (5.0, '5.0', 11);
INSERT INTO actor (grade, grade_history, pid) VALUES (4.0, '4.0', 21);
INSERT INTO actor (grade, grade_history, pid) VALUES (3.0, '3.0', 31);
INSERT INTO actor (grade, grade_history, pid) VALUES (3.6, '3.6', 41);
INSERT INTO actor (grade, grade_history, pid) VALUES (3.2, '3.2', 51);
INSERT INTO actor (grade, grade_history, pid) VALUES (4.6, '4.6', 61);
INSERT INTO actor (grade, grade_history, pid) VALUES (4.6, '4.6', 71);
INSERT INTO actor (grade, grade_history, pid) VALUES (4.7, '4.7', 81);
INSERT INTO actor (grade, grade_history, pid) VALUES (2.0, '2.0', 52);
INSERT INTO actor (grade, grade_history, pid) VALUES (3.3, '3.3', 33);
INSERT INTO actor (grade, grade_history, pid) VALUES (2.2, '2.2', 43);
INSERT INTO actor (grade, grade_history, pid) VALUES (4.2, '4.2', 83);
INSERT INTO actor (grade, grade_history, pid) VALUES (3.3, '3.3', 93);

INSERT INTO dancer (grade, grade_history, pid) VALUES (2.2, '2.2', 7);
INSERT INTO dancer (grade, grade_history, pid) VALUES (4.2, '4.2', 17);
INSERT INTO dancer (grade, grade_history, pid) VALUES (2.4, '2.4', 27);
INSERT INTO dancer (grade, grade_history, pid) VALUES (4.4, '4.4', 37);
INSERT INTO dancer (grade, grade_history, pid) VALUES (4.1, '4.1', 47);
INSERT INTO dancer (grade, grade_history, pid) VALUES (2.0, '2.0', 57);
INSERT INTO dancer (grade, grade_history, pid) VALUES (2.4, '2.4', 67);
INSERT INTO dancer (grade, grade_history, pid) VALUES (2.6, '2.6', 77);
INSERT INTO dancer (grade, grade_history, pid) VALUES (4.8, '4.8', 87);
INSERT INTO dancer (grade, grade_history, pid) VALUES (3.8, '3.8', 97);
INSERT INTO dancer (grade, grade_history, pid) VALUES (3.8, '3.8', 8);
INSERT INTO dancer (grade, grade_history, pid) VALUES (4.1, '4.1', 18);
INSERT INTO dancer (grade, grade_history, pid) VALUES (4.1, '4.1', 28);
INSERT INTO dancer (grade, grade_history, pid) VALUES (4.7, '4.7', 38);
INSERT INTO dancer (grade, grade_history, pid) VALUES (1.2, '1.2', 48);
INSERT INTO dancer (grade, grade_history, pid) VALUES (3.2, '3.2', 58);
INSERT INTO dancer (grade, grade_history, pid) VALUES (1.7, '1.7', 68);
INSERT INTO dancer (grade, grade_history, pid) VALUES (4.1, '4.1', 78);
INSERT INTO dancer (grade, grade_history, pid) VALUES (4.1, '4.1', 88);
INSERT INTO dancer (grade, grade_history, pid) VALUES (4.7, '4.7', 98);

INSERT INTO musical_group (grade, grade_history, name) VALUES (4.4, '4.4', 'superBand from Voronezh');
INSERT INTO mus_in (group_id, pid) VALUES (1, 32);
INSERT INTO mus_in (group_id, pid) VALUES (1, 62);
INSERT INTO mus_in (group_id, pid) VALUES (1, 13);
INSERT INTO mus_in (group_id, pid) VALUES (1, 33);

INSERT INTO musical_group (grade, grade_history, name) VALUES (5.0, '5.0', 'Depeche Mode');
INSERT INTO mus_in (group_id, pid) VALUES (2, 63);
INSERT INTO mus_in (group_id, pid) VALUES (2, 42);

INSERT INTO musical_group (grade, grade_history, name) VALUES (4.0, '4.0', 'Grand Pistolets');
INSERT INTO mus_in (group_id, pid) VALUES (3, 42);
INSERT INTO mus_in (group_id, pid) VALUES (3, 82);

INSERT INTO musical_group (grade, grade_history, name) VALUES (4.2, '4.2', 'the Papers');
INSERT INTO mus_in (group_id, pid) VALUES (4, 82);
INSERT INTO mus_in (group_id, pid) VALUES (4, 83);
INSERT INTO mus_in (group_id, pid) VALUES (4, 93);

INSERT INTO musical_group (grade, grade_history, name) VALUES (3.9, '3.9', 'Quaia 77');
INSERT INTO mus_in (group_id, pid) VALUES (5, 23);


INSERT INTO dance_group (grade, grade_history, name) VALUES (4.0, '4.0', 'Theater Dancers');
INSERT INTO dance_in (dgroup_id, pid) VALUES (1, 7);
INSERT INTO dance_in (dgroup_id, pid) VALUES (1, 27);
INSERT INTO dance_in (dgroup_id, pid) VALUES (1, 47);
INSERT INTO dance_in (dgroup_id, pid) VALUES (1, 67);
INSERT INTO dance_in (dgroup_id, pid) VALUES (1, 77);
INSERT INTO dance_in (dgroup_id, pid) VALUES (1, 97);
INSERT INTO dance_in (dgroup_id, pid) VALUES (1, 18);
INSERT INTO dance_in (dgroup_id, pid) VALUES (1, 38);
INSERT INTO dance_in (dgroup_id, pid) VALUES (1, 58);
INSERT INTO dance_in (dgroup_id, pid) VALUES (1, 78);

INSERT INTO dance_group (grade, grade_history, name) VALUES (4.2, '4.2', 'Kazan Dance Trio');
INSERT INTO dance_in (dgroup_id, pid) VALUES (2, 17);
INSERT INTO dance_in (dgroup_id, pid) VALUES (2, 87);
INSERT INTO dance_in (dgroup_id, pid) VALUES (2, 68);

INSERT INTO performance (per_name, description, grade, grade_history) VALUES ('Dead Souls', ' ', 4.2, '4.2');
INSERT INTO perf_prod (per_id, pid, role) VALUES (1, 1, '-');
INSERT INTO perf_scen (per_id, pid, role) VALUES (1, 91, '-'); 

INSERT INTO performance (per_name, description, grade, grade_history) VALUES ('Destructive Free Verse', ' ', 3.5, '3.5');
INSERT INTO perf_prod (per_id, pid, role) VALUES (2, 11, '-');
INSERT INTO perf_prod (per_id, pid, role) VALUES (2, 51, '-');
INSERT INTO perf_scen (per_id, pid, role) VALUES (2, 91, '-'); 

INSERT INTO performance (per_name, description, grade, grade_history) VALUES ('Carmen', ' ', 3.7, '3.7');
INSERT INTO perf_prod (per_id, pid, role) VALUES (3, 21, '-');
INSERT INTO perf_scen (per_id, pid, role) VALUES (3, 101, '-'); 

INSERT INTO performance (per_name, description, grade, grade_history) VALUES ('Eugene Onegin', ' ', 4.7, '4.7');
INSERT INTO perf_prod (per_id, pid, role) VALUES (4, 31, '-');
INSERT INTO perf_scen (per_id, pid, role) VALUES (4, 2, '-'); 

INSERT INTO performance (per_name, description, grade, grade_history) VALUES ('The Lower Depths', ' ', 3.2, '3.2');
INSERT INTO perf_prod (per_id, pid, role) VALUES (5, 41, '-');
INSERT INTO perf_scen (per_id, pid, role) VALUES (5, 2, '-'); 

INSERT INTO performance (per_name, description, grade, grade_history) VALUES ('Hamlet', ' ', 3.6, '3.6');
INSERT INTO perf_prod (per_id, pid, role) VALUES (6, 51, '-');
INSERT INTO perf_scen (per_id, pid, role) VALUES (6, 12, '-'); 

INSERT INTO performance (per_name, description, grade, grade_history) VALUES ('Hamlet', ' ', 4.8, '4.8');
INSERT INTO perf_prod (per_id, pid, role) VALUES (7, 61, '-');
INSERT INTO perf_scen (per_id, pid, role) VALUES (7, 22, '-');

INSERT INTO performance (per_name, description, grade, grade_history) VALUES ('Carmen', ' ', 4.3, '4.3'); 
INSERT INTO perf_prod (per_id, pid, role) VALUES (8, 71, '-');
INSERT INTO perf_scen (per_id, pid, role) VALUES (8, 22, '-');

INSERT INTO performance (per_name, description, grade, grade_history) VALUES ('Romeo and Juliet', ' ', 4.1, '4.1');
INSERT INTO perf_prod (per_id, pid, role) VALUES (9, 81, '-');
INSERT INTO perf_scen (per_id, pid, role) VALUES (9, 91, '-');

INSERT INTO performance (per_name, description, grade, grade_history) VALUES ('A Raisin in the Sun ', ' ', 2.7, '2.7');
INSERT INTO perf_prod (per_id, pid, role) VALUES (10, 71, '-');
INSERT INTO perf_scen (per_id, pid, role) VALUES (9, 12, '-');

INSERT INTO viewer (login, password, rating) VALUES ('afanasiev.r@innopolis.ru', '3688', 1);
INSERT INTO viewer (login, password, rating) VALUES ('kolomietz.m@innopolis.ru', 'j421sd25', 1);
INSERT INTO viewer (login, password, rating) VALUES ('olzhas.a@innopolis.ru', 'h2ksmd33', 1);
INSERT INTO viewer (login, password, rating) VALUES ('bondar.b@innopolis.ru', 'jmdnfp2', 1);

INSERT INTO theater (name, address, city, grade) VALUES ('The Pushkin Theatre', 'Tverskoy Boulevard, 23', 'Moscow', '4.6');
INSERT INTO theater (name, address, city, grade) VALUES ('Bolshoi Theatre', 'Theatre Square, 1', 'Moscow', '4.7');
INSERT INTO theater (name, address, city, grade) VALUES ('Teatr im. M. Gorkogo', 'Tverskoy Boulevard, 22', 'Moscow', '4.7');
INSERT INTO theater (name, address, city, grade) VALUES ('Ekaterinburg State Academic Opera and Ballet Theatre', 'Lenin Ave, 46А', 'Ekaterinburg', '4.2');
INSERT INTO theater (name, address, city, grade) VALUES ('Voronezh State Opera and Ballet Theatre', 'Lenina Square, 7', 'Voronezh', '4.6');
INSERT INTO theater (name, address, city, grade) VALUES ('Theatre named after Musa Jalil', 'Svobody Square, 2', 'Kazan', '4.3');

INSERT INTO play (play_date, play_time, description, price, grade, tid, per_id) VALUES ('2016-10-22', '20:00:00', 'so beautiful', 700, 4, 1, 3);
INSERT INTO play (play_date, play_time, description, price, grade, tid, per_id) VALUES ('2016-10-29', '20:00:00', 'so beautiful again', 700, 4, 1, 3);
INSERT INTO play (play_date, play_time, description, price, tid, per_id) VALUES ('2016-11-5', '20:00:00', 'so beautiful', 400, 4, 3);

INSERT INTO play (play_date, play_time, description, price, grade, tid, per_id) VALUES ('2016-9-2', '19:30:00', '', 400, 3.7, 4, 1);
INSERT INTO play (play_date, play_time, description, price, grade, tid, per_id) VALUES ('2016-9-16', '20:30:00', '', 300, 4.0, 6, 1);
INSERT INTO play (play_date, play_time, description, price, grade, tid, per_id) VALUES ('2016-9-30', '19:30:00', '', 400, 4.1, 4, 1);

INSERT INTO play (play_date, play_time, description, price, grade, tid, per_id) VALUES ('2016-10-7', '18:00:00', '', 500, 3.8, 3, 2);
INSERT INTO play (play_date, play_time, description, price, grade, tid, per_id) VALUES ('2016-10-21', '20:00:00', '', 400, 3.7, 4, 2);
INSERT INTO play (play_date, play_time, description, price, tid, per_id) VALUES ('2016-11-4', '18:00:00', '', 300, 5, 2);
INSERT INTO play (play_date, play_time, description, price, tid, per_id) VALUES ('2016-11-18', '18:00:00', '', 300, 6, 2);

INSERT INTO play (play_date, play_time, description, price, tid, per_id) VALUES ('2016-11-4', '20:00:00', '', 700, 4, 4);
INSERT INTO play (play_date, play_time, description, price, tid, per_id) VALUES ('2016-11-11', '20:00:00', '', 700, 4, 4);
INSERT INTO play (play_date, play_time, description, price, tid, per_id) VALUES ('2016-11-18', '19:00:00', '', 500, 4, 4);
INSERT INTO play (play_date, play_time, description, price, tid, per_id) VALUES ('2016-11-25', '19:00:00', '', 500, 4, 4);

INSERT INTO play (play_date, play_time, description, price, grade, tid, per_id) VALUES ('2016-10-14', '18:00:00', '', 350, 2.9, 4, 3);
INSERT INTO play (play_date, play_time, description, price, grade, tid, per_id) VALUES ('2016-10-21', '18:00:00', '', 350, 2.4, 4, 3);

INSERT INTO play (play_date, play_time, description, price, grade, tid, per_id) VALUES ('2016-10-15', '19:00:00', '', 350, 3.8, 3, 5);
INSERT INTO play (play_date, play_time, description, price, grade, tid, per_id) VALUES ('2016-10-22', '19:00:00', '', 350, 3.5, 3, 5);

INSERT INTO play (play_date, play_time, description, price,  tid, per_id) VALUES ('2016-11-4', '19:00:00', '', 800, 2, 6);
INSERT INTO play (play_date, play_time, description, price,  tid, per_id) VALUES ('2016-11-11', '19:00:00', '', 800, 2, 6);
INSERT INTO play (play_date, play_time, description, price,  tid, per_id) VALUES ('2016-11-18', '19:00:00', '', 800, 2, 6);
INSERT INTO play (play_date, play_time, description, price,  tid, per_id) VALUES ('2016-11-25', '19:00:00', '', 800, 2, 6);
INSERT INTO play (play_date, play_time, description, price,  tid, per_id) VALUES ('2016-12-02', '19:00:00', '', 1000, 2, 6);

INSERT INTO a_p (sid, pid, role) VALUES (4, 4, 'Chichikov');
INSERT INTO a_p (sid, pid, role) VALUES (4, 14, 'Selifan');
INSERT INTO a_p (sid, pid, role) VALUES (4, 24, 'Petrushka');
INSERT INTO a_p (sid, pid, role) VALUES (4, 34, 'Manilov');
INSERT INTO a_p (sid, pid, role) VALUES (4, 44, 'Nozdrev');

INSERT INTO a_p (sid, pid, role) VALUES (5, 4, 'Chichikov');
INSERT INTO a_p (sid, pid, role) VALUES (5, 14, 'Selifan');
INSERT INTO a_p (sid, pid, role) VALUES (5, 24, 'Petrushka');
INSERT INTO a_p (sid, pid, role) VALUES (5, 34, 'Manilov');
INSERT INTO a_p (sid, pid, role) VALUES (5, 54, 'Nozdrev');

INSERT INTO a_p (sid, pid, role) VALUES (6, 4, 'Chichikov');
INSERT INTO a_p (sid, pid, role) VALUES (6, 14, 'Selifan');
INSERT INTO a_p (sid, pid, role) VALUES (6, 24, 'Petrushka');
INSERT INTO a_p (sid, pid, role) VALUES (6, 34, 'Manilov');
INSERT INTO a_p (sid, pid, role) VALUES (6, 54, 'Nozdrev');

INSERT INTO a_p (sid, pid, role) VALUES (1, 64, 'Carmen');
INSERT INTO a_p (sid, pid, role) VALUES (1, 74, 'Don José');
INSERT INTO a_p (sid, pid, role) VALUES (1, 84, 'Escamillo');
INSERT INTO a_p (sid, pid, role) VALUES (1, 94, 'Micaëla');
INSERT INTO a_p (sid, pid, role) VALUES (1, 5, 'Moralès');
INSERT INTO a_p (sid, pid, role) VALUES (1, 15, 'Frasquita');
INSERT INTO a_p (sid, pid, role) VALUES (1, 25, 'Mercédès');
INSERT INTO a_p (sid, pid, role) VALUES (1, 35, 'Lillas Pastia');
INSERT INTO a_p (sid, pid, role) VALUES (1, 45, 'Le Dancaïre');
INSERT INTO a_p (sid, pid, role) VALUES (1, 55, 'Le Remendado');
INSERT INTO mg_p (sid, group_id, role) VALUES (1, 2, 'orcherstra');

INSERT INTO a_p (sid, pid, role) VALUES (2, 64, 'Carmen');
INSERT INTO a_p (sid, pid, role) VALUES (2, 74, 'Don José');
INSERT INTO a_p (sid, pid, role) VALUES (2, 84, 'Escamillo');
INSERT INTO a_p (sid, pid, role) VALUES (2, 94, 'Micaëla');
INSERT INTO a_p (sid, pid, role) VALUES (2, 5, 'Moralès');
INSERT INTO a_p (sid, pid, role) VALUES (2, 15, 'Frasquita');
INSERT INTO a_p (sid, pid, role) VALUES (2, 25, 'Mercédès');
INSERT INTO a_p (sid, pid, role) VALUES (2, 35, 'Lillas Pastia');
INSERT INTO a_p (sid, pid, role) VALUES (2, 45, 'Le Dancaïre');
INSERT INTO a_p (sid, pid, role) VALUES (2, 55, 'Le Remendado');
INSERT INTO mg_p (sid, group_id, role) VALUES (2, 2, 'orcherstra');

INSERT INTO a_p (sid, pid, role) VALUES (3, 64, 'Carmen');
INSERT INTO a_p (sid, pid, role) VALUES (3, 74, 'Don José');
INSERT INTO a_p (sid, pid, role) VALUES (3, 84, 'Escamillo');
INSERT INTO a_p (sid, pid, role) VALUES (3, 94, 'Micaëla');
INSERT INTO a_p (sid, pid, role) VALUES (3, 5, 'Moralès');
INSERT INTO a_p (sid, pid, role) VALUES (3, 15, 'Frasquita');
INSERT INTO a_p (sid, pid, role) VALUES (3, 25, 'Mercédès');
INSERT INTO a_p (sid, pid, role) VALUES (3, 35, 'Lillas Pastia');
INSERT INTO a_p (sid, pid, role) VALUES (3, 45, 'Le Dancaïre');
INSERT INTO a_p (sid, pid, role) VALUES (3, 55, 'Le Remendado');
INSERT INTO mg_p (sid, group_id, role) VALUES (3, 2, 'orcherstra');

INSERT INTO a_p (sid, pid, role) VALUES (7, 65, 'Olzhas');
INSERT INTO a_p (sid, pid, role) VALUES (7, 75, 'Bogdan');
INSERT INTO a_p (sid, pid, role) VALUES (7, 85, 'Roman');
INSERT INTO a_p (sid, pid, role) VALUES (7, 95, 'Maxim');
INSERT INTO dg_p (sid, dgroup_id, role) VALUES (7, 2, 'street dancers');
INSERT INTO m_p (sid, pid, role) VALUES (7, 93, 'Soul Diva');

INSERT INTO a_p (sid, pid, role) VALUES (8, 65, 'Olzhas');
INSERT INTO a_p (sid, pid, role) VALUES (8, 75, 'Bogdan');
INSERT INTO a_p (sid, pid, role) VALUES (8, 85, 'Roman');
INSERT INTO a_p (sid, pid, role) VALUES (8, 95, 'Maxim');
INSERT INTO dg_p (sid, dgroup_id, role) VALUES (8, 2, 'street dancers');
INSERT INTO m_p (sid, pid, role) VALUES (8, 93, 'Soul Diva');

INSERT INTO a_p (sid, pid, role) VALUES (9, 65, 'Olzhas');
INSERT INTO a_p (sid, pid, role) VALUES (9, 75, 'Bogdan');
INSERT INTO a_p (sid, pid, role) VALUES (9, 85, 'Roman');
INSERT INTO a_p (sid, pid, role) VALUES (9, 95, 'Maxim');
INSERT INTO dg_p (sid, dgroup_id, role) VALUES (9, 2, 'street dancers');
INSERT INTO m_p (sid, pid, role) VALUES (9, 93, 'Soul Diva');

INSERT INTO a_p (sid, pid, role) VALUES (10, 65, 'Olzhas');
INSERT INTO a_p (sid, pid, role) VALUES (10, 75, 'Bogdan');
INSERT INTO a_p (sid, pid, role) VALUES (10, 85, 'Roman');
INSERT INTO a_p (sid, pid, role) VALUES (10, 95, 'Maxim');
INSERT INTO dg_p (sid, dgroup_id, role) VALUES (10, 2, 'street dancers');
INSERT INTO m_p (sid, pid, role) VALUES (10, 93, 'Soul Diva');

INSERT INTO a_p (sid, pid, role) VALUES (11, 6, 'Larina');
INSERT INTO a_p (sid, pid, role) VALUES (11, 16, 'Tatyana');
INSERT INTO a_p (sid, pid, role) VALUES (11, 26, 'Olga');
INSERT INTO a_p (sid, pid, role) VALUES (11, 36, 'Filippyevna');
INSERT INTO a_p (sid, pid, role) VALUES (11, 46, 'Lensky');
INSERT INTO a_p (sid, pid, role) VALUES (11, 56, 'Eugene Onegin');
INSERT INTO a_p (sid, pid, role) VALUES (11, 66, 'Prince Gremin');
INSERT INTO a_p (sid, pid, role) VALUES (11, 76, 'Company Commander');
INSERT INTO a_p (sid, pid, role) VALUES (11, 86, 'Zaretsky');
INSERT INTO a_p (sid, pid, role) VALUES (11, 96, 'Triquet');
INSERT INTO a_p (sid, pid, role) VALUES (11, 9, 'Guillot');
INSERT INTO mg_p (sid, group_id, role) VALUES (11, 4, 'background vocal');

INSERT INTO a_p (sid, pid, role) VALUES (12, 6, 'Larina');
INSERT INTO a_p (sid, pid, role) VALUES (12, 16, 'Tatyana');
INSERT INTO a_p (sid, pid, role) VALUES (12, 26, 'Olga');
INSERT INTO a_p (sid, pid, role) VALUES (12, 36, 'Filippyevna');
INSERT INTO a_p (sid, pid, role) VALUES (12, 46, 'Lensky');
INSERT INTO a_p (sid, pid, role) VALUES (12, 56, 'Eugene Onegin');
INSERT INTO a_p (sid, pid, role) VALUES (12, 66, 'Prince Gremin');
INSERT INTO a_p (sid, pid, role) VALUES (12, 76, 'Company Commander');
INSERT INTO a_p (sid, pid, role) VALUES (12, 86, 'Zaretsky');
INSERT INTO a_p (sid, pid, role) VALUES (12, 96, 'Triquet');
INSERT INTO a_p (sid, pid, role) VALUES (12, 9, 'Guillot');
INSERT INTO mg_p (sid, group_id, role) VALUES (12, 4, 'background vocal');

INSERT INTO a_p (sid, pid, role) VALUES (13, 6, 'Larina');
INSERT INTO a_p (sid, pid, role) VALUES (13, 16, 'Tatyana');
INSERT INTO a_p (sid, pid, role) VALUES (13, 26, 'Olga');
INSERT INTO a_p (sid, pid, role) VALUES (13, 36, 'Filippyevna');
INSERT INTO a_p (sid, pid, role) VALUES (13, 46, 'Lensky');
INSERT INTO a_p (sid, pid, role) VALUES (13, 56, 'Eugene Onegin');
INSERT INTO a_p (sid, pid, role) VALUES (13, 66, 'Prince Gremin');
INSERT INTO a_p (sid, pid, role) VALUES (13, 76, 'Company Commander');
INSERT INTO a_p (sid, pid, role) VALUES (13, 86, 'Zaretsky');
INSERT INTO a_p (sid, pid, role) VALUES (13, 96, 'Triquet');
INSERT INTO a_p (sid, pid, role) VALUES (13, 9, 'Guillot');
INSERT INTO mg_p (sid, group_id, role) VALUES (13, 4, 'background vocal');

INSERT INTO a_p (sid, pid, role) VALUES (14, 6, 'Larina');
INSERT INTO a_p (sid, pid, role) VALUES (14, 16, 'Tatyana');
INSERT INTO a_p (sid, pid, role) VALUES (14, 26, 'Olga');
INSERT INTO a_p (sid, pid, role) VALUES (14, 36, 'Filippyevna');
INSERT INTO a_p (sid, pid, role) VALUES (14, 46, 'Lensky');
INSERT INTO a_p (sid, pid, role) VALUES (14, 56, 'Eugene Onegin');
INSERT INTO a_p (sid, pid, role) VALUES (14, 66, 'Prince Gremin');
INSERT INTO a_p (sid, pid, role) VALUES (14, 76, 'Company Commander');
INSERT INTO a_p (sid, pid, role) VALUES (14, 86, 'Zaretsky');
INSERT INTO a_p (sid, pid, role) VALUES (14, 96, 'Triquet');
INSERT INTO a_p (sid, pid, role) VALUES (14, 9, 'Guillot');
INSERT INTO mg_p (sid, group_id, role) VALUES (14, 4, 'background vocal');


INSERT INTO a_p (sid, pid, role) VALUES (15, 64, 'Carmen');
INSERT INTO a_p (sid, pid, role) VALUES (15, 74, 'Don José');
INSERT INTO a_p (sid, pid, role) VALUES (15, 84, 'Escamillo');
INSERT INTO a_p (sid, pid, role) VALUES (15, 94, 'Micaëla');
INSERT INTO a_p (sid, pid, role) VALUES (15, 5, 'Moralès');
INSERT INTO a_p (sid, pid, role) VALUES (15, 15, 'Frasquita');
INSERT INTO a_p (sid, pid, role) VALUES (15, 25, 'Mercédès');
INSERT INTO a_p (sid, pid, role) VALUES (15, 35, 'Lillas Pastia');
INSERT INTO a_p (sid, pid, role) VALUES (15, 45, 'Le Dancaïre');
INSERT INTO a_p (sid, pid, role) VALUES (15, 55, 'Le Remendado');
INSERT INTO mg_p (sid, group_id, role) VALUES (15, 2, 'orcherstra');

INSERT INTO a_p (sid, pid, role) VALUES (16, 64, 'Carmen');
INSERT INTO a_p (sid, pid, role) VALUES (16, 74, 'Don José');
INSERT INTO a_p (sid, pid, role) VALUES (16, 84, 'Escamillo');
INSERT INTO a_p (sid, pid, role) VALUES (16, 94, 'Micaëla');
INSERT INTO a_p (sid, pid, role) VALUES (16, 5, 'Moralès');
INSERT INTO a_p (sid, pid, role) VALUES (16, 15, 'Frasquita');
INSERT INTO a_p (sid, pid, role) VALUES (16, 25, 'Mercédès');
INSERT INTO a_p (sid, pid, role) VALUES (16, 35, 'Lillas Pastia');
INSERT INTO a_p (sid, pid, role) VALUES (16, 45, 'Le Dancaïre');
INSERT INTO a_p (sid, pid, role) VALUES (16, 55, 'Le Remendado');
INSERT INTO mg_p (sid, group_id, role) VALUES (16, 2, 'orcherstra');

INSERT INTO a_p (sid, pid, role) VALUES (17, 19, 'Luka');
INSERT INTO a_p (sid, pid, role) VALUES (17, 29, 'Vassilisa');
INSERT INTO a_p (sid, pid, role) VALUES (17, 39, 'Vaska Pepel');
INSERT INTO a_p (sid, pid, role) VALUES (17, 49, 'Natasha');
INSERT INTO a_p (sid, pid, role) VALUES (17, 59, 'The Actor');
INSERT INTO a_p (sid, pid, role) VALUES (17, 69, 'Anna');
INSERT INTO a_p (sid, pid, role) VALUES (17, 79, 'Satine');
INSERT INTO a_p (sid, pid, role) VALUES (17, 89, 'Nastya');
INSERT INTO a_p (sid, pid, role) VALUES (17, 99, 'The Baron');
INSERT INTO a_p (sid, pid, role) VALUES (17, 1, 'Kvashnya');
INSERT INTO a_p (sid, pid, role) VALUES (17, 11, 'Boobnoff');
INSERT INTO a_p (sid, pid, role) VALUES (17, 21, 'Kleeshtsh');
INSERT INTO a_p (sid, pid, role) VALUES (17, 31, 'Myedvyedyeff');
INSERT INTO a_p (sid, pid, role) VALUES (17, 41, 'Kostoloff');
INSERT INTO a_p (sid, pid, role) VALUES (17, 51, 'The Tartar');
INSERT INTO a_p (sid, pid, role) VALUES (17, 61, 'Alyoshka');
INSERT INTO mg_p (sid, group_id, role) VALUES (17, 1, 'singers');

INSERT INTO a_p (sid, pid, role) VALUES (18, 19, 'Luka');
INSERT INTO a_p (sid, pid, role) VALUES (18, 29, 'Vassilisa');
INSERT INTO a_p (sid, pid, role) VALUES (18, 39, 'Vaska Pepel');
INSERT INTO a_p (sid, pid, role) VALUES (18, 49, 'Natasha');
INSERT INTO a_p (sid, pid, role) VALUES (18, 59, 'The Actor');
INSERT INTO a_p (sid, pid, role) VALUES (18, 69, 'Anna');
INSERT INTO a_p (sid, pid, role) VALUES (18, 79, 'Satine');
INSERT INTO a_p (sid, pid, role) VALUES (18, 89, 'Nastya');
INSERT INTO a_p (sid, pid, role) VALUES (18, 99, 'The Baron');
INSERT INTO a_p (sid, pid, role) VALUES (18, 1, 'Kvashnya');
INSERT INTO a_p (sid, pid, role) VALUES (18, 11, 'Boobnoff');
INSERT INTO a_p (sid, pid, role) VALUES (18, 21, 'Kleeshtsh');
INSERT INTO a_p (sid, pid, role) VALUES (18, 31, 'Myedvyedyeff');
INSERT INTO a_p (sid, pid, role) VALUES (18, 41, 'Kostoloff');
INSERT INTO a_p (sid, pid, role) VALUES (18, 51, 'The Tartar');
INSERT INTO a_p (sid, pid, role) VALUES (18, 61, 'Alyoshka');
INSERT INTO mg_p (sid, group_id, role) VALUES (18, 1, 'singers');

INSERT INTO a_p (sid, pid, role) VALUES (19, 4, 'Hamlet');
INSERT INTO a_p (sid, pid, role) VALUES (19, 14, 'Claudius');
INSERT INTO a_p (sid, pid, role) VALUES (19, 24, 'Gertrude');
INSERT INTO a_p (sid, pid, role) VALUES (19, 34, 'Polonius');
INSERT INTO a_p (sid, pid, role) VALUES (19, 44, 'Ophelia');
INSERT INTO a_p (sid, pid, role) VALUES (19, 54, 'Horatio');
INSERT INTO a_p (sid, pid, role) VALUES (19, 64, 'Laertes'); 
INSERT INTO a_p (sid, pid, role) VALUES (19, 74, 'Osric'); 
INSERT INTO mg_p (sid, group_id, role) VALUES (19, 5, 'singers');
INSERT INTO m_p (sid, pid, role) VALUES (19, 62, 'guitar');
INSERT INTO m_p (sid, pid, role) VALUES (19, 82, 'organ');
INSERT INTO m_p (sid, pid, role) VALUES (19, 92, 'triangle');
INSERT INTO dg_p (sid, dgroup_id, role) VALUES (19, 1, 'shakes');

INSERT INTO a_p (sid, pid, role) VALUES (20, 4, 'Hamlet');
INSERT INTO a_p (sid, pid, role) VALUES (20, 14, 'Claudius');
INSERT INTO a_p (sid, pid, role) VALUES (20, 24, 'Gertrude');
INSERT INTO a_p (sid, pid, role) VALUES (20, 34, 'Polonius');
INSERT INTO a_p (sid, pid, role) VALUES (20, 44, 'Ophelia');
INSERT INTO a_p (sid, pid, role) VALUES (20, 54, 'Horatio');
INSERT INTO a_p (sid, pid, role) VALUES (20, 64, 'Laertes'); 
INSERT INTO a_p (sid, pid, role) VALUES (20, 74, 'Osric'); 
INSERT INTO mg_p (sid, group_id, role) VALUES (20, 5, 'singers');
INSERT INTO m_p (sid, pid, role) VALUES (20, 62, 'guitar');
INSERT INTO m_p (sid, pid, role) VALUES (20, 82, 'organ');
INSERT INTO m_p (sid, pid, role) VALUES (20, 92, 'triangle');
INSERT INTO dg_p (sid, dgroup_id, role) VALUES (20, 1, 'shakes');

INSERT INTO a_p (sid, pid, role) VALUES (21, 4, 'Hamlet');
INSERT INTO a_p (sid, pid, role) VALUES (21, 14, 'Claudius');
INSERT INTO a_p (sid, pid, role) VALUES (21, 24, 'Gertrude');
INSERT INTO a_p (sid, pid, role) VALUES (21, 34, 'Polonius');
INSERT INTO a_p (sid, pid, role) VALUES (21, 44, 'Ophelia');
INSERT INTO a_p (sid, pid, role) VALUES (21, 54, 'Horatio');
INSERT INTO a_p (sid, pid, role) VALUES (21, 64, 'Laertes'); 
INSERT INTO a_p (sid, pid, role) VALUES (21, 74, 'Osric'); 
INSERT INTO mg_p (sid, group_id, role) VALUES (21, 5, 'singers');
INSERT INTO m_p (sid, pid, role) VALUES (21, 62, 'guitar');
INSERT INTO m_p (sid, pid, role) VALUES (21, 82, 'organ');
INSERT INTO m_p (sid, pid, role) VALUES (21, 92, 'triangle');
INSERT INTO dg_p (sid, dgroup_id, role) VALUES (21, 1, 'shakes');

INSERT INTO a_p (sid, pid, role) VALUES (22, 4, 'Hamlet');
INSERT INTO a_p (sid, pid, role) VALUES (22, 14, 'Claudius');
INSERT INTO a_p (sid, pid, role) VALUES (22, 24, 'Gertrude');
INSERT INTO a_p (sid, pid, role) VALUES (22, 34, 'Polonius');
INSERT INTO a_p (sid, pid, role) VALUES (22, 44, 'Ophelia');
INSERT INTO a_p (sid, pid, role) VALUES (22, 54, 'Horatio');
INSERT INTO a_p (sid, pid, role) VALUES (22, 64, 'Laertes'); 
INSERT INTO a_p (sid, pid, role) VALUES (22, 74, 'Osric'); 
INSERT INTO mg_p (sid, group_id, role) VALUES (22, 5, 'singers');
INSERT INTO m_p (sid, pid, role) VALUES (22, 62, 'guitar');
INSERT INTO m_p (sid, pid, role) VALUES (22, 82, 'organ');
INSERT INTO m_p (sid, pid, role) VALUES (22, 92, 'triangle');
INSERT INTO dg_p (sid, dgroup_id, role) VALUES (22, 1, 'shakes');

INSERT INTO a_p (sid, pid, role) VALUES (23, 4, 'Hamlet');
INSERT INTO a_p (sid, pid, role) VALUES (23, 14, 'Claudius');
INSERT INTO a_p (sid, pid, role) VALUES (23, 24, 'Gertrude');
INSERT INTO a_p (sid, pid, role) VALUES (23, 34, 'Polonius');
INSERT INTO a_p (sid, pid, role) VALUES (23, 44, 'Ophelia');
INSERT INTO a_p (sid, pid, role) VALUES (23, 54, 'Horatio');
INSERT INTO a_p (sid, pid, role) VALUES (23, 64, 'Laertes'); 
INSERT INTO a_p (sid, pid, role) VALUES (23, 74, 'Osric'); 
INSERT INTO mg_p (sid, group_id, role) VALUES (23, 5, 'singers');
INSERT INTO m_p (sid, pid, role) VALUES (23, 62, 'guitar');
INSERT INTO m_p (sid, pid, role) VALUES (23, 82, 'organ');
INSERT INTO m_p (sid, pid, role) VALUES (23, 92, 'triangle');
INSERT INTO dg_p (sid, dgroup_id, role) VALUES (23, 1, 'shakes');