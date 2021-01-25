DROP TABLE IF EXISTS `QUESTIONS`;
CREATE TABLE IF NOT EXISTS QUESTIONS (
	q_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	question TEXT,
	asked_by VARCHAR(50),
	created_at DATETIME
);
insert into QUESTIONS (q_id, question, asked_by, created_at) values (1, 'Do better ImageNet models really not do better on chest X-rays?', 'Ahmad Khan', '2020-04-18 23:44:42');
insert into QUESTIONS (q_id, question, asked_by, created_at) values (2, 'whats your pro tip for computer vision ?', 'Sadia Ashraf', '2020-02-02 05:39:20');
insert into QUESTIONS (q_id, question, asked_by, created_at) values (3, 'What is a good analogy on how a GPU works?', 'Ali Nasir', '2020-03-06 00:44:10');
insert into QUESTIONS (q_id, question, asked_by, created_at) values (4, 'Can kaggle accelerators be used for GridSearchCV() ?', 'Mohid Irfan', '2020-05-29 20:06:22');
