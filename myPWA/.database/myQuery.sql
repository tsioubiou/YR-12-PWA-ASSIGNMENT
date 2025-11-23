PRAGMA foreign_keys = ON;

/*
CREATE TABLE Artists (
    ArtistID INT PRIMARY KEY NOT NULL,
    ArtistName VARCHAR(255) NOT NULL
);

CREATE TABLE Albums (
    AlbumID INT PRIMARY KEY NOT NULL,
    AlbumName VARCHAR(255) NOT NULL,
    AlbumLength VARCHAR(255) NOT NULL,
    AlbumSongCount INT NOT NULL,
    AlbumReleaseDate VARCHAR(255) NOT NULL
);

CREATE TABLE Songs (
    SongID INT PRIMARY KEY NOT NULL,
    SongName VARCHAR(255) NOT NULL,
    SongLength VARCHAR(255) NOT NULL,
    AlbumID INT NOT NULL,
    AlbumName VARCHAR(255) NOT NULL,
    FOREIGN KEY (AlbumID) REFERENCES Albums(AlbumID)
);

CREATE TABLE Genres (
    GenreID INT PRIMARY KEY NOT NULL,
    GenreName VARCHAR(255) NOT NULL
);

CREATE TABLE SongsArtists (
    SongArtistID INT PRIMARY KEY NOT NULL,
    SongID INT NOT NULL,
    SongName VARCHAR(255) NOT NULL,
    ArtistID INT NOT NULL,
    ArtistName VARCHAR(255) NOT NULL,
    FOREIGN KEY (SongID) REFERENCES Songs(SongID),
    FOREIGN KEY (ArtistID) REFERENCES Artists(ArtistID)
);

CREATE TABLE SongsGenres (
    SongGenreID INT PRIMARY KEY NOT NULL,
    SongID INT NOT NULL,
    SongName VARCHAR(255) NOT NULL,
    GenreID INT NOT NULL,
    GenreName VARCHAR(255) NOT NULL,
    FOREIGN KEY (SongID) REFERENCES Songs(SongID),
    FOREIGN KEY (GenreID) REFERENCES Genres(GenreID)
);
*/

--Use this structure to add the single: Creo - Sky and Soul to the database.

/*
INSERT INTO Artists (ArtistID, ArtistName) VALUES
(1, 'Creo');

INSERT INTO Albums (AlbumID, AlbumName, AlbumLength, AlbumSongCount, AlbumReleaseDate) VALUES
(1, 'Sky and Soul', '4:13', 1, '10 Mar 2023');

INSERT INTO Songs (SongID, SongName, SongLength, AlbumID, AlbumName) VALUES
(1, 'Sky and Soul', '4:13', 1, 'Sky and Soul');

INSERT INTO Genres (GenreID, GenreName) VALUES
(1, 'Electronic'),
(2, 'Soul');

INSERT INTO SongsArtists (SongArtistID, SongID, SongName, ArtistID, ArtistName) VALUES
(1, 1, 'Sky and Soul', 1, 'Creo');

INSERT INTO SongsGenres (SongGenreID, SongID, SongName, GenreID, GenreName) VALUES
(1, 1, 'Sky and Soul', 1, 'Electronic'),
(2, 1, 'Sky and Soul', 2, 'Soul');
*/

--Use this structure to add the solo album: Anonimato to the database.

/*
INSERT INTO Artists (ArtistID, ArtistName) VALUES
(2, 'Devath');

INSERT INTO Albums (AlbumID, AlbumName, AlbumLength, AlbumSongCount, AlbumReleaseDate) VALUES
(2, 'Anonimato', '21:47', 5, '5 Sep 2025');

INSERT INTO Songs (SongID, SongName, SongLength, AlbumID, AlbumName) VALUES
(2, 'Anonimato', '4:31', 2, 'Anonimato'),
(3, 'Multiframed', '3:55', 2, 'Anonimato'),
(4, 'Meraki', '5:16', 2, 'Anonimato'),
(5, 'Phantom', '3:39', 2, 'Anonimato'),
(6, 'Dream Parade', '4:24', 2, 'Anonimato');

INSERT INTO Genres (GenreID, GenreName) VALUES
(3, 'Dubstep'),
(4, 'Riddim'),
(5, 'Tearout');

INSERT INTO SongsArtists (SongArtistID, SongID, SongName, ArtistID, ArtistName) VALUES
(2, 2, 'Anonimato', 2, 'Devath'),
(3, 3, 'Multiframed', 2, 'Devath'),
(4, 4, 'Meraki', 2, 'Devath'),
(5, 5, 'Phantom', 2, 'Devath'),
(6, 6, 'Dream Parade', 2, 'Devath');

INSERT INTO SongsGenres (SongGenreID, SongID, SongName, GenreID, GenreName) VALUES
(3, 2, 'Anonimato', 3, 'Dubstep'),
(4, 2, 'Anonimato', 4, 'Riddim'),
(5, 3, 'Multiframed', 3, 'Dubstep'),
(6, 3, 'Multiframed', 4, 'Riddim'),
(7, 3, 'Multiframed', 5, 'Tearout'),
(8, 4, 'Meraki', 3, 'Dubstep'),
(9, 4, 'Meraki', 4, 'Riddim'),
(10, 4, 'Meraki', 5, 'Tearout'),
(11, 5, 'Phantom', 3, 'Dubstep'),
(12, 5, 'Phantom', 4, 'Riddim'),
(13, 5, 'Phantom', 5, 'Tearout'),
(14, 6, 'Dream Parade', 3, 'Dubstep'),
(15, 6, 'Dream Parade', 4, 'Riddim'),
(16, 6, 'Dream Parade', 5, 'Tearout');
*/

--Use this structure to add the multi-artist collaboration album: UNDERTALE (10-Year Anniversary Remixes) to the database.

/*
INSERT INTO Artists (ArtistID, ArtistName) VALUES
(3, 'Toby Fox'),
(4, 'Øneheart'),
(5, 'No Mana'),
(6, 'Tokyo Machine'),
(7, 'RoboRob'),
(8, 'Vector U'),
(9, 'RoBKTA'),
(10, 'VGR'),
(11, 'PrototypeRaptor'),
(12, 'Haywyre'),
(13, 'Pegboard Nerds');

INSERT INTO Albums (AlbumID, AlbumName, AlbumLength, AlbumSongCount, AlbumReleaseDate) VALUES
(3, 'UNDERTALE (10-Year Anniversary Remixes)', '31:47', 10, '6 Oct 2025');

INSERT INTO Songs (SongID, SongName, SongLength, AlbumID, AlbumName) VALUES
(7, 'UNDERTALE - Fallen Down (Øneheart Remix)', '2:03', 3, 'UNDERTALE (10-Year Anniversary Remixes)'),
(8, 'UNDERTALE - Once Upon A Time (No Mana Remix)', '4:15', 3, 'UNDERTALE (10-Year Anniversary Remixes)'),
(9, 'UNDERTALE - sans. (Tokyo Machine Remix)', '2:40', 3, 'UNDERTALE (10-Year Anniversary Remixes)'),
(10, 'UNDERTALE - Ghost Fight (RoboRob Remix)', '2:38', 3, 'UNDERTALE (10-Year Anniversary Remixes)'),
(11, 'UNDERTALE - Spider Dance (Vector U Remix)', '3:15', 3, 'UNDERTALE (10-Year Anniversary Remixes)'),
(12, 'UNDERTALE - CORE (RoBKTA Remix)', '3:33', 3, 'UNDERTALE (10-Year Anniversary Remixes)'),
(13, 'UNDERTALE - Death By Glamour (VGR Remix)', '3:15', 3, 'UNDERTALE (10-Year Anniversary Remixes)'),
(14, 'UNDERTALE - ASGORE (PrototypeRaptor Remix)', '3:37', 3, 'UNDERTALE (10-Year Anniversary Remixes)'),
(15, 'UNDERTALE - Hopes and Dreams (Haywyre Remix)', '3:38', 3, 'UNDERTALE (10-Year Anniversary Remixes)'),
(16, 'UNDERTALE - Megalovania (Pegboard Nerds Remix)', '2:50', 3, 'UNDERTALE (10-Year Anniversary Remixes)');

INSERT INTO Genres (GenreID, GenreName) VALUES
(6, 'Ambient'),
(7, 'House'),
(8, 'Electro House'),
(9, 'Electro'),
(10, 'Rally House');

INSERT INTO SongsArtists (SongArtistID, SongID, SongName, ArtistID, ArtistName) VALUES
(7, 7, 'UNDERTALE - Fallen Down (Øneheart Remix)', 3, 'Toby Fox'),
(8, 7, 'UNDERTALE - Fallen Down (Øneheart Remix)', 4, 'Øneheart'),
(9, 8, 'UNDERTALE - Once Upon A Time (No Mana Remix)', 3, 'Toby Fox'),
(10, 8, 'UNDERTALE - Once Upon A Time (No Mana Remix)', 5, 'No Mana'),
(11, 9, 'UNDERTALE - sans. (Tokyo Machine Remix)', 3, 'Toby Fox'),
(12, 9, 'UNDERTALE - sans. (Tokyo Machine Remix)', 6, 'Tokyo Machine'),
(13, 10, 'UNDERTALE - Ghost Fight (RoboRob Remix)', 3, 'Toby Fox'),
(14, 10, 'UNDERTALE - Ghost Fight (RoboRob Remix)', 7, 'RoboRob'),
(15, 11, 'UNDERTALE - Spider Dance (Vector U Remix)', 3, 'Toby Fox'),
(16, 11, 'UNDERTALE - Spider Dance (Vector U Remix)', 8, 'Vector U'),
(17, 12, 'UNDERTALE - CORE (RoBKTA Remix)', 3, 'Toby Fox'),
(18, 12, 'UNDERTALE - CORE (RoBKTA Remix)', 9, 'RoBKTA'),
(19, 13, 'UNDERTALE - Death By Glamour (VGR Remix)', 3, 'Toby Fox'),
(20, 13, 'UNDERTALE - Death By Glamour (VGR Remix)', 10, 'VGR'),
(21, 14, 'UNDERTALE - ASGORE (PrototypeRaptor Remix)', 3, 'Toby Fox'),
(22, 14, 'UNDERTALE - ASGORE (PrototypeRaptor Remix)', 11, 'PrototypeRaptor'),
(23, 15, 'UNDERTALE - Hopes and Dreams (Haywyre Remix)', 3, 'Toby Fox'),
(24, 15, 'UNDERTALE - Hopes and Dreams (Haywyre Remix)', 12, 'Haywyre'),
(25, 16, 'UNDERTALE - Megalovania (Pegboard Nerds Remix)', 3, 'Toby Fox'),
(26, 16, 'UNDERTALE - Megalovania (Pegboard Nerds Remix)', 13, 'Pegboard Nerds');

INSERT INTO SongsGenres (SongGenreID, SongID, SongName, GenreID, GenreName) VALUES
(17, 7, 'UNDERTALE - Fallen Down (Øneheart Remix)', 6, 'Ambient'),
(18, 8, 'UNDERTALE - Once Upon A Time (No Mana Remix)', 7, 'House'),
(19, 9, 'UNDERTALE - sans. (Tokyo Machine Remix)', 8, 'Electro House'),
(20, 10, 'UNDERTALE - Ghost Fight (RoboRob Remix)', 7, 'House'),
(21, 11, 'UNDERTALE - Spider Dance (Vector U Remix)', 3, 'Dubstep'),
(22, 12, 'UNDERTALE - CORE (RoBKTA Remix)', 9, 'Electro'),
(23, 13, 'UNDERTALE - Death By Glamour (VGR Remix)', 10, 'Rally House'),
(24, 14, 'UNDERTALE - ASGORE (PrototypeRaptor Remix)', 1, 'Electronic'),
(25, 15, 'UNDERTALE - Hopes and Dreams (Haywyre Remix)', 1, 'Electronic'),
(26, 16, 'UNDERTALE - Megalovania (Pegboard Nerds Remix)', 8, 'Electro House');
*/

PRAGMA foreign_keys;