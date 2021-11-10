DROP DATABASE IF EXISTS MakerSiteDB;
CREATE DATABASE IF NOT EXISTS MakerSiteDB;


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

SELECT * FROM past_event;