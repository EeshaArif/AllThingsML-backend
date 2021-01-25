DROP TABLE IF EXISTS `ANSWERS`;
CREATE TABLE IF NOT EXISTS ANSWERS (
	a_id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
	q_id INT,
	answer TEXT,
	answered_by VARCHAR(50),
	created_at DATETIME,
    key `q_id` (`q_id`)
);
insert into ANSWERS (a_id, q_id, answer, answered_by, created_at) values (1, 1, 'Ross has mentioned some criticisms of this study mostly pertaining to how poorly they evaluate hyperparameters. static learning rate of 1e-4 and batch size of 16 and no other published hyperparams makes it a significantly less robust indicator.

He also pointed to a few other papers that have been done previously that cover similar topics.','Wania Noor' ,'2020-09-23 14:57:37');
insert into ANSWERS (a_id, q_id, answer, answered_by, created_at) values (2, 1, 'Wow. I feel very surprised by this paper. I have been working with X-rays for a few years now, and I was always confused why my InceptionV3 model beats all other ImageNet state-of-the art architectures when no pre-training is used. It is nice to see someone confirm that on other CXR dataset :)', 'Eesha Arif', '2020-07-15 20:12:23');
insert into ANSWERS (a_id, q_id, answer, answered_by, created_at) values (3, 1, 'Interesting findings for sure. Surprised how underresearched this area is given that so few are actually doing just imagenet. Almost everyone is transferring away to different tasks.

Even in this competition, people have claimed gains from one architecture vs the other but it seems fairly inconsistent based on size of model but possibly significant when going to different kinds of models, dense net, effnet, resnet, etc.', 'Some Geek', '2020-04-30 09:43:04');
insert into ANSWERS (a_id, q_id, answer, answered_by, created_at) values (5, 2, 'Teaching a machine to interpret real-world images and videos. Applications include detecting objects, capturing motion, and restoring images. You need to understand what it means first','Tayyab Mustafa', '2020-05-17 17:49:58');
insert into ANSWERS (a_id, q_id, answer, answered_by, created_at) values (6, 3, 'A GPU is like a moving truck, whereas a CPU is like a sports car. The sports car can move a couple items very fast, but the moving truck can move many more items at the same time.

If you have just a single task to run, the CPU is great. If your work can be split up into a bunch of parallel tasks that can run at the same time, the GPU will be faster.', 'Noor Elahi', '2020-11-19 12:18:52');
insert into ANSWERS (a_id, q_id, answer, answered_by, created_at) values (7, 3, 'The GPU is a processor that is made up of many smaller and more specialized cores. By working together, the cores deliver massive performance when a processing task can be divided up and processed across many cores. GPU is designed in a way so it can perform single task with best efficiency, whereas CPU as for multi tasking with limited cores.', 'Sidra Ayub', '2020-10-01 07:43:11');
insert into ANSWERS (a_id, q_id, answer, answered_by, created_at) values (8, 4, 'Use the cuml library which is sklearn compatible and supports gpu. Most functions/methods in sklearn is in cuml too.', 'Mahnoor Taha', '2020-04-13 00:03:54');
insert into ANSWERS (a_id, q_id, answer, answered_by, created_at) values (9, 4, 'instead of using gridsearch why dont you try using randomsearch?

', 'Farheen Faiza', '2020-06-06 15:42:58');
