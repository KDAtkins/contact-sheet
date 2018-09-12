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

CREATE TABLE 'index' (
	indexID BINARY(16) NOT NULL,
	indexProfileID BINARY(16) NOT NULL,
	indexName VARCHAR(45) NOT NULL,
	INDEX (indexProfileID),
	FOREIGN KEY (indexProfileID) REFERENCES profile(profileID),
	PRIMARY KEY (indexID)
);

CREATE TABLE contact (
	contactID BINARY(16) NOT NULL,
	contactIndexID BINARY(16) NOT NULL,
	contactFirstName VARCHAR(32) NOT NULL,
	contactLastName VARCHAR(32) NOT NULL,
	contactEmail VARCHAR(128) NOT NULL,
	contactPhone VARCHAR(20) NOT NULL,
	contactCity VARCHAR(255) NOT NULL,
	contactState VARCHAR(30) NOT NULL,
	contactDate DATE,
	INDEX (contactIndexID),
	FOREIGN KEY (contactIndexID) REFERENCES `index`(indexID),
	PRIMARY KEY (contactID)
);