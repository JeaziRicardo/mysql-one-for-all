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