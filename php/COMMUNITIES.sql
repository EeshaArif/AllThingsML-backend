CREATE DATABASE IF NOT EXISTS `all_things_ml` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `all_things_ml`;

DROP TABLE IF EXISTS `COMMUNITIES`;

CREATE TABLE IF NOT EXISTS COMMUNITIES (
	c_id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
	topic TEXT,
	created_at DATE
);
insert into COMMUNITIES (c_id, topic, created_at) values (1, 'TensorFlow', '2020-02-19 11:04:27');
insert into COMMUNITIES (c_id, topic, created_at) values (2, 'Neural Network', '2020-06-30 23:44:59');
insert into COMMUNITIES (c_id, topic, created_at) values (3, 'Computer Vision', '2020-03-23 15:56:26');
insert into COMMUNITIES (c_id, topic, created_at) values (4, 'Big Data', '2020-08-05 05:50:29');
insert into COMMUNITIES (c_id, topic, created_at) values (5, 'Data Mining', '2020-10-22 13:28:24');
insert into COMMUNITIES (c_id, topic, created_at) values (6, 'Internet of Things', '2020-02-21 00:30:03');
insert into COMMUNITIES (c_id, topic, created_at) values (7, 'Data Analytics', '2020-08-10 05:49:26');
insert into COMMUNITIES (c_id, topic, created_at) values (8, 'Deep Learning', '2020-09-22 21:42:54');
insert into COMMUNITIES (c_id, topic, created_at) values (9, 'Predictive Analysis', '2020-06-08 05:11:40');
insert into COMMUNITIES (c_id, topic, created_at) values (10, 'Chatbots', '2020-08-10 17:57:12');
