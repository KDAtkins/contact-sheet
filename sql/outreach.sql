DROP TABLE IF EXISTS profile;
DROP TABLE IF EXISTS 'index';
DROP TABLE IF EXISTS contact;

CREATE TABLE profile (
	profileID BINARY(16) NOT NULL,
	profileActivationToken CHAR(32),
	profileEmail VARCHAR(128) NOT NULL,
	profileUsername VARCHAR(32) NOT NULL,
	profileHash CHAR(128) NOT NULL,
	profileSalt CHAR(64) NOT NULL,
	UNIQUE (profileEmail),
	UNIQUE (profileUsername),
	PRIMARY KEY(profileID)
);