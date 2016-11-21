CREATE TABLE Person (
name VARCHAR,
surname VARCHAR,
info VARCHAR,
pid serial,
PRIMARY KEY (pid));

CREATE TABLE Producer(
pid INTEGER,
info VARCHAR,
PRIMARY KEY (pid),
FOREIGN KEY (pid) REFERENCES Person (pid) 
ON DELETE CASCADE);

CREATE TABLE Scenarist(
pid INTEGER,
info VARCHAR,
PRIMARY KEY (pid),
FOREIGN KEY (pid) REFERENCES Person (pid) 
ON DELETE CASCADE);

CREATE TABLE Musician(
pid INTEGER,
info VARCHAR,
PRIMARY KEY (pid),
FOREIGN KEY (pid) REFERENCES Person (pid) 
ON DELETE CASCADE);

CREATE TABLE Actor(
pid INTEGER,
info VARCHAR,
PRIMARY KEY (pid),
FOREIGN KEY (pid) REFERENCES Person (pid) 
ON DELETE CASCADE);

CREATE TABLE Dancer(
pid INTEGER,
info VARCHAR,
PRIMARY KEY (pid),
FOREIGN KEY (pid) REFERENCES Person (pid) 
ON DELETE CASCADE);

CREATE TABLE Musical_group(
name VARCHAR,
info VARCHAR,
group_id serial,
PRIMARY KEY (group_id));

CREATE TABLE Mus_in(
group_id INTEGER,
pid INTEGER,
PRIMARY KEY (pid,group_id),
FOREIGN KEY (pid) REFERENCES musician (pid) 
ON DELETE CASCADE,
FOREIGN KEY (group_id) REFERENCES Musical_group (group_id) 
ON DELETE CASCADE);

CREATE TABLE Dance_group(
name VARCHAR,
info VARCHAR,
dgroup_id serial,
PRIMARY KEY (dgroup_id));

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
name VARCHAR,
description VARCHAR,
PRIMARY KEY (per_id));

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
PRIMARY KEY (login));

CREATE TABLE Theater(
tid serial,
name VARCHAR,
description VARCHAR,
address VARCHAR,
city VARCHAR,
PRIMARY KEY (tid));

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
ON DELETE CASCADE);

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
FOREIGN KEY (pid) REFERENCES Musician (pid) 
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
ON DELETE NO ACTION);

CREATE TABLE Review(
login VARCHAR,
per_id INTEGER,
review VARCHAR,
PRIMARY KEY (login,per_id),
FOREIGN KEY (per_id) REFERENCES Performance (per_id) 
ON DELETE CASCADE,
FOREIGN KEY (login) REFERENCES Viewer (login) 
ON DELETE NO ACTION);

CREATE TABLE ActorGrades (
pid INTEGER,
gdate DATE,
grade REAL,
PRIMARY KEY (pid, gdate),
FOREIGN KEY (pid) REFERENCES Actor (pid) 
ON DELETE CASCADE);

CREATE TABLE ProducerGrades (
pid INTEGER,
gdate DATE,
grade REAL,
PRIMARY KEY (pid, gdate),
FOREIGN KEY (pid) REFERENCES Producer (pid) 
ON DELETE CASCADE);

CREATE TABLE ScenaristGrades (
pid INTEGER,
gdate DATE,
grade REAL,
PRIMARY KEY (pid, gdate),
FOREIGN KEY (pid) REFERENCES Scenarist (pid) 
ON DELETE CASCADE);

CREATE TABLE MusicianGrades (
pid INTEGER,
gdate DATE,
grade REAL,
PRIMARY KEY (pid, gdate),
FOREIGN KEY (pid) REFERENCES Musician (pid) 
ON DELETE CASCADE);

CREATE TABLE DancerGrades (
pid INTEGER,
gdate DATE,
grade REAL,
PRIMARY KEY (pid, gdate),
FOREIGN KEY (pid) REFERENCES Musician (pid) 
ON DELETE CASCADE);

CREATE TABLE MgroupGrades (
group_id INTEGER,
gdate DATE,
grade REAL,
PRIMARY KEY (group_id, gdate),
FOREIGN KEY (group_id) REFERENCES Musical_group (group_id) 
ON DELETE CASCADE);

CREATE TABLE DgroupGrades (
dgroup_id INTEGER,
gdate DATE,
grade REAL,
PRIMARY KEY (dgroup_id, gdate),
FOREIGN KEY (dgroup_id) REFERENCES Dance_group (dgroup_id) 
ON DELETE CASCADE);

CREATE TABLE PerformanceGrades (
per_id INTEGER,
gdate DATE,
grade REAL,
PRIMARY KEY (per_id, gdate),
FOREIGN KEY (per_id) REFERENCES Performance (per_id) 
ON DELETE CASCADE);

CREATE TABLE TheaterGrades (
tid INTEGER,
gdate DATE,
grade REAL,
PRIMARY KEY (tid, gdate),
FOREIGN KEY (tid) REFERENCES Theater (tid) 
ON DELETE CASCADE);

