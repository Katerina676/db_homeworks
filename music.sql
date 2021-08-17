create table if not exists Genre (
	Genre_id serial primary key,
	Name varchar(60) not null
);

create table if not exists Artist (
	Artist_id serial primary key,
	Name varchar(20) not null unique
);

create table if not exists Album(
	Album_id serial primary key,
	Year integer not null,
	Name varchar(100) not null
);

create table if not exists Genre_artist(
	Genre_id integer references Genre(Genre_id) not null,
	Artist_id integer references Artist(Artist_id) not null
);

create table if not exists Album_artist(
	Album_id integer references Album(Album_id) not null,
	Artist_id integer references Artist(Artist_id) not null
);

create table if not exists Track(
	Track_id serial primary key,
	Length integer not null,
	Name varchar(100) not null,
	AlbumId integer references Album(Album_id) not null
);

create table if not exists Collection(
	Collection_id serial primary key,
	Year integer not null,
	Name varchar(100) not null
);

create table if not exists Tracks_collection(
	Collection_id integer references Collection(Collection_id) not null,
	Track_id integer references Track(Track_id) not null
);
