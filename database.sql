DROP DATABASE IF EXISTS MakerSiteDB;
CREATE DATABASE IF NOT EXISTS MakerSiteDB;

USE MakerSiteDB;
DROP TABLE IF EXISTS past_event;
CREATE TABLE IF NOT EXISTS past_event(
	event_id INT AUTO_INCREMENT,
    event_name VARCHAR(255),
    event_time DATE,
    attend_num INT(4),
    host_name VARCHAR (255),
    event_location VARCHAR(255),
    difficulty VARCHAR(255),
    event_theme VARCHAR(255),
    PRIMARY KEY(event_id) 
);

INSERT INTO past_event(
event_name, event_time, attend_num, host_name, event_location,
 difficulty, event_theme) VALUES('Buggies and Nuggies', 
 '2019-08-30' , 23 , 'Chang Guo','The Wondry Floor 2',
'No prior experience required', 'Build cars and race them while enjoying nuggets!');

INSERT INTO past_event(
event_name, event_time, attend_num, host_name, event_location,
 difficulty, event_theme) VALUES('Buggies and Nuggies', 
 '2019-09-30' , 33, 'Lanny Shae','The Wondry Floor 1',
'No prior experience required', 'Build electric rats and enjoy lemonade!');

INSERT INTO past_event(
event_name, event_time, attend_num, host_name, event_location,
 difficulty, event_theme) VALUES('Buggies and Nuggies', 
 '2019-10-30' , 43 , 'Christy Danstin','The Wondry Floor 3',
'No prior experience required', 'Learn and enjoy chick-fil-a!');

SELECT * FROM past_event;



DROP TABLE IF EXISTS future_event;
CREATE TABLE future_event (
	event_id INT AUTO_INCREMENT,
    event_name VARCHAR(255),
    event_time DATE,
    host_name VARCHAR (255),
    event_location VARCHAR(255),
    difficulty VARCHAR(255),
    event_theme VARCHAR(255),
    PRIMARY KEY(event_id) 
);

INSERT INTO future_event(
event_name, event_time, host_name, event_location,
 difficulty, event_theme) VALUES('Laser Cutting Lovers', 
 '2022-01-01' , 'Sunnie Lebrinsky','The Wondry Floor 4',
'No prior experience required', 'Learn laser cutting and enjoy cookies!');

INSERT INTO future_event(
event_name, event_time, host_name, event_location,
 difficulty, event_theme) VALUES('Buttons 3D Printing ', 
 '2021-12-15' , 'Chang Guo','Featheringill Floor 2',
'No prior experience required', 'Make buttons with our 3D printers!');

INSERT INTO future_event(
event_name, event_time, host_name, event_location,
 difficulty, event_theme) VALUES('Cookie and Future Events', 
 '2021-12-16' , 'Christina Shawn','The Wondry Floor 1',
'No prior experience required', 'Grab a cookie and tell us about your thoughts!');

SELECT * FROM future_event;

DROP TABLE IF EXISTS user_comment;
CREATE TABLE user_comment (
	comment_id INT AUTO_INCREMENT,
    comment_name VARCHAR(300) NOT NULL,
    comment_email VARCHAR(100) NOT NULL,
    comment_message VARCHAR(1000) NOT NULL,
	PRIMARY KEY(comment_id) 
);

INSERT INTO user_comment(
comment_name, comment_email, comment_message) VALUES('Gabby H', 
 'gabby.h@vanderbilt.edu' , 'I want to learn how to use the 3D printers');
 
 INSERT INTO user_comment(
comment_name, comment_email, comment_message) VALUES('Joseph L', 
 'joseph.l@vanderbilt.edu' , 'I want to learn how to use laser cutters');
 
 INSERT INTO user_comment(
comment_name, comment_email, comment_message) VALUES('Naomi R', 
 'naomi.r@vanderbilt.edu' , 'I want to play the LEGO robots');
 
 INSERT INTO user_comment(
comment_name, comment_email, comment_message) VALUES('Shawn D', 
 'shawn.d@vanderbilt.edu' , 'I want to receive email notification');
 
 INSERT INTO user_comment(
comment_name, comment_email, comment_message) VALUES( 'Chang Guo', 'chang.guo@vanderbilt.edu',
 'I want to have chick-fil-a');
 
 INSERT INTO user_comment(
comment_name, comment_email, comment_message) VALUES('Davis D', 
 'davis.d@vanderbilt.edu' , 'More events on Wednesday');
 
 INSERT INTO user_comment(
comment_name, comment_email, comment_message) VALUES('johny J', 
 'johny.j@vanderbilt.edu' , 'More events in the afternoon');
 
 INSERT INTO user_comment(
comment_name, comment_email, comment_message) VALUES('Ashly C', 
 'ashly.c@vanderbilt.edu' , 'More online events!');
 
SELECT * FROM user_comment;


DROP TABLE IF EXISTS tutorial;
CREATE TABLE tutorial (
	tutorial_id INT AUTO_INCREMENT,
    tutorial_name VARCHAR(300) NOT NULL,
    tutorial_type VARCHAR(100) NOT NULL,
    tutorial_theme VARCHAR(100) NOT NULL,
    tutorial_link VARCHAR(1000) NOT NULL,
	PRIMARY KEY(tutorial_id) 
);

Insert INTO Tutorial (tutorial_name, tutorial_type, tutorial_theme, tutorial_link)
VALUE ('test_name01', 'test_type01', 'test_theme01', 'test_link01');

Insert INTO Tutorial (tutorial_name, tutorial_type, tutorial_theme, tutorial_link)
VALUE ('How to use Laser Cutting', 'video' , 'Laser Cutting' , 'https://www.youtube.com/watch?v=sdACSB8GH3Y');

Insert INTO Tutorial (tutorial_name, tutorial_type, tutorial_theme, tutorial_link)
VALUE ('Using 3D Printer to Make Profit', 'video' , '3D Printing' , 'https://www.youtube.com/watch?v=PceI1AtgFvo');

Insert INTO Tutorial (tutorial_name, tutorial_type, tutorial_theme, tutorial_link)
VALUE ('Beginner\'s Guide to 3D Printer', 'video' , '3D Printing' , 'https://www.youtube.com/watch?v=T-Z3GmM20JM');

Insert INTO Tutorial (tutorial_name, tutorial_type, tutorial_theme, tutorial_link)
VALUE ('How to use a Cricut', 'video', 'cricut', 'https://www.youtube.com/watch?v=F0qzvg_xf9c');

Insert INTO Tutorial (tutorial_name, tutorial_type, tutorial_theme, tutorial_link)
VALUE ('Beginner\'s Guide for 3D Printing', 'article', '3D Printing' , 'https://3dinsider.com/3d-printing-guide/');

Insert INTO Tutorial (tutorial_name, tutorial_type, tutorial_theme, tutorial_link)
VALUE ('Beginner\'s Guide to 3D Printer', 'video' , '3D Printing' , 'https://www.youtube.com/watch?v=T-Z3GmM20JM');

SELECT * FROM tutorial;
