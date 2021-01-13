DROP TABLE IF EXISTS `MESSAGES`;
CREATE TABLE IF NOT EXISTS MESSAGES (
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	text TEXT,
	owner VARCHAR(50),
	created_at DATETIME,
	c_id INT,
    KEY `c_id` (`c_id`)
);
insert into MESSAGES (id, text, owner, created_at, c_id) values (1, 'ridiculus mus etiam vel augue vestibulum rutrum', 'Giuditta Antoniazzi', '2020-04-16 20:51:52', 3);
insert into MESSAGES (id, text, owner, created_at, c_id) values (2, 'amet cursus id turpis integer', 'Sarene Shakespeare', '2020-10-04 15:14:08', 4);
insert into MESSAGES (id, text, owner, created_at, c_id) values (3, 'ut nunc', 'Alfreda Ditchett', '2021-01-08 23:00:53', 2);
insert into MESSAGES (id, text, owner, created_at, c_id) values (4, 'justo in blandit ultrices', 'Paulie Oby', '2020-04-18 05:08:32', 3);
insert into MESSAGES (id, text, owner, created_at, c_id) values (5, 'dui luctus rutrum nulla tellus in sagittis', 'Vincents Muncie', '2020-10-23 11:26:58', 9);
insert into MESSAGES (id, text, owner, created_at, c_id) values (6, 'maecenas', 'Berry Brunstan', '2020-04-30 17:42:09', 9);
insert into MESSAGES (id, text, owner, created_at, c_id) values (7, 'duis bibendum felis sed interdum venenatis turpis enim blandit', 'Lydia Kristufek', '2020-12-15 08:35:32', 8);
insert into MESSAGES (id, text, owner, created_at, c_id) values (8, 'molestie sed justo pellentesque viverra', 'Cher Kilius', '2020-05-05 11:20:39', 8);
insert into MESSAGES (id, text, owner, created_at, c_id) values (9, 'vestibulum quam', 'Smitty Frick', '2020-06-30 13:57:19', 5);
insert into MESSAGES (id, text, owner, created_at, c_id) values (10, 'libero ut massa volutpat convallis morbi odio', 'Andrej Groucutt', '2020-10-07 18:33:55', 6);
insert into MESSAGES (id, text, owner, created_at, c_id) values (11, 'metus', 'Marji Dimsdale', '2020-06-10 08:34:03', 6);
insert into MESSAGES (id, text, owner, created_at, c_id) values (12, 'leo pellentesque ultrices mattis odio donec vitae nisi', 'Deedee Rutherforth', '2020-06-28 14:09:37', 9);
insert into MESSAGES (id, text, owner, created_at, c_id) values (13, 'diam nam tristique tortor eu pede', 'Robyn Goulbourn', '2020-02-01 09:03:09', 6);
insert into MESSAGES (id, text, owner, created_at, c_id) values (14, 'posuere', 'Doti Huddart', '2020-12-02 01:28:12', 4);
insert into MESSAGES (id, text, owner, created_at, c_id) values (15, 'sed tristique in', 'Elspeth Bengough', '2020-01-28 10:26:10', 1);
insert into MESSAGES (id, text, owner, created_at, c_id) values (16, 'nullam molestie nibh in lectus pellentesque', 'Urban Studdeard', '2020-07-14 07:04:50', 1);
insert into MESSAGES (id, text, owner, created_at, c_id) values (17, 'pulvinar nulla pede ullamcorper augue a suscipit', 'Laurice Pettigree', '2020-02-13 10:07:13', 4);
insert into MESSAGES (id, text, owner, created_at, c_id) values (18, 'imperdiet nullam orci pede venenatis non sodales', 'Chicky Drewry', '2020-04-21 15:53:15', 1);
insert into MESSAGES (id, text, owner, created_at, c_id) values (19, 'rhoncus sed', 'Jasmina Spellissy', '2020-11-05 06:38:52', 4);
insert into MESSAGES (id, text, owner, created_at, c_id) values (20, 'dictumst', 'Em Linnitt', '2020-12-08 03:12:09', 5);
insert into MESSAGES (id, text, owner, created_at, c_id) values (21, 'proin', 'Jamison Kenealy', '2020-05-22 09:42:53', 6);
insert into MESSAGES (id, text, owner, created_at, c_id) values (22, 'est donec odio justo sollicitudin ut suscipit a feugiat et', 'Raimund Ingarfield', '2020-11-23 12:00:30', 7);
insert into MESSAGES (id, text, owner, created_at, c_id) values (23, 'pede posuere nonummy integer non velit donec diam neque vestibulum', 'Archibold Stiffell', '2020-06-06 20:41:20', 9);
insert into MESSAGES (id, text, owner, created_at, c_id) values (24, 'vestibulum velit id pretium iaculis diam erat fermentum justo', 'Vinnie Blunt', '2020-04-04 15:16:37', 7);
insert into MESSAGES (id, text, owner, created_at, c_id) values (25, 'tempus sit amet sem fusce consequat nulla nisl', 'Montgomery Simionato', '2020-11-22 12:36:48', 4);
insert into MESSAGES (id, text, owner, created_at, c_id) values (26, 'proin eu mi nulla ac enim in tempor turpis', 'Dacey Chopy', '2020-05-21 01:47:50', 5);
insert into MESSAGES (id, text, owner, created_at, c_id) values (27, 'erat tortor sollicitudin', 'Neall Mallebone', '2020-10-24 23:53:28', 7);
insert into MESSAGES (id, text, owner, created_at, c_id) values (28, 'sollicitudin ut suscipit a feugiat', 'Susie Vasilov', '2020-10-05 05:40:14', 6);
insert into MESSAGES (id, text, owner, created_at, c_id) values (29, 'tristique est et tempus semper est quam pharetra magna ac', 'Ephraim Lobb', '2020-02-09 10:22:20', 9);
insert into MESSAGES (id, text, owner, created_at, c_id) values (30, 'sit amet consectetuer adipiscing elit proin', 'Corinna Shard', '2020-02-26 22:58:18', 1);

