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
'Easy', 'Build cars and race them while enjoying nuggets!');

INSERT INTO past_event(
event_name, event_time, attend_num, host_name, event_location,
 difficulty, event_theme) VALUES('Laser cutting', 
 '2019-09-30' , 33, 'Lanny Shae','The Wondry Floor 1',
'Intermediate', 'Build electric rats and enjoy lemonade!');

INSERT INTO past_event(
event_name, event_time, attend_num, host_name, event_location,
 difficulty, event_theme) VALUES('Beginner Guide', 
 '2019-10-29' , 14 , 'Christy Danstin','The Wondry Floor 2',
'Advanced', 'Get started on the latest club event as a beginner!');

INSERT INTO past_event(
event_name, event_time, attend_num, host_name, event_location,
 difficulty, event_theme) VALUES('Advanced level progression', 
 '2019-11-19' , 20 , 'Anna Chen','The Wondry Floor 3',
'No prior experience required', 'A jounery towards professionsal!');

INSERT INTO past_event(
event_name, event_time, attend_num, host_name, event_location,
 difficulty, event_theme) VALUES('Buggies and Nuggies', 
 '2019-11-22' , 49 , 'Jenny Mai','The Wondry Floor 3',
'Difficulty', 'Learn and enjoy chick-fil-a!');

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
 '2022-01-18' , 'Amber Lebrinsky','The Wondry Floor 4',
'Easy', 'Learn laser cutting and enjoy cookies!');

INSERT INTO future_event(
event_name, event_time, host_name, event_location,
 difficulty, event_theme) VALUES('Buttons 3D Printing ', 
 '2022-01-25' , 'Chang Guo','Featheringill Floor 2',
'Easy', 'Make buttons with our 3D printers!');

INSERT INTO future_event(
event_name, event_time, host_name, event_location,
 difficulty, event_theme) VALUES('Hand Crafting Workshop', 
 '2022-02-11' , 'Christina Shawn','The Wondry Floor 1',
'Intermediate', 'Grab a cookie and tell us about your past hand crafting experience!');

INSERT INTO future_event(
event_name, event_time, host_name, event_location,
 difficulty, event_theme) VALUES('Maker Club Lab Tour', 
 '2022-03-18' , 'Amber Lebrinsky','The Wondry Floor 4',
'Advanced', 'Learn laser cutting and enjoy cookies!');

INSERT INTO future_event(
event_name, event_time, host_name, event_location,
 difficulty, event_theme) VALUES('Maker Club Annual Festival', 
 '2022-04-11' , 'Christina Shawn','Featheringill Floor 2',
'Easy', 'Come and meet your club friend');


SELECT * FROM future_event;

DROP TABLE IF EXISTS user_comment;
CREATE TABLE user_comment (
	comment_id INT AUTO_INCREMENT,
    comment_name VARCHAR(255),
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
comment_name, comment_email, comment_message) VALUES('Johny J', 
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
    tutorial_theme VARCHAR(1000) NOT NULL,
    tutorial_link VARCHAR(1000) NOT NULL,
	PRIMARY KEY(tutorial_id) 
);



Insert INTO Tutorial (tutorial_name, tutorial_type, tutorial_theme, tutorial_link)
VALUE ('3D Printing', 'video' , '3D printing or additive manufacturing is a process of making three dimensional solid objects from a digital file.
											The creation of a 3D printed object is achieved using additive processes.
											In an additive process an object is created by laying down successive layers of material until the object is created.
											Each of these layers can be seen as a thinly sliced cross-section of the object.' , 
                                            'https://www.youtube.com/watch?v=3LBTkLsjHGQ');

Insert INTO Tutorial (tutorial_name, tutorial_type, tutorial_theme, tutorial_link)
VALUE ('Laser Cutting', 'article' , 'Laser cutting is the largest industrial application of high power lasers; ranging
											from profile cutting of thick-section sheet materials for large industrial applications,
											to medical stents. The process lends itself to automation with offline CAD/CAM systems controlling
											3-axis flatbed, 6-axis robots, or remote systems. ' , 
                                            'https://www.twi-global.com/what-we-do/research-and-technology/technologies/welding-joining-and-cutting/lasers/laser-cutting');

Insert INTO Tutorial (tutorial_name, tutorial_type, tutorial_theme, tutorial_link)
VALUE ('Handicraft', 'article' , 'It is almost a constant conversation in our community, sometimes spurred by outsiders’ curiosity, 
					and sometimes in our own appraisal of others’ work: “What is craft?” Everyone has their own definition, overlapping like a Venn diagram 
                    of crazy proportions: Mastery of technique, or materials. Artistic merit. Utility. Tradition. Community. Individuality. And so on, endlessly.' ,
                    'https://societyofcrafts.org/post-2/');

Insert INTO Tutorial (tutorial_name, tutorial_type, tutorial_theme, tutorial_link)
VALUE ('Ceramic Arts', 'video', 'Since ancient times, ceramics and glass have been associated with extraordinary artwork. 
			Approximately 30,000 years ago, clay-baspast_evented statuettes were formed to represent animals and religious figures, 
            whereas later dated pottery was produced not only to hold liquids ', 'https://www.youtube.com/watch?v=t5IxnjNcwXA');



SELECT * FROM tutorial;


DROP TABLE IF EXISTS test_cases;
CREATE TABLE IF NOT EXISTS test_cases(
	test_id INT AUTO_INCREMENT,
    test_name VARCHAR(255),
    test_result VARCHAR(1000),
    PRIMARY KEY(test_id) 
);


DELIMITER $$
CREATE PROCEDURE GetTutorialNameByLink(
    IN  ptutorial_link VARCHAR(1000), 
    OUT ptutorial_name  VARCHAR(300))
BEGIN
	DECLARE tutorial_name_search_by_link VARCHAR(300); 

    SELECT tutorial_name 
    INTO tutorial_name_search_by_link
    FROM tutorial 
    where tutorial_link = ptutorial_link;

   IF tutorial_name_search_by_link IS NOT NULL THEN
		SELECT CONCAT("Tutorial"," ",tutorial_name_search_by_link, " "," ", " is found");
        INSERT INTO test_cases(test_name, test_result)
        VALUE('tutorial', CONCAT(tutorial_name_search_by_link, " ","is found"));
	ELSE 
		SELECT CONCAT("Error Message: Tutorial"," ",ptutorial_link, " ", "is NOT found");
        INSERT INTO test_cases(test_name, test_result)
        VALUE('tutorial', CONCAT("Error Message: "," ",ptutorial_link, " ", "is not found"));
    END IF;
END$$

DELIMITER ;


DELIMITER $$
CREATE PROCEDURE GetTutorialLinkByName(
    IN  ptutorial_name VARCHAR(300), 
    OUT ptutorial_link  VARCHAR(1000))
BEGIN
	DECLARE tutorial_link_search_by_name VARCHAR(1000); 

    SELECT tutorial_link 
    INTO tutorial_link_search_by_name
    FROM tutorial 
    where tutorial_name = ptutorial_name;

   IF tutorial_link_search_by_name IS NOT NULL THEN
		SELECT CONCAT("Tutorial"," ",tutorial_link_search_by_name, " "," ", " is found");
        INSERT INTO test_cases(test_name, test_result)
        VALUE('tutorial', CONCAT(tutorial_link_search_by_name, " ","is found"));
	ELSE 
		SELECT CONCAT("Error Message: Tutorial"," ",ptutorial_name, " ", "is NOT found");
        INSERT INTO test_cases(test_name, test_result)
        VALUE('tutorial', CONCAT("Error Message: "," ",ptutorial_name, " ", "is not found"));
    END IF;
END$$

DELIMITER ;


DELIMITER $$
CREATE PROCEDURE GetCommentByName(
    IN  pcomment_name VARCHAR(225), 
    OUT pcomment_message  VARCHAR(1000))
BEGIN
	DECLARE comment_message_search_by_name VARCHAR(1000); 

    SELECT comment_message 
    INTO comment_message_search_by_name
    FROM user_comment 
    where comment_name = pcomment_name;

   IF comment_message_search_by_name IS NOT NULL THEN
		SELECT CONCAT("User Comment"," ",comment_message_search_by_name, " "," ", " is found");
        INSERT INTO test_cases(test_name, test_result)
        VALUE("User Comment", CONCAT("User comment by", " ",pcomment_name, " ","is found:", " ", comment_message_search_by_name));
	ELSE 
		SELECT CONCAT("Error Message: User Comment from"," ",pcomment_name, " ", "is NOT found");
        INSERT INTO test_cases(test_name, test_result)
        VALUE("User Comment", CONCAT("Error Message: User Comment from"," ",pcomment_name, " ", "is not found"));
    END IF;
END$$

DELIMITER ;


DELIMITER $$
CREATE PROCEDURE GetCommentByEmail(
    IN  pcomment_email VARCHAR(100), 
    OUT pcomment_message  VARCHAR(1000))
BEGIN
	DECLARE comment_message_search_by_email VARCHAR(1000); 

    SELECT comment_message 
    INTO comment_message_search_by_email
    FROM user_comment 
    where comment_email = pcomment_email;

   IF comment_message_search_by_email IS NOT NULL THEN
		SELECT CONCAT("User Comment"," ",comment_message_search_by_email, " "," ", " is found");
        INSERT INTO test_cases(test_name, test_result)
        VALUE("User Comment", CONCAT("User comment by", " ",pcomment_email, " ","is found:", " ", comment_message_search_by_email));
	ELSE 
		SELECT CONCAT("Error Message: User Comment from"," ",pcomment_email, " ", "is NOT found");
        INSERT INTO test_cases(test_name, test_result)
        VALUE("User Comment", CONCAT("Error Message: User Comment from"," ",pcomment_email, " ", "is not found"));
    END IF;
END$$

DELIMITER ;


DELIMITER $$
CREATE PROCEDURE GetFutureEventLocationByName(
    IN  pevent_name VARCHAR(225), 
    OUT pevent_location  VARCHAR(225))
BEGIN
	DECLARE future_event_loctaion_search_by_name VARCHAR(225); 

    SELECT event_location 
    INTO future_event_loctaion_search_by_name
    FROM future_event 
    where event_name = pevent_name;

   IF future_event_loctaion_search_by_name IS NOT NULL THEN
		SELECT CONCAT("Future Event"," ",future_event_loctaion_search_by_name, " "," ", " is found");
        INSERT INTO test_cases(test_name, test_result)
        VALUE("Future Event", CONCAT("Future Event",pevent_name, " is found in :", " ", future_event_loctaion_search_by_name));
	ELSE 
		SELECT CONCAT("Error Message: Future Event called"," ",pevent_name, " ", "is NOT found");
        INSERT INTO test_cases(test_name, test_result)
        VALUE("Future Event", CONCAT("Error Message: Future Event called"," ",pevent_name, " ", "is NOT found"));
    END IF;
END$$

DELIMITER ;


DELIMITER $$
CREATE PROCEDURE GetPastEventLocationByName(
    IN  pevent_name VARCHAR(225), 
    OUT pevent_location  VARCHAR(225))
BEGIN
	DECLARE past_event_loctaion_search_by_name VARCHAR(225); 

    SELECT event_location 
    INTO past_event_loctaion_search_by_name
    FROM past_event 
    where event_name = pevent_name;

   IF past_event_loctaion_search_by_name IS NOT NULL THEN
		SELECT CONCAT("Past Events"," ",past_event_loctaion_search_by_name, " "," ", " is found");
        INSERT INTO test_cases(test_name, test_result)
        VALUE("Past Events", CONCAT("Past Event",pevent_name, " is found in :", " ", past_event_loctaion_search_by_name));
	ELSE 
		SELECT CONCAT("Error Message: Past Event called"," ",pevent_name, " ", "is NOT found");
        INSERT INTO test_cases(test_name, test_result)
        VALUE("Past Event", CONCAT("Error Message: Past Event called"," ",pevent_name, " ", "is NOT found"));
    END IF;
END$$

DELIMITER ;

CALL GetTutorialNameByLink('https://societyofcrafts.org/post-2/', @name1);
CALL GetTutorialNameByLink('https://www.youtube.com',@name2);
CALL GetTutorialNameByLink('https://www.twi-global.com/what-we-do/research-and-technology/technologies/welding-joining-and-cutting/lasers/laser-cutting',@name3);
CALL GetTutorialNameByLink('https://www.youtube.com/watch?v=sdACSB8GH3Y',@name4);
CALL GetTutorialNameByLink('https://www.youtube.com/watch?v=3LBTkLsjHGQ',@name5);
CALL GetTutorialNameByLink('https://www.youtube.PceI1AtgFvo',@name6);
CALL GetTutorialNameByLink('https://www.youtube.com/watch?zvg_xf9c',@name7);
CALL GetTutorialNameByLink('https://www.youtube.com/watch?v=t5IxnjNcwXA',@name8);

CALL GetTutorialLinkByName('Beginner\'s Guide for 4D Printing', @name9);
CALL GetTutorialLinkByName('How to use a Cricut', @name10);
CALL GetTutorialLinkByName('Handicraft', @name11);
CALL GetTutorialLinkByName('Ceramic Arts', @name12);
CALL GetTutorialLinkByName('Cricut Article', @name13);
CALL GetTutorialLinkByName('Laser Cutting', @name14);
CALL GetTutorialLinkByName('3D Printing', @name15);
CALL GetTutorialLinkByName('Cutting', @name16);

CALL GetCommentByName('Gabby H', @name17);
CALL GetCommentByName('David D', @name18);
CALL GetCommentByName('Ashly C', @name19);
CALL GetCommentByName('Naomi R', @name20);
CALL GetCommentByName('Joseph L', @name21);
CALL GetCommentByName('Ashly R', @name22);
CALL GetCommentByName('Johny', @name23);
CALL GetCommentByName('Johny J', @name24);

CALL GetCommentByEmail('shawn.d@vanderbilt.edu', @name25);
CALL GetCommentByEmail('johny.j@vanderbilt.edu', @name26);
CALL GetCommentByEmail('chang.guo@vanderbilt.edu', @name27);
CALL GetCommentByEmail('chuyun.sun@vanderbilt.edu', @name28);
CALL GetCommentByEmail('gabby.h@vanderbilt.edu', @name29);
CALL GetCommentByEmail('naomi.r@vanderbilt.edu', @name30);
CALL GetCommentByEmail('ashly.c@vanderbilt.edu', @name31);
CALL GetCommentByEmail('david.d@vanderbilt.edu', @name32);


CALL GetFutureEventLocationByName('Maker Club Lab Tour', @name33);
CALL GetFutureEventLocationByName('Buggie and Nuggets', @name34);
CALL GetFutureEventLocationByName('Laser Cutting Lovers', @name35);
CALL GetFutureEventLocationByName('Buttons 3D Printing', @name36);
CALL GetFutureEventLocationByName('Maker Club Annual Festival', @name37);

CALL GetPastEventLocationByName('Buggie and Nuggets', @name38);
CALL GetPastEventLocationByName('Laser cutting',  @name39);
CALL GetPastEventLocationByName('Buggies',  @name40);
CALL GetPastEventLocationByName('Advanced level progression',  @name41);
CALL GetPastEventLocationByName('Maker Club Annual Festival', @name42);
CALL GetPastEventLocationByName('Beginner Guide', @name43);
CALL GetPastEventLocationByName('Maker Club Festival', @name44);


SELECT * FROM test_cases;
