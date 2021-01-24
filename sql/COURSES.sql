DROP TABLE IF EXISTS `COURSES`;
CREATE TABLE IF NOT EXISTS COURSES (
	id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
	course_name TEXT,
	course_description TEXT,
	image LONGBLOB,
	rating INT,
	instructor VARCHAR(50),
	link VARCHAR(1000)
);
insert into COURSES (id, course_name, course_description, image, rating, instructor, link) values (1, 'sapien non', 'Maecenas pulvinar lobortis est. Phasellus sit amet erat.', 'http://dummyimage.com/100x100.png/5fa2dd/ffffff', 2, 'Denney Stobbes', 'http://nydailynews.com/curabitur/at/ipsum/ac.xml');
insert into COURSES (id, course_name, course_description, image, rating, instructor, link) values (2, 'at turpis', 'Vivamus in felis eu sapien cursus vestibulum. Proin eu mi.', 'http://dummyimage.com/100x100.png/ff4444/ffffff', 1, 'Ronnie Ranaghan', 'http://earthlink.net/venenatis/lacinia/aenean.jpg');
insert into COURSES (id, course_name, course_description, image, rating, instructor, link) values (3, 'turpis donec', 'Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', 'http://dummyimage.com/100x100.png/ff4444/ffffff', 1, 'Si Lansley', 'https://1und1.de/pellentesque.jsp');
insert into COURSES (id, course_name, course_description, image, rating, instructor, link) values (4, 'habitasse platea', 'Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros. Vestibulum ac est lacinia nisi venenatis tristique.', 'http://dummyimage.com/100x100.png/5fa2dd/ffffff', 2, 'Lisette Lumsdale', 'http://oakley.com/turpis.js');
insert into COURSES (id, course_name, course_description, image, rating, instructor, link) values (5, 'quis orci nullam molestie', 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor.', 'http://dummyimage.com/100x100.png/cc0000/ffffff', 5, 'Carol Barnson', 'http://google.com.au/urna/ut/tellus/nulla.aspx');
insert into COURSES (id, course_name, course_description, image, rating, instructor, link) values (6, 'lobortis convallis tortor', 'Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci.', 'http://dummyimage.com/100x100.png/ff4444/ffffff', 3, 'Matthaeus Matevushev', 'http://mtv.com/lectus/in.png');
