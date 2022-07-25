DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

CREATE TABLE SpotifyClone.plans(
  plan_id INT PRIMARY KEY AUTO_INCREMENT,
  plan VARCHAR(15) NOT NULL,
  plan_value DECIMAL(3,2) NOT NULL
) ENGINE = InnoDB;

CREATE TABLE SpotifyClone.users(
  user_id INT PRIMARY KEY AUTO_INCREMENT,
  user VARCHAR(30) NOT NULL,
  age INT NOT NULL,
  signature_date DATE NOT NULL,
  plan_id INT NOT NULL,
  FOREIGN KEY (plan_id) REFERENCES SpotifyClone.plans(plan_id)
) ENGINE = InnoDB;

CREATE TABLE SpotifyClone.artists(
  artist_id INT PRIMARY KEY AUTO_INCREMENT,
  artist VARCHAR(30) NOT NULL
) ENGINE = InnoDB;

CREATE TABLE SpotifyClone.followers(
  follower_id INT PRIMARY KEY AUTO_INCREMENT,
  user_id INT NOT NULL,
  artist_id INT NOT NULL,
  FOREIGN KEY (user_id) REFERENCES SpotifyClone.users(user_id),
  FOREIGN KEY (artist_id) REFERENCES SpotifyClone.artists(artist_id)
) ENGINE = InnoDB;

CREATE TABLE SpotifyClone.albums(
  album_id INT PRIMARY KEY AUTO_INCREMENT,
  album VARCHAR(30) NOT NULL,
  release_year YEAR NOT NULL,
  artist_id INT NOT NULL,
  FOREIGN KEY (artist_id) REFERENCES SpotifyClone.artists(artist_id)
) ENGINE = InnoDB;

CREATE TABLE SpotifyClone.songs(
  song_id INT PRIMARY KEY AUTO_INCREMENT,
  song VARCHAR(50) NOT NULL,
  duration_sec INT NOT NULL,
  album_id INT NOT NULL,
  FOREIGN KEY (album_id) REFERENCES SpotifyClone.albums(album_id)
) ENGINE = InnoDB;

CREATE TABLE SpotifyClone.history(
  history_id INT PRIMARY KEY AUTO_INCREMENT,
  produc_date DATETIME NOT NULL,
  song_id INT NOT NULL,
  user_id INT NOT NULL,
  FOREIGN KEY (song_id) REFERENCES SpotifyClone.songs(song_id),
  FOREIGN KEY (user_id) REFERENCES SpotifyClone.users(user_id)
) ENGINE = InnoDB;

INSERT INTO SpotifyClone.plans (plan, plan_value)
VALUES
  ('gratuito', 0),
  ('familiar', 7.99),
  ('universitário', 5.99),
  ('pessoal', 6.99);

INSERT INTO SpotifyClone.users (user, age, signature_date, plan_id)
VALUES
  ('Thati',	23,	'2019-10-20',	1),
  ('Cintia', 35, '2017-12-30', 2),
  ('Bill', 20, '2019-06-05', 3),
  ('Roger', 45, '2020-05-13', 4),
  ('Norman', 58, '2017-02-17', 4),
  ('Patrick', 33, '2017-01-06', 2),
  ('Vivian', 26, '2018-01-05', 3),
  ('Carol', 19, '2018-02-14', 3),
  ('Angelina', 42, '2018-04-29', 2),
  ('Paul', 46, '2017-01-17', 2);

INSERT INTO SpotifyClone.artists (artist)
VALUES
  ('Walter Phoenix'),
  ('Peter Strong'),
  ('Lance Day'),
  ('Freedie Shannon'),
  ('Tyler Isle'),
  ('Fog');

INSERT INTO SpotifyClone.followers (user_id, artist_id)
VALUES
  (1,	1),
  (1,	4),
  (1,	3),
  (2,	1),
  (2,	3),
  (3,	2),
  (3,	1),
  (4,	4),
  (5,	5),
  (5,	6),
  (6,	6),
  (6,	3),
  (6,	1),
  (7,	2),
  (7,	5),
  (8,	1),
  (8,	5),
  (9,	6),
  (9,	4),
  (9,	3),
  (10, 2),
  (10, 6);

INSERT INTO SpotifyClone.albums (album, release_year, artist_id)
VALUES
  ('Envious',	'1990',	1),
  ('Exuberant',	'1993',	1),
  ('Hallowed Steam',	'1995',	2),
  ('Incandescent',	'1998',	3),
  ('Temporary Culture',	'2001',	4),
  ('Library of liberty',	'2003',	4),
  ('Chained Down',	'2007',	5),
  ('Cabinet of fools',	'2012',	5),
  ('No guarantees',	'2015',	5),
  ('Apparatus',	'2015',	6);