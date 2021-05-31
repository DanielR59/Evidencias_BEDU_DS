CREATE DATABASE IF NOT EXISTS danielRosas;

USE danielRosas;

CREATE TABLE IF NOT EXISTS users(
   id_users INT PRIMARY KEY, 
   genero VARCHAR(1), 
   edad INT,
   ocup INT,
   cp VARCHAR(20)
);

SHOW tables;
-- Reto 1 --

CREATE TABLE IF NOT EXISTS movies(
	id_movies INT PRIMARY KEY,
    titulo VARCHAR(50),
    generos VARCHAR(50)

);

SHOW tables;

CREATE TABLE IF NOT EXISTS ratings (
	userid INT,
    movieid INT,
    rating INT,
    time_stamp BIGINT ,
	FOREIGN KEY (userid) REFERENCES users(id_users),
    FOREIGN KEY (movieid) REFERENCES movies(id_movies)
    );


-- Reto 2 --
INSERT INTO users (id_users,genero,edad,ocup,cp) VALUES (7000,'F',25,20,'03100');   

INSERT INTO movies (id_movies,titulo,generos) VALUES (8000,'Crazy and Stupid Love',"Romcom");

INSERT INTO ratings (userid,movieid,rating,time_stamp) VALUES (7000,8000,5,978300760);
