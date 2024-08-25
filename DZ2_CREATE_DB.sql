create table genre (
    ID integer not null,
    name VARCHAR(30) unique,
    primary key (ID)
) 
create table genre_singer (
    ID_genre integer not null,
    ID_singer integer not null,
    primary key (ID_genre, ID_singer),
    FOREIGN KEY (ID_genre) REFERENCES genre(ID),
    FOREIGN KEY (ID_singer) REFERENCES singer(ID)
) 
create table singer (
    ID integer not null,
    nickname VARCHAR(30) unique,
    primary key (ID)
) 
create table singer_album (
    ID_singer integer not null,
    ID_album integer not null,
    primary key (ID_album, ID_singer),
    FOREIGN KEY (ID_singer) REFERENCES singer(ID),
    FOREIGN KEY (ID_album) REFERENCES album(ID)
) 
create table album (
    ID integer not null,
    name VARCHAR(30) unique,
    date_release date,
    primary key (ID)
) 
create table track (
    ID integer not null,
    name VARCHAR(30) unique,
    time_track time,
    id_album integer not null,
    primary key (ID),
    FOREIGN KEY (id_album) REFERENCES album(ID)
) 
create table track_collection (
    ID_track integer not null,
    ID_collection integer not null,
    primary key (ID_track, ID_collection),
    FOREIGN KEY (ID_track) REFERENCES track(ID),
    FOREIGN KEY (ID_collection) REFERENCES collection(ID)
) 
create table collection (
    ID integer not null,
    name VARCHAR(30) unique,
    date_release date,
    primary key (ID)
)