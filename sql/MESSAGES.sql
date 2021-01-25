DROP TABLE IF EXISTS `MESSAGES`;
CREATE TABLE IF NOT EXISTS MESSAGES (
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	text TEXT,
	owner VARCHAR(50),
	created_at DATETIME,
	c_id INT,
    KEY `c_id` (`c_id`)
);
insert into MESSAGES (id, text, owner, created_at, c_id) values (1, 'I have been working with TensorFlow for quite a while', 'Ayub Farhan', '2020-04-16 20:51:52', 1);
insert into MESSAGES (id, text, owner, created_at, c_id) values (2, 'The Machine Learning models and its implementation is understandable and worth your time', 'Syed Usama', '2020-10-04 15:14:08', 1);
insert into MESSAGES (id, text, owner, created_at, c_id) values (3, 'Neural networks are a series of algorithms that mimic the operations of a human brain to recognize relationships between vast amounts of data.', 'Yaqub Naseer', '2021-01-08 23:00:53', 2);
insert into MESSAGES (id, text, owner, created_at, c_id) values (4, 'This was the topic of my interest!', 'Yahya Khan', '2020-04-18 05:08:32', 2);
insert into MESSAGES (id, text, owner, created_at, c_id) values (5, 'Everyone should try some projects in computer vision', 'Fahad Faheen', '2020-10-23 11:26:58', 3);
insert into MESSAGES (id, text, owner, created_at, c_id) values (6, 'computer vision is very cool to look into!', 'Ayesha Faheem', '2020-04-30 17:42:09', 3);
insert into MESSAGES (id, text, owner, created_at, c_id) values (7, 'Big data is such a buzz word in todays time', 'Sonya Ahmad', '2020-12-15 08:35:32', 4);
insert into MESSAGES (id, text, owner, created_at, c_id) values (8, 'What exactly does this mean?', 'Farhan Khan', '2020-05-05 11:20:39', 5);
insert into MESSAGES (id, text, owner, created_at, c_id) values (9, 'Data Mining is part of predictive analysis', 'Foazia Siddique', '2020-06-30 13:57:19', 5);
insert into MESSAGES (id, text, owner, created_at, c_id) values (10, 'Well, the world is shifting to the internet!', 'Fatima Noor', '2020-10-07 18:33:55', 6);
insert into MESSAGES (id, text, owner, created_at, c_id) values (11, 'My mentor is working on IOT and she has an amazing career', 'Faiza Mahnoor', '2020-06-10 08:34:03', 6);
insert into MESSAGES (id, text, owner, created_at, c_id) values (12, 'ML and DL are quite the norm these days', 'Tayyab Irtiza', '2020-06-28 14:09:37', 8);
insert into MESSAGES (id, text, owner, created_at, c_id) values (13, 'Since data is everywhere, this field is very important', 'Farheen Ali', '2020-02-01 09:03:09', 7);
insert into MESSAGES (id, text, owner, created_at, c_id) values (14, 'Deep Learning is definitely something I want to look into', 'Sadia Waris', '2020-12-02 01:28:12', 8);
insert into MESSAGES (id, text, owner, created_at, c_id) values (15, 'I started deep learning first and then went to ML, I wont recommend it but it is still doable', 'Sara Sameen', '2020-01-28 10:26:10', 8);
insert into MESSAGES (id, text, owner, created_at, c_id) values (16, 'Predictive analytics is the branch of the advanced analytics which is used to make predictions about unknown future events.', 'Ghazala Yahya', '2020-07-14 07:04:50', 9);
insert into MESSAGES (id, text, owner, created_at, c_id) values (17, 'Predictive analytics uses many techniques from data mining, statistics, modeling, machine learning, and artificial intelligence to analyze current data to make predictions about future.', 'Yakoob Ali', '2020-02-13 10:07:13', 9);
insert into MESSAGES (id, text, owner, created_at, c_id) values (18, 'This really interests me', 'Waniya Syed', '2020-04-21 15:53:15', 10);
insert into MESSAGES (id, text, owner, created_at, c_id) values (19, 'I tried to make my very first chatbot on discord and it worked quite well, I suggest you all to try', 'Ali Talha', '2020-11-05 06:38:52', 10);
insert into MESSAGES (id, text, owner, created_at, c_id) values (20, 'Chatbots are indeed a good thing to mess with when you are learning', 'Tania Ahmed', '2020-12-08 03:12:09', 10);
insert into MESSAGES (id, text, owner, created_at, c_id) values (21, 'I have had some experience with how the buzz word is actually implemented practically', 'Safi Ur Rehman', '2020-05-22 09:42:53', 4);
insert into MESSAGES (id, text, owner, created_at, c_id) values (22, 'Big data will make quite a mark in the future, I do have a strong feeling about that', 'Eesha Arif', '2020-11-23 12:00:30', 4);
insert into MESSAGES (id, text, owner, created_at, c_id) values (23, 'Hello everyone!', 'Anber Arif', '2020-06-06 20:41:20', 9);
insert into MESSAGES (id, text, owner, created_at, c_id) values (24, 'A firm grip in data analytics is something that would be big in your future', 'Babar Tameez', '2020-04-04 15:16:37', 7);
insert into MESSAGES (id, text, owner, created_at, c_id) values (25, 'This topic interests me a lot', 'Eesha Arif', '2020-11-22 12:36:48', 10);
insert into MESSAGES (id, text, owner, created_at, c_id) values (26, 'What exaclty is data mining though?', 'Anber Arif', '2020-05-21 01:47:50', 5);
insert into MESSAGES (id, text, owner, created_at, c_id) values (27, 'I knew from the start that I have to have a career in data analysis', 'Safi Ur Rehman', '2020-10-24 23:53:28', 7);
insert into MESSAGES (id, text, owner, created_at, c_id) values (28, 'If only we could predict our futures aswell and find out when we will die XD', 'Sundas Ali', '2020-10-05 05:40:14', 9);
insert into MESSAGES (id, text, owner, created_at, c_id) values (29, 'This word seems like its such a complex thing but it is not XD', 'Irtiza Arshad', '2020-02-09 10:22:20', 9);
insert into MESSAGES (id, text, owner, created_at, c_id) values (30, 'I am new to using TensorFlow, just got into it recently', 'Mahek Ali', '2020-02-26 22:58:18', 1);

