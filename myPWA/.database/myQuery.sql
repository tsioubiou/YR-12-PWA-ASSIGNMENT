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


--Use this structure to add the single: Creo - Sky and Soul to the database.


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


--Use this structure to add the solo album: Anonimato to the database.


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


--Request by: Sister.
--Use this structure to add the multi-artist collaboration album: UNDERTALE (10-Year Anniversary Remixes) to the database.


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

--Request by: Mum.
--Adding the solo album: The Black Album to the database.

INSERT INTO Artists (ArtistID, ArtistName) VALUES
(14, 'Metallica');

INSERT INTO Albums (AlbumID, AlbumName, AlbumLength, AlbumSongCount, AlbumReleaseDate) VALUES
(4, 'The Black Album', '1:01:16', 12, '12 Aug 1991');

INSERT INTO Songs (SongID, SongName, SongLength, AlbumID, AlbumName) VALUES
(17, 'Enter Sandman', '5:42', 4, 'The Black Album'),
(18, 'Sad But True', '4:17', 4, 'The Black Album'),
(19, 'Holier Than Thou', '3:46', 4, 'The Black Album'),
(20, 'The Unforgiven', '6:32', 4, 'The Black Album'),
(21, 'Wherever I May Roam', '6:35', 4, 'The Black Album'),
(22, 'Don''t Tread on Me', '4:09', 4, 'The Black Album'),
(23, 'Through the Never', '4:01', 4, 'The Black Album'),
(24, 'Nothing Else Matters', '6:07', 4, 'The Black Album'),
(25, 'Of Wolf and Man', '4:14', 4, 'The Black Album'),
(26, 'The God That Failed', '5:08', 4, 'The Black Album'),
(27, 'My Friend of Misery', '6:48', 4, 'The Black Album'),
(28, 'The Struggle Within', '3:52', 4, 'The Black Album');

INSERT INTO Genres (GenreID, GenreName) VALUES
(11, 'Heavy Metal'),
(12, 'Metal'),
(13, 'Rock');

INSERT INTO SongsArtists (SongArtistID, SongID, SongName, ArtistID, ArtistName) VALUES
(27, 17, 'Enter Sandman', 14, 'Metallica'),
(28, 18, 'Sad But True', 14, 'Metallica'),
(29, 19, 'Holier Than Thou', 14, 'Metallica'),
(30, 20, 'The Unforgiven', 14, 'Metallica'),
(31, 21, 'Wherever I May Roam', 14, 'Metallica'),
(32, 22, 'Don''t Tread on Me', 14, 'Metallica'),
(33, 23, 'Through the Never', 14, 'Metallica'),
(34, 24, 'Nothing Else Matters', 14, 'Metallica'),
(35, 25, 'Of Wolf and Man', 14, 'Metallica'),
(36, 26, 'The God That Failed', 14, 'Metallica'),
(37, 27, 'My Friend of Misery', 14, 'Metallica'),
(38, 28, 'The Struggle Within', 14, 'Metallica');

INSERT INTO SongsGenres (SongGenreID, SongID, SongName, GenreID, GenreName) VALUES
(27, 17, 'Enter Sandman', 11, 'Heavy Metal'),
(28, 17, 'Enter Sandman', 12, 'Metal'),
(29, 18, 'Sad But True', 12, 'Metal'),
(30, 19, 'Holier Than Thou', 12, 'Metal'),
(31, 20, 'The Unforgiven', 12, 'Metal'),
(32, 21, 'Wherever I May Roam', 12, 'Metal'),
(33, 22, 'Don''t Tread on Me', 12, 'Metal'),
(34, 23, 'Through the Never', 12, 'Metal'),
(35, 24, 'Nothing Else Matters', 13, 'Rock'),
(36, 25, 'Of Wolf and Man', 12, 'Metal'),
(37, 26, 'The God That Failed', 11, 'Heavy Metal'),
(38, 27, 'My Friend of Misery', 13, 'Rock'),
(39, 28, 'The Struggle Within', 12, 'Metal');
*/

PRAGMA foreign_keys;