DROP DATABASE IF EXISTS MovieCatalogue;

CREATE DATABASE IF NOT EXISTS MovieCatalogue;

USE MovieCatalogue;

CREATE TABLE IF NOT EXISTS Director (
    DirectorID INT AUTO_INCREMENT NOT NULL,
    FirstName VARCHAR(30) NOT NULL,
    LastName VARCHAR(30) NOT NULL,
    BirthDate DATE NULL,
    
    PRIMARY KEY (DirectorId)
);

CREATE TABLE IF NOT EXISTS Genre (
	GenreId INT AUTO_INCREMENT NOT NULL,
    GenreName VARCHAR(30) NOT NULL,
    
    PRIMARY KEY (GenreId)
);

CREATE TABLE IF NOT EXISTS Movie (
    MovieId INT AUTO_INCREMENT NOT NULL,
    GenreId INT NOT NULL,
	DirectorId INT NULL,
    RatingId INT NULL,
    Title VARCHAR(128) NOT NULL,
    ReleaseDate DATE NULL,
    
    PRIMARY KEY (MovieId),
    FOREIGN KEY (GenreId) REFERENCES Genre(GenreId),
    FOREIGN KEY (DirectorId) REFERENCES Director(DirectorId)
);

CREATE TABLE IF NOT EXISTS Rating (
   RatingId INT AUTO_INCREMENT NOT NULL,
   RatingName VARCHAR(5) NOT NULL,
   
   PRIMARY KEY (RatingId)
);

CREATE TABLE IF NOT EXISTS Actor (
	ActorID INT AUTO_INCREMENT NOT NULL,
	FirstName VARCHAR(30) NOT NULL,
	LastName VARCHAR(30) NOT NULL,
	BirthDate DATE NULL,
    
    PRIMARY KEY (ActorId)
);

CREATE TABLE IF NOT EXISTS CastMembers (
	CastMemberID INT AUTO_INCREMENT NOT NULL,
	ActorID INT NOT NULL,
	MovieID INT NOT NULL,
	Role VARCHAR(50) NOT NULL,
    
    PRIMARY KEY (CastMemberId),
    FOREIGN KEY (ActorId) REFERENCES Actor(ActorId),
    FOREIGN KEY (MovieId) REFERENCES Movie(MovieId)
);

/*ALTER TABLE Movie
    ADD COLUMN (
        GenreId INT NOT NULL
    ),
    ADD CONSTRAINT fk_MovieGenre
        FOREIGN KEY (GenreId) 
        REFERENCES Genre(GenreId) ON DELETE NO ACTION;*/