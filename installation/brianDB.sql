CREATE TABLE CD (
    cd_id INT AUTO_INCREMENT,
    serialNo CHAR(9) NOT NULL UNIQUE,
    title VARCHAR(100) NOT NULL,
    subtitle VARCHAR(150) NOT NULL,
    difficulty_level INT NOT NULL,
    tracks INT,
    cd_cover LONGBLOB,
    PRIMARY KEY(cd_id),
    FOREIGN KEY (difficulty_level) REFERENCES difficulty(difficulty_id)
);

CREATE TABLE difficulty (
	difficulty_id INT AUTO_INCREMENT,
	value VARCHAR(50),
	PRIMARY KEY(difficulty_id)
);

CREATE TABLE track (
	track_id INT AUTO_INCREMENT,
	cd_id INT NOT NULL,
	name VARCHAR(100) NOT NULL,
	PRIMARY KEY(track_id),
	FOREIGN KEY (cd_id) REFERENCES CD(cd_id)
);
