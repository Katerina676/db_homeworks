INSERT INTO genre(name)
	   VALUES ('Rock'),
	          ('Pop'),
		      ('Jazz'),
		      ('Rap'),
		      ('Baroque pop');

INSERT INTO artist(name)
	   VALUES ('Lana Del Ray'),
	          ('Billie Eilish'),
		      ('Missy Elliott'),
		      ('Betty Carter'),
		      ('Freddie Mercury'),
			  ('David Bowie'),
			  ('Madonna'),
			  ('John Lennon');

INSERT INTO album(year, name)
	   VALUES (2011, 'Born to Die'),
	          (2019, 'Everything i wanted'),
		      (1998, 'Ray of Light'),
		      (1964, 'Inside Betty Carter'),
		      (1985, 'Mr. Bad Guy'),
			  (2005, 'The Cookbook'),
			  (1971, 'Imagine'),
			  (1971, 'Hunky Dory');

INSERT INTO genre_artist(artist_id, genre_id)
	   VALUES (1, 5),
	          (1, 2),
			  (2, 2),
			  (3, 4),
			  (4, 3),
			  (5, 1),
			  (5, 2),
			  (6, 1),
			  (7, 2),
			  (8, 1);

INSERT INTO album_artist(album_id, artist_id)
	VALUES (1, 1),
	       (2, 2),
		   (3, 7),
		   (4, 4),
		   (5, 5),
		   (6, 3),
		   (7, 8),
		   (8, 6);

INSERT INTO track(length, name, albumid)
	   VALUES (217, 'Changes', 8),
	          (182, 'Kooks', 8),
			  (381, 'Skin', 3),
			  (378, 'Frozen', 3),
			  (209, 'Blue Jeans', 1),
			  (215, 'Radio', 1),
			  (188, 'This is Always', 4),
			  (188, 'Open the Door', 4),
			  (289, 'Joy', 6),
			  (172, 'My Struggles', 6),
			  (182, 'Imagine', 7),
			  (160, 'Oh My Love', 7),
			  (216, 'I was born to love you', 5),
			  (242, 'Made in heaven', 5),
			  (245, 'Everything i wanted', 2);

INSERT INTO collection(year, name)
	   VALUES (2013, 'one'),
	          (2014, 'two'),
			  (2015, 'three'),
			  (2016, 'four'),
			  (2017, 'five'),
			  (2018, 'six'),
			  (2019, 'seven'),
			  (2020, 'eight');

INSERT INTO tracks_collection(collection_id, track_id)
	   VALUES (1, 14),
	          (1, 2),
			  (2, 2),
			  (3, 5),
			  (4, 9),
			  (5, 10),
			  (6, 11),
			  (7, 15),
			  (8, 2),
			  (8, 3),
			  (2, 4),
			  (4, 7),
			  (5, 3),
			  (6, 12),
			  (7, 1),
			  (8, 6),
			  (3, 13),
			  (3, 14);