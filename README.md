# bts_sql

—-BTS Website Instructions—-

1.——Download the attached zip file titled “btswebsite2 copy”
	- This zip contains all necessary webpages and backend code. A brief description of each important file is below:

Webpages:
	- btstest.html: home page, search all tables
	- btssample.html: members page, search only members table and click member images to be directed to their wiki pages 
	- btsalbums.html: albums page, search only albums table
	- btstracks.html: tracks page, search only tracks table 
	- btsrun.html: BTS Run page, search only ‘Run’ episodes table
	- btsconnect2.html: create an ‘Army’ (the name of the BTS fandom) account
	- style.css

Backend/php:
	- None of the search options are case sensitive.
	- btsinsert.php: adds a new account/entry to the database, where username must be unique.
	- btssearch.php: search all tables within entire database
	- btssearch2.php: find member information by member name
	- searchalbums.php: find album information by album name
	- searchtracks.php: find track information by track name
	- searchrun.php: find BTS Run information by episode number
	- searchconnect.php: find users with the same favorite member
	- db_conn1.php: establishes connection to the database.


2.——Open the folder within your XAMPP application, and move folder to ‘htdocs’ within XAMPP
3.——To open and view the website, you must import the database into phpmyadmin
4.——Once the database appears in phpmyadmin, everything is setup for viewing the site
5.——Enter ‘localhost/btswebsite2 copy/btstest.html’ to be directed to the home page and access all other pages
