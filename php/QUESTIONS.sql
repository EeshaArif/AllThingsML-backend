DROP TABLE IF EXISTS `QUESTIONS`;
CREATE TABLE IF NOT EXISTS QUESTIONS (
	q_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	question TEXT,
	asked_by VARCHAR(50),
	created_at DATE
);
insert into QUESTIONS (q_id, question, asked_by, created_at) values (1, 'Curabitur at ipsum ac tellus semper interdum.', 'Alonso Fountain', '2020-04-18 23:44:42');
insert into QUESTIONS (q_id, question, asked_by, created_at) values (2, 'Phasellus id sapien in sapien iaculis congue.', 'Archibald Guite', '2020-02-02 05:39:20');
insert into QUESTIONS (q_id, question, asked_by, created_at) values (3, 'Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', 'Brigg Joskovitch', '2020-03-06 00:44:10');
insert into QUESTIONS (q_id, question, asked_by, created_at) values (4, 'In blandit ultrices enim.', 'Barde Garlette', '2020-05-29 20:06:22');
insert into QUESTIONS (q_id, question, asked_by, created_at) values (5, 'Cras pellentesque volutpat dui.', 'Flossy Standbridge', '2020-04-12 18:59:59');
insert into QUESTIONS (q_id, question, asked_by, created_at) values (6, 'In quis justo.', 'Ingrim Chattell', '2020-08-09 17:09:55');
insert into QUESTIONS (q_id, question, asked_by, created_at) values (7, 'Quisque porta volutpat erat.', 'Monika Jonin', '2020-09-20 03:37:09');
insert into QUESTIONS (q_id, question, asked_by, created_at) values (8, 'Suspendisse potenti.', 'Corty Morales', '2020-04-17 14:20:18');
insert into QUESTIONS (q_id, question, asked_by, created_at) values (9, 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam.', 'Jermaine Shieldon', '2020-07-05 11:55:21');
insert into QUESTIONS (q_id, question, asked_by, created_at) values (10, 'Quisque ut erat.', 'Jeniece Zimmermeister', '2020-12-13 04:26:50');
insert into QUESTIONS (q_id, question, asked_by, created_at) values (11, 'Integer tincidunt ante vel ipsum.', 'Jasmina Langworthy', '2020-08-19 22:58:05');
insert into QUESTIONS (q_id, question, asked_by, created_at) values (12, 'Etiam faucibus cursus urna.', 'Verla Breckin', '2020-10-22 03:04:29');
insert into QUESTIONS (q_id, question, asked_by, created_at) values (13, 'Curabitur in libero ut massa volutpat convallis.', 'Vinny Pesticcio', '2020-03-13 20:59:42');
insert into QUESTIONS (q_id, question, asked_by, created_at) values (14, 'In hac habitasse platea dictumst.', 'Clarita Kinsley', '2020-12-26 13:10:08');
insert into QUESTIONS (q_id, question, asked_by, created_at) values (15, 'Ut at dolor quis odio consequat varius.', 'Dieter Rhucroft', '2020-08-06 07:31:26');
insert into QUESTIONS (q_id, question, asked_by, created_at) values (16, 'In eleifend quam a odio.', 'Windham Messom', '2020-05-22 06:27:27');
insert into QUESTIONS (q_id, question, asked_by, created_at) values (17, 'Pellentesque at nulla.', 'Carlos Pulley', '2020-01-19 05:58:13');
insert into QUESTIONS (q_id, question, asked_by, created_at) values (18, 'Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', 'Cortney Paddingdon', '2020-11-16 11:28:17');
insert into QUESTIONS (q_id, question, asked_by, created_at) values (19, 'Phasellus id sapien in sapien iaculis congue.', 'Ada Mehmet', '2020-03-09 08:55:53');
insert into QUESTIONS (q_id, question, asked_by, created_at) values (20, 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio.', 'Geneva Carding', '2020-08-10 19:25:53');
insert into QUESTIONS (q_id, question, asked_by, created_at) values (21, 'Etiam pretium iaculis justo.', 'Burlie Avramchik', '2020-02-14 09:13:12');
insert into QUESTIONS (q_id, question, asked_by, created_at) values (22, 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est.', 'Marian Nuttey', '2020-11-26 00:24:21');
insert into QUESTIONS (q_id, question, asked_by, created_at) values (23, 'Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.', 'Abraham Lankham', '2020-09-30 18:33:23');
insert into QUESTIONS (q_id, question, asked_by, created_at) values (24, 'Duis consequat dui nec nisi volutpat eleifend.', 'Burgess Taillant', '2020-05-03 23:38:31');
insert into QUESTIONS (q_id, question, asked_by, created_at) values (25, 'Nulla justo.', 'Pebrook Marrable', '2020-12-31 01:26:50');
insert into QUESTIONS (q_id, question, asked_by, created_at) values (26, 'In hac habitasse platea dictumst.', 'Orv Seville', '2020-12-11 12:48:44');
insert into QUESTIONS (q_id, question, asked_by, created_at) values (27, 'Praesent blandit lacinia erat.', 'Amabelle Popworth', '2020-03-09 13:17:00');
insert into QUESTIONS (q_id, question, asked_by, created_at) values (28, 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue.', 'Darrelle Antonellini', '2020-10-15 04:04:12');
insert into QUESTIONS (q_id, question, asked_by, created_at) values (29, 'Donec dapibus.', 'Donnie Harmson', '2020-05-18 22:40:55');
insert into QUESTIONS (q_id, question, asked_by, created_at) values (30, 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam.', 'Ulric Pitway', '2020-03-16 14:53:54');
