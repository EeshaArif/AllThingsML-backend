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
insert into COURSES (id, course_name, course_description, image, rating, instructor, link) values (1, 'Data Science Ready', 
	'Data Science Ready is a Harvard Online course in collaboration with Harvard Business School Online that allows you to gain a familiarity with the essential concepts and use of data science, including prediction, causality, data wrangling, privacy, and ethics.', 
	 'assets/img/course-1.jpg', 3.7, 
	'Dustin Tingley', 
	'https://online.hbs.edu/courses/data-science-ready/');


insert into COURSES(id, course_name, course_description, image, rating, instructor, link) values (2, 'Natural Language Processing For Beginners',
 'We will discuss a higher level overview of the basics of Natural Language Processing, which basically consists of combining machine learning techniques with text, and using math and statistics to get that text in a format that the machine learning algorithms can understand!',
 'assets/img/nlp.jpeg', 4.2,
 'Fares Sayah', 
 'https://www.kaggle.com/faressayah/natural-language-processing-nlp-for-beginners');


insert into COURSES (id, course_name, course_description, image, rating, instructor, link) values (3, 'Intro to Machine Learning', 
	'Learn the core ideas in machine learning, and build your first models.',
	 'assets/img/ml.jpg', 4.3, 
	'Dan Becker', 
	'https://www.kaggle.com/learn/intro-to-machine-learning');
