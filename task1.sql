create table if not exists Genre(
	Id serial primary key,
	Name varchar(40) not null
);
create table if not exists Artist(
	Id serial primary key,
	Nickname varchar(80) not null unique,
	Genre_id integer references Genre(id)
);
create table if not exists Album(
	Id serial primary key,
	Name varchar(80) not null,
	Year integer not null,
	Artist_id integer references Artist(Id)
);
create table if not exists Track(
	Id serial primary key,
	Name varchar(80) not null,
	Length numeric(8,0) not null,
	Album_id integer references Album(Id)
);

