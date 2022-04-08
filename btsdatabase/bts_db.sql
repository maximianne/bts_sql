CREATE DATABASE IF NOT EXISTS `BTSdb`;
USE BTSdb;

SET FOREIGN_KEY_CHECKS= 0;

-- BTS ALbums table:
DROP TABLE IF EXISTS `btsAlbum`;
CREATE TABLE `btsAlbum`(
`albumNum` INT,
`albumName` VARCHAR(100),
`year` INT(4),
PRIMARY KEY(`albumNum`)
);

INSERT INTO `btsAlbum`
VALUES
	(1, '2 Cool 4 Skool',2013),
    (2, 'O!RUL8,2?', 2013),
    (3, 'Skool Love Affair', 2014),
    (4, 'Skool Luv Affair (Special Edition)', 2014),
    (5, 'Dark & Wild', 2014),
    (6, 'The Most Beautiful Moment in Life Pt.1', 2015),
    (7, 'Wake Up (Standard Edition)', 2014),
	(8, 'The Most Beautiful Moment in Life Pt. 2', 2015),
    (9, 'The Most Beautiful Moment in Life: Young Forever', 2016),
    (10, 'Youth', 2016),
    (11, 'Wings', 2016),
    (12, 'You Never Walk Alone', 2017),
    (13, 'Love Yourself "Her"', 2017),
    (14, 'FACE YOURSELF', 2018),
	(15, 'Love Yourself "Tear"', 2018),
    (16, 'Love Yourself "Answer"', 2018),
	(17, 'MAP OF THE SOUL: PERSONA', 2019),
    (18, 'MAP OF THE SOUL: 7', 2020),
    (19, 'MAP OF THE SOUL: 7 ~ THE JOURNEY~', 2020);

-- BTS TRACKS TABLE:
DROP TABLE IF EXISTS `btsTracks`;
CREATE TABLE `btsTracks`(
`trackName` VARCHAR(100),
`year` INT(4),
`fromAlbum1` INT,
`fromAlbum2` INT,
PRIMARY KEY(`trackName`),
FOREIGN KEY(`fromAlbum1`) REFERENCES `btsAlbum`(`albumNum`),
FOREIGN KEY(`fromAlbum2`) REFERENCES `btsAlbum`(`albumNum`)
);

INSERT INTO `btsTracks`
VALUES
	('Intro: 2 Cool 4 Skool', 2013, 1, NULL),
    ('We Are Bulltproof Pt.2', 2013, 1, NULL),
	('Skit: Circle Room Talk', 2013, 1, NULL),
    ('No More Dream', 2013, 1, NULL),
	('Interlude', 2013, 1, NULL),
    ('Like', 2013, 1, NULL),
	('Outro: Cicle Room Cypher', 2013, 1, NULL),
    
    ('Intro: O!RUL8,2?', 2013, 2, NULL),
	('N.O', 2013, 2, NULL),
    ('We On ', 2013, 2, NULL),
	('Skit: R U Happy Now?', 2013, 2, NULL),
    ('If I Rulled the World', 2013, 2, NULL),
	('Coffee', 2013, 2, NULL),
	('BTS Cypher Pt. 1', 2013, 2, NULL),
    ('Attack on Bangtan', 2013, 2, NULL),
	('Paldogangsan', 2013, 2, NULL),
    ('Outro: Luv in Skool', 2013, 2, NULL),
    
    ('Intro: Skool Luv Affair', 2014, 3, 4),
	('Boy in Luv', 2014, 3, 4),
	('Skit: Soulmate', 2014, 3, 4),
    ('Where You From', 2014, 3, 4),
	('Just One Day', 2014, 3, 4),
    ('Tomorrow', 2014, 3, 4),
	('BTS Cypher Pt.2: Triptych', 2014, 3, 4),
	('Spine Breaker', 2014, 3, 4),
    ('Jump', 2014, 3, 4),
	('Outro: Propose', 2014, 3, 4),
    
	('Miss Right ', 2014, 4, NULL),
	('Like (Slow Jame Remix)', 2014, 4, NULL),
    
    ('Intro: What Am I to You?', 2014, 5, NULL),
	('Danger', 2014, 5, NULL),
    ('War of Hormone', 2014, 5, NULL),
	('Hip Hop Phile', 2014, 5, NULL),
	('Let Me Know', 2014, 5, NULL),
    ('Rain', 2014, 5, NULL),
	('BTS Cypher Pt. 3: Killer- Supreme Boi', 2014, 5, NULL),
    ('Interude: What Are You Doing Now', 2014, 5, NULL),
	('Could You Turn off Your Cell Phone', 2014, 5, NULL),
	('Embarrassed', 2014, 5, NULL),
    ('24/7=Heaven', 2014, 5, NULL),
	('Look Here', 2014, 5, NULL),
	('2nd Grade', 2014, 5, NULL),
    ('Outro: Do You Think It Makes Sense?', 2014, 5, NULL),
    
	('Intro: The Most Beautiful Moment in Life ', 2015, 6, NULL),
    ('I Need U', 2015, 6, 9),
	('Hold Me Tight', 2015, 6, 9),
    ('Skit: Expectation!', 2015, 6, NULL),
	('Dope', 2015, 6, 9),
    ('Boyz with Fun', 2015, 6, NULL),
	('Converse High', 2015, 6, 9),
    ('Moving On', 2014, 6, 9),
	('Outro: Love is Not Over', 2014, 6, NULL),
    
    ('Intro.', 2014, 7, NULL),
	('The Stars', 2015, 7, NULL),
    ('Jump - Japanese Ver.', 2015, 7, NULL),
	('Danger - Japanese Ver.', 2015, 7, NULL),
    ('Boy In Luv - Japanese Ver.', 2015, 7, NULL),
	('Just One Day - Japanese Ver.', 2015, 7, NULL),
    ('line!', 2015, 7, NULL),
	('line! Pt.2 - Ano Bashode-', 2015, 7, NULL),
    ('No More Dream - Japanese Ver.', 2015, 7, NULL),
	('Shingekei no Boudan - Japanese Ver.', 2015, 7, NULL),
    ('N.O - Japanese Ver.', 2015, 7, NULL),
	('Wake Up', 2015, 7, NULL),
    ('Outro.', 2015, 7, NULL),
    
	('Intro: Never Mind', 2015, 8, NULL),
	('Run', 2015, 8, 9),
	('Butterfly', 2015, 8, 9),
    ('Whalien 52', 2015, 8, 9),
	('Ma City', 2015, 8, 9),
    ('Silver Spoon', 2015, 8, 9),
	('Skit: One Night in a Strange City', 2015, 8, NULL),
    ('Autumn Leaves', 2015, 8, 9),
	('Outro: House of Cards', 2015, 8, NULL),
    
	('Side 1', 2016, 9, NULL),
	('Intro: The Most Beautiful Moment in Life', 2016, 9, NULL),
    ('Butterfly (Prologue Mix)', 2016, 9, NULL),
	('Burning Up (Fire)', 2016, 9, NULL),
	('Save Me', 2016, 9, NULL),
    ('Epliogue: Young Forever', 2016, 9, NULL),
	('Side 2', 2016, 9, NULL),
	('House of Cards (Full Length Edition)', 2016, 9, NULL),
	('Love Is Not Over (Full Length Edition)', 2016, 9, NULL),
    ('I Need U (Urban Remix)', 2016, 9, NULL),
	('I Need U (Remix)', 2016, 9, NULL),
    ('Run (Balland Mix)', 2016, 9, NULL),
	('Run (Alternative Mix)', 2016, 9, NULL),
    ('Butterfly (Alternative Mix)', 2016, 9, NULL),
    
	('Introduction: Youth', 2016, 10, NULL),
    ('Run - Japanese Ver.', 2016, 10, NULL),
	('Fire - Japanese Ver.', 2016, 10, NULL),
    ('Dope - Chou Yabee! - Japanese Ver.', 2016, 10, NULL),
	('Good Day', 2016, 10, NULL),
    ('Save - Japanese Ver.', 2016, 10, NULL),
	('Funtan Syounendan - Japanese Ver.', 2016, 10, NULL),
	('Peppuse - Japanese Ver.', 2016, 10, NULL),
	('Wishing On A Star', 2016, 10, NULL),
    ('Butterfly - Japanese Ver.', 2016, 10, NULL),
	('For You', 2016, 10, NULL),
    ('I Need U - Japanese Ver.', 2016, 10, NULL),
	('Epilogue: Young Forever - Japanese Ver.', 2016, 10, NULL),
    
	('Intro: Boy Meets Evil', 2016, 11, 12),
    ('Blood Sweat & Tears', 2016, 11, 12),
	('Begin', 2016, 11, 12),
    ('Lie', 2016, 11, 12),
	('Stigma', 2016, 11, 12),
    ('First Love', 2016, 11, 12),
	('Reflection', 2016, 11, 12),
	('MAMA', 2016, 11, 12),
	('Awake', 2016, 11, 12),
    ('Lost', 2016, 11, 12),
	('BTS Cypher 4', 2016, 11, 12),
    ('Am I Wrong', 2016, 11, 12),
	('21st Century Girl', 2016, 11, 12),
    ('2! 3!', 2016, 11, 12),
	('Interude: Wings', 2016, 11, NULL),
    
	
	('Spring Day', 2017, 12, NULL),
	('Not Today', 2017, 12, NULL),
    ('Outro: Wings', 2017, 12, NULL),
	('A Supplementary Story: You Never Walk Alone', 2017, 12, NULL),
    
	('Intro: Serendipity', 2017, 13, NULL),
    ('DNA', 2017, 13, 16),
	('Best Of Me', 2017, 13, 16),
	('dimple', 2017, 13, 16),
	('Pied Piper', 2017, 13, NULL),
    ('Skit: Billboard Music Awards Speech', 2017, 13, NULL),
	('MIC Drop', 2017, 13, 16),
    ('Go Go', 2017, 13, 16),
	('Outro: Her', 2017, 13, NULL),
    
    ('INTRO: Ringwanderung', 2018, 14, NULL),
	('Best Of Me- Japanese ver.', 2018, 14, NULL),
	('_______ - Japanese ver.', 2018, 14, NULL),
    ('DNA - Japanese ver.', 2018, 14, NULL),
	('Not Today - Japanese ver.', 2018, 14, NULL),
	('MIC Drop - Japanese ver.', 2018, 14, NULL),
	('Dont Leave Me', 2018, 14, NULL), -- Look up how to do single '
	('Go Go - Japanese ver.', 2018, 14, NULL),
    ('Crystal Snow', 2018, 14, NULL),
	('Spring Day - Japanese ver.', 2018, 14, NULL),
	('Let Go', 2018, 14, NULL),
	('OUTRO: Crack', 2018, 14, NULL),
    
	('Intro: Singularity', 2018, 15, NULL),
	('FAKE LOVE', 2018, 15, 16),
	('The Truth Untold', 2018, 15, NULL),
    ('134340', 2018, 15, NULL),
	('Paradise', 2018, 15, NULL),
	('Love Maze', 2018, 15, NULL),
	('Magic Shop', 2018, 15, 16), 
	('Airplane pt. 2', 2018, 15, 16),
    ('Anpanman', 2018, 15, 16),
	('So What', 2018, 15, NULL),
	('Outro: Tear', 2018, 15, NULL),
    
	('Euphoria', 2018, 16, NULL),
	('Trivia: Just Dance', 2018, 16, NULL),
    ('Serendipity (Full Length Edition)', 2018, 16, NULL),
	('Trivia: Love', 2018, 16, NULL), 
	('Her', 2018, 16, NULL),
    ('Singularity', 2018, 16, NULL),
	('The Truth Untold - Steve Aoki', 2018, 16, NULL),
	('Trivia: Seesaw', 2018, 16, NULL),
	('Tear', 2018, 16, NULL),
	('Epiphany', 2018, 16, NULL),
    ('Im Fine', 2018, 16, NULL), -- How to add I'm
	('IDOL', 2018, 16, NULL),
	('Answer: Love Myself', 2018, 16, NULL),
	('DNA (Pedal 2 LA Mix)', 2018, 16, NULL), 
	('FAKE LOVE (Rocking Vibe Mix)', 2018, 16, NULL),
    ('MIC Drop (Steve Aoki Remix) [Full Length Edition ] - Steve Aoki', 2018, 16, NULL),
	('IDOL - Nicki Minaj', 2018, 16, NULL),
    
	('Intro: Persona', 2019, 17, 18),
	('Boy With Luv (feat. Halsey)', 2019, 17, 18),
	('Mikrokosmos', 2019, 17, NULL), 
	('Make It Right', 2019, 17,18),
    ('HOME', 2019, 17, NULL),
	('Jamais Vu', 2019, 17, 18),
	('Dionysus', 2019, 17, 18),
    
	('Interlude: Shadow', 2020, 18, NULL),
	('Black Swan', 2020, 18, NULL),
	('Filter', 2020, 18, NULL),
	('My Time', 2020, 18, NULL), 
	('Louder than bombs', 2020, 18, NULL),
    ('ON', 2020, 18, NULL),
	('UGH!', 2020, 18, NULL),
	('00:00 (Zero O Clock)', 2020, 18, NULL), -- O'Clock
	('Inner Child', 2020, 18, NULL),
	('Friends', 2020, 18, NULL),
	('Moon', 2020, 18, NULL), 
	('Respect', 2020, 18, NULL),
    ('We are Bulletproof: the Eternal', 2020, 18, NULL),
	('Outro: Ego', 2020, 18, NULL),
	('ON (Feat. Sia) - Sia', 2020, 18, NULL),
    
	('INTRO: Calling', 2020, 19, NULL),
	('Stay Gold', 2020, 19, NULL),
	('Boy With Luv - Japanese ver.', 2020, 19, NULL), 
	('Make It Right - Japanese ver.', 2020, 19, NULL),
    ('Dionysus - Japanese ver.', 2020, 19, NULL),
	('IDOL - Japanese Ver.', 2020, 19, NULL),
	('Airplanes pt. 2 Japanese ver.', 2020, 19, NULL),
	('FAKE LOVE - Japanese ver.', 2020, 19, NULL),
	('Black Swan - Japanese ver.', 2020, 19, NULL), 
	('ON - Japanese ver.', 2020, 19, NULL),
    ('Light', 2020, 19, NULL),
	('Your eyes tell', 2020, 19, NULL),
    ('OUTRO: The Journey', 2020, 19, NULL); 
    
-- BTS Era Table:
DROP TABLE IF EXISTS `btsEra`;
CREATE TABLE `btsEra`(
`eraName` VARCHAR(100),
`year` VARCHAR(100),
`presentAlbum1` INT,
`presentAlbum2` INT, 
PRIMARY KEY(`eraName`),
FOREIGN KEY(`presentAlbum1`) REFERENCES `btsAlbum`(`albumNum`),
FOREIGN KEY(`presentAlbum2`) REFERENCES `btsAlbum`(`albumNum`)
);

INSERT INTO `btsEra`
VALUES
	('2 Cool 4 School Era', 2013, 1, NULL),
    ('O!RUL8,2? Era', 2013, 2, NULL),
    ('School Love Affair Era', 2014, 3, 4),
    ('Dark & Wild Era', 2014, 5, NULL),
    ('I Need U Era', 2014, 6, 7),
    ('Dope Era', 2014, 6, 7),
    ('The most Beautiful Moments in Life Era', 2015, 8, NULL),
    ('Young Forever Era', 2016, 9, 10),
    ('Blood Sweat & Tears Era', '2016 - 2017', 11 , 12),
    ('You Never Walk Alone Era', 2017, 12, NULL),
    ('Love Yourself Her Era', 2017, 13, NULL),
    ('Love Yourself GENERAL Era', 2018, 14, NULL),
    ('Love Yourself Tear Era', 2018, 15, NULL),
    ('Love Yourself Answer Era', 2018, 16, NULL),
    ('Persona Era', 2019, 17, NULL),
    ('MOTS Era', 2020, 18, 19);

-- BTS Run table: 
DROP TABLE IF EXISTS `btsRun`;
CREATE TABLE `btsRun`(
`episodeNum` INT,
`description` VARCHAR(100),
`runtime` VARCHAR(100), 
`year` INT(4),
`link` VARCHAR(100),
`fromEra` VARCHAR(100),

PRIMARY KEY(`episodeNum`),
FOREIGN KEY(`fromEra`) REFERENCES`btsEra`(`eraName`)
);

INSERT INTO `btsRun`
VALUES
	(1, 'Opening video- introduction of members', '3:42', 2015, 'https://m.vlive.tv/video/1037', 'Dope Era'),
    (2, 'Challenged to figure out who is the "greatest man"', '8:34', 2015, 'https://m.vlive.tv/video/1097', 'Dope Era'),
    (3, 'They visit Six Flags', '12:22', 2015, 'https://m.vlive.tv/video/1303', 'Dope Era');


-- MEMBERS TABLE: 
DROP TABLE IF EXISTS `memberFacts`;
CREATE TABLE `memberFacts`(
`member` VARCHAR(100) UNIQUE NOT NULL,
`fullName` VARCHAR(100) NOT NULL,
`nicknames` VARCHAR(100) NOT NULL,
`birthday` date NOT NULL,
`birthplace` VARCHAR(100) NOT NULL,
`favFood` VARCHAR(100) NOT NULL,
`zodiac` VARCHAR(100) NOT NULL,
`micColor` VARCHAR(100) NOT NULL,
PRIMARY KEY (`fullName`), 
CONSTRAINT PK_members UNIQUE KEY (`member`)
);

INSERT INTO `memberFacts`
VALUES
('Jin', 'Kim Seokjin' , 'Worlwide Handsome, Matnae,Shoulders, Hamster', '1992-12-04', 
    'Gyeonggi-do Province, South Korea ', 'Naengmyun','Saggitarious', 'Pink'),
    
    ('Suga', 'Min Yoongi ' , 'Lil meow meow, Agust D, Grandpa', '1993-03-09', 
    'Daegu, South Korea', 'Meat (any type)','Aries', 'Black'),
    
    ('Namjoon', 'Kim Namjoon' , 'Joonie, RapMon, NaMu', '1994-09-12', 
    'Ilsan, South Korea', 'Japchae','Virgo', 'Blue'),
    
    ('Jhope', 'Jung Hoseok' , 'Hobi, Armys Hope, Golden Hyung', '1994-02-18', 
    'Ilsan, South Korea', 'Kimchi','Aquarius', 'Red'),
    
    ('Jimin', 'Park Jimin' , 'Mochi, Chimchim, Chimmy', '1995-10-13', 
    'Busan, South Korea', 'Kimchi' ,'Libra', 'Yellow'),
    
    ('V', 'Kim Taehyung' , 'Gucci Boy,TaeTae', '1995-12-30', 
    'Daegu, South Korea', 'Japchae','Capricorn', 'Green'),
    
    ('Jungkook', 'Jeon Jungkook' , 'Kookie, Golden Maknae', '1997-09-01', 
    'Busan, South Korea', 'Cheese','Virgo', 'Purple');
    

-- MUSIC VIDEOS TABLE:
DROP TABLE IF EXISTS `musicVideos`;
CREATE TABLE `musicVideos`(
`title` VARCHAR(100) NOT NULL,
`link` VARCHAR(500) NOT NULL,
`year` INT NOT NULL,
`era` VARCHAR(100) NOT NULL,
`album` VARCHAR(100) NOT NULL,
CONSTRAINT PK_title PRIMARY KEY (`title`));

INSERT INTO `musicVideos`
VALUES
	('No More Dream', 'Link: <a href="https://www.youtube.com/watch?v=rBG5L7UsUxA">https://www.youtube.com/watch?v=rBG5L7UsUxA</a>' ,
    2013, '2 Cool 4 Skool Era', '2 Cool 4 Skool'),
    
    ('Save Me', 'Link: <a href="https://www.youtube.com/watch?v=GZjt_sA2eso">https://www.youtube.com/watch?v=GZjt_sA2eso</a>' ,
    2016, 'Young forever Era ', 'The Most Beautiful Moment in Life: Young Forever'),
    
    ('Idol', 'Link: <a href="https://www.youtube.com/watch?v=pBuZEGYXA6E">https://www.youtube.com/watch?v=pBuZEGYXA6E</a>' ,
    2018, 'Love yourself Answer Era', 'Love Yourself: Answer '),
    
    ('On - performance', 'Link: <a href="httpx://www.youtube.com/watch?v=rBG5L7UsUxA">https://www.youtube.com/watch?v=rBG5L7UsUxA</a>' ,
    2020, 'MOTS Era', 'MAP OF THE SOUL: 7'),
    
    ('Mic Drop', 'Link: <a href="https://www.youtube.com/watch?v=kTlv5_Bs8aw">https://www.youtube.com/watch?v=kTlv5_Bs8aw</a>' ,
    2017, 'Love yourself Era', 'Love Yourself: Answer'),
    
    ('Black swan', 'Link: <a href="https://www.youtube.com/watch?v=0lapF4DQPKQ">https://www.youtube.com/watch?v=0lapF4DQPKQ</a>' ,
    2020, 'MOTS Era', 'MAP OF THE SOUL: 7'),
    
    ('DNA', 'Link: <a href="https://www.youtube.com/watch?v=MBdVXkSdhwU">https://www.youtube.com/watch?v=MBdVXkSdhwU</a>' ,
    2017, 'Love yourself Her Era', 'Love Yourself: Her, Love Yourself: Answer '),
    
    ('Blood sweat and tears', 'Link: <a href="https://www.youtube.com/watch?v=hmE9f-TEutc">https://www.youtube.com/watch?v=hmE9f-TEutc</a>' ,
    2016, 'Blood Sweat and Tears Era', 'Wings, You Never Walk Alone (2017)'),
    
    ('We are bulletproof pt. 2', 'Link: <a href="https://www.youtube.com/watch?v=gqhWHy0rrtM">https://www.youtube.com/watch?v=gqhWHy0rrtM</a>' ,
    2013, '2 Cool 4 Skool Era', '2 Cool 4 Skool'),
    
    ('Stay Gold', 'Link: <a href="https://www.youtube.com/watch?v=9IHwqdz8Xhw">https://www.youtube.com/watch?v=9IHwqdz8Xhw</a>' ,
    2020, 'MOTS Era', 'MOTS: 7, Stay Gold- Single '),
    
    ('Dynamite', 'Link: <a href="https://www.youtube.com/watch?v=gdZLi9oWNZg">https://www.youtube.com/watch?v=gdZLi9oWNZg</a>' ,
    2020, 'MOTS Era', 'Dynamite- Single'),
    
    ('Fake Love', 'Link: <a href="https://www.youtube.com/watch?v=7C2z4GqqS5E">https://www.youtube.com/watch?v=7C2z4GqqS5E</a>' ,
    2018, 'Love yourself Tear Era', 'Love Yourself: Tear - 2018, Love Yourself:Answer - 2018'),
    
    ('Dope', 'Link: <a href="https://www.youtube.com/watch?v=BVwAVbKYYeM">https://www.youtube.com/watch?v=BVwAVbKYYeM</a>' ,
    2015, 'Dope era', 'The Most Beautiful Moment in Life Pt.1, The Most Beautiful Moment in Life: Young Forever- 2016'),
    
    ('Fire', 'Link: <a href="https://www.youtube.com/watch?v=ALj5MKjy2BU">https://www.youtube.com/watch?v=ALj5MKjy2BU</a>' ,
    2016, 'Young Forever Era', 'The Most Beautiful Moment in Life Pt.1 , The Most Beautiful Moment in Life: Young Forever- 2016'),
    
    ('Run', 'Link: <a href="https://www.youtube.com/watch?v=wKysONrSmew">https://www.youtube.com/watch?v=wKysONrSmew</a>' ,
    2015, 'Young Forever Era', 'The Most Beautiful Moment in Life Pt. 2-2015, The Most Beautiful Moment in Life: Young Forever- 2016'),
    
    ('Boy with luv', 'Link: <a href="https://www.youtube.com/watch?v=XsX3ATc3FbA">https://www.youtube.com/watch?v=XsX3ATc3FbA</a>' ,
    2019, 'Persona Era', 'MAP OF THE SOUL: Persona, MAP OF THE SOUL: 7'),
    
    ('I Need U', 'Link: <a href="https://www.youtube.com/watch?v=NMdTd9e-LEI">https://www.youtube.com/watch?v=NMdTd9e-LEI</a>' ,
    2015, 'Young Forever Era', 'The Most Beautiful Moment in Life Pt.1-2015, The Most Beautiful Moment in Life: Young Forever- 2016'),
    
    ('Not Today', 'Link: <a href="https://www.youtube.com/watch?v=9DwzBICPhdM">https://www.youtube.com/watch?v=9DwzBICPhdM</a>' ,
    2017, 'You Never Walk Alone era', 'You Never Walk Alone'),
    
    ('War of the Hormone', 'Link: <a href="https://www.youtube.com/watch?v=XQmpVHUi-0A">https://www.youtube.com/watch?v=XQmpVHUi-0A</a>' ,
    2014, 'Dark & Wild Era', 'Dark & Wild'),
    
    ('Danger', 'Link: <a href="https://www.youtube.com/watch?v=bagj78IQ3l0">https://www.youtube.com/watch?v=bagj78IQ3l0</a>' ,
    2014, 'Dark & Wild Era', 'Dark & Wild'),
    
    ('N.O', 'Link: <a href="https://www.youtube.com/watch?v=mmgxPLLLyVo">https://www.youtube.com/watch?v=mmgxPLLLyVo</a>' ,
    2013, 'O!RUL8,2? Era', 'O!RUL8,2? '),
    
    ('For You', 'Link: <a href="https://www.youtube.com/watch?v=TTG6nxwdhyA">https://www.youtube.com/watch?v=TTG6nxwdhyA</a>' ,
    2015, 'Forever Young Era', 'Youth'),
    
    ('On - official MV', 'Link: <a href="https://www.youtube.com/watch?v=mPVDGOVjRQ0">https://www.youtube.com/watch?v=mPVDGOVjRQ0</a>' ,
    2020, 'MOTS Era', 'Map of the Soul: 7'),
    
    ('Airplanes pt. 2- Japanese ver.', 'Link: <a href="https://www.youtube.com/watch?v=CxnJf0tWu48">https://www.youtube.com/watch?v=CxnJf0tWu48</a>' ,
    2018, 'Love yourself Tear Era', 'Love Yourself: Tear - 2018, MAP OF THE SOUL: 7 ~ THE JOURNEY~'),
    
    ('Boy Meets Evil', 'Link: <a href="https://www.youtube.com/watch?v=iJJSh-eEdRk">https://www.youtube.com/watch?v=iJJSh-eEdRk</a>' ,
    2016, 'Blood Sweat & Tears Era', 'Wings, You Never Walk Alone - 2017'),
    
    ('Serendipity', 'Link: <a href="https://www.youtube.com/watch?v=BEMaH9Sm3lQ">https://www.youtube.com/watch?v=BEMaH9Sm3lQ</a>' ,
    2017, 'Love yourself her Era', 'LOVE YOURSELF 承 Her'),
    
    ('Singularity', 'Link: <a href="https://www.youtube.com/watch?v=p8npDG2ulKQ">https://www.youtube.com/watch?v=p8npDG2ulKQ</a>' ,
    2018, 'Love Yourself 轉 Tear Era', 'Love Yourself 轉: Tear'),
    
    ('Euphoria', 'Link: <a href="https://www.youtube.com/watch?v=kX0vO4vlJuU&t=199s">https://www.youtube.com/watch?v=kX0vO4vlJuU&t=199s</a>' ,
    2018, 'Love Yourself 結 Answer Era', 'Love Yourself 結 Answer'),
    
    ('Just One Day', 'Link: <a href="https://www.youtube.com/watch?v=DTcKkcyS410">https://www.youtube.com/watch?v=DTcKkcyS410</a>' ,
    2014, 'Skool Luv Affair', 'Skool Luv Affair'),
    
    ('Spring Day', 'Link: <a href="https://www.youtube.com/watch?v=xEeFrLSkMm8">https://www.youtube.com/watch?v=xEeFrLSkMm8</a>' ,
    2017, 'You never walk alone Era', 'You Never Walk Alone - 2017'),
    
    ('Epiphany', 'Link: <a href="https://www.youtube.com/watch?v=fIkZOLsnoqY">https://www.youtube.com/watch?v=fIkZOLsnoqY</a>' ,
    2018, 'Love yourself Answer Era', 'Love yourself Answer'),
    
    ('Young Forever', 'Link: <a href="https://www.youtube.com/watch?v=HBj4y9Zibao">https://www.youtube.com/watch?v=HBj4y9Zibao</a>' ,
    2016, 'Young Forever Era', 'The Most Beautiful Moment in Life: Young Forever- 2016'),
    
    ('Boy in luv', 'Link: <a href="https://www.youtube.com/watch?v=m8MfJg68oCs">https://www.youtube.com/watch?v=m8MfJg68oCs</a>' ,
    2014, 'Skool Love Affair Era', 'Skool Love Affair -2014, Skool Love Affair Special Edition -2014');

DROP TABLE IF EXISTS `musicVideosDetails`;
CREATE TABLE `musicVideosDetails`(
`title` VARCHAR(100) NOT NULL,
`member` VARCHAR(10) NOT NULL,
`hairColor` VARCHAR(10) NOT NULL,
`keyAccessory` VARCHAR(20) NOT NULL,
`shoes` VARCHAR(20) NOT NULL,
CONSTRAINT FK_musicVideoDetailsmusicVideos FOREIGN KEY(`title`) REFERENCES musicVideos(`title`), 
CONSTRAINT FK_musicVideoDetailsmemberFacts FOREIGN KEY(`member`) REFERENCES memberFacts(`member`));

INSERT INTO `musicVideosDetails`
VALUES
('No More Dream', 'Jin', 'brown', 'Sleeveless shirt', 'Jordans'),
('No More Dream', 'Suga', 'brown', 'Sleeveless shirt', 'Jordans');

DROP TABLE IF EXISTS `armyProfile`;
CREATE TABLE `armyProfile`(
`armyNum` INT,
`firstName` VARCHAR(100) NOT NULL,
`lastName` VARCHAR(500) NOT NULL,
`birthday` VARCHAR(100) NOT NULL,
`bias` VARCHAR(100) NOT NULL,
`biasFavoriteColor` VARCHAR(100) NOT NULL,
`favoriteSong` VARCHAR(100) NOT NULL,
`favoriteEra` VARCHAR(100) NULL,
PRIMARY KEY (`armyNum`),
FOREIGN KEY(`favoriteEra`) REFERENCES`btsEra`(`eraName`),
FOREIGN KEY(`favoriteSong`) REFERENCES`btsTracks`(`trackName`),
FOREIGN KEY(`bias`) REFERENCES`memberFacts`(`member`)
);

INSERT INTO `armyProfile`
VALUES
(0, 'Jaqueline', 'Diaz', '02/06/2000', 'Jungkook', 'Euphoria', 'Dope Era', NULL);




