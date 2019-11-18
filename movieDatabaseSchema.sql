create schema MovieDatabase;

use MovieDatabase;

CREATE TABLE user (
	uid integer(5) PRIMARY KEY, 
	email varchar(255) NOT NULL UNIQUE, 
	pass varchar(255) NOT NULL,
    fname varchar(255) NOT NULL,
    lname varchar(255) NOT NULL,
	cid integer(5) NOT NULL,
    isAdmin boolean NOT NULL DEFAULT 0
);

INSERT INTO user 
(uid, email, pass, fname, lname, cid, isAdmin)
VALUES
('01234', 'ovo@ovo.com', 'ovoxo', 'overton', 'wright', '23456', '1');

CREATE TABLE movie (
	mid integer(5) PRIMARY KEY,
    title varchar(255) NOT NULL UNIQUE,
    releaseDate date NOT NULL,
    synopsis varchar(255) NOT NULL UNIQUE,
    poster varchar(255) NOT NULL UNIQUE,
    trailer varchar(255) NOT NULL UNIQUE
);

INSERT INTO movie 
(mid, title, releaseDate, synopsis, poster, trailer)
VALUES
('01234', 'ovo@ovo.com', 'ovoxo', 'overton', 'wright', '23456', '1');


