create database DavidMurphyAssign3;
Use DavidMurphyAssign3;

CREATE TABLE players(
	playerid int auto_increment primary key,
	fname	varchar(30),
	lname varchar(30),
	handicap char(1),
	sadd1 varchar(50),
	sadd2 varchar(50),
	city varchar(30),
	state char(2),
	zip char(5));
CREATE TABLE courses(
	coursename varchar(30) primary key,
	slope char(3),
	rating varchar(4),
	par char(2),
	yards varchar(6));
CREATE TABLE rounds(
	roundid char(3) primary key,
	roundnum varchar(2),
	teetime datetime,
	tournament varchar(30),
	course varchar(30),
	playerid int,
	constraint courses_rounds_fk foreign key (course) references 
													courses(coursename),
	constraint players_rounds_fk foreign key (playerid) references 
													players(playerid));
CREATE TABLE phone(
	phoneid int auto_increment primary key,
	number varchar(13),
	playerid int,
	constraint players_phone_fk foreign key (playerid) references 
											players(playerid));

#inserting all the players											
insert into players(fname, lname, handicap, sadd1, city, state, zip)
	values ('David', 'Murphy', 1, '5962 Canaan Ln', 'East Brainer', 'TN', '50574');
insert into players(fname, lname, handicap, sadd1, city, state, zip)
	values ('Kevin','Stewart',6,'9699 Duncan Ln','North Bay','WI','57700');
insert into players(fname, lname, handicap, sadd1, city, state, zip)
	values ('Jessica', 'Murphy', 6, '8879 Alabama Av', 'Stanford', 'MT', '70675');
insert into players(fname, lname, handicap, sadd1, city, state, zip)
	values ('Randy','Henderson',3,'5760 River Rd','Cale','AR','10480');
insert into players(fname, lname, handicap, sadd1, city, state, zip)
	values ('Stephen','Graham',8,'2461 Bunker St','Inkom','ID','40330');
insert into players(fname, lname, handicap, sadd1, city, state, zip)
	values ('Jason','Ford',2,'10368 Ferncliff Dr','Millerton','IA','52275');
insert into players(fname, lname, handicap, sadd1, city, state, zip)
	values ('Frank','Hernandez',6,'6057 Island Av','Fargo','AR','23140');
insert into players(fname, lname, handicap, sadd1, city, state, zip)
	values ('Adam','Howard',6,'8687 Bisbee St','Richmond','VA','67288');
insert into players(fname, lname, handicap, sadd1, city, state, zip)
	values ('Joshua','Roberts',9,'6452 Myrtle St','Maple Valle','WA','43150');
insert into players(fname, lname, handicap, sadd1, city, state, zip)
	values ('Sarah','Richardson',2,'4961 States Point Rd','South Hil','WA','65922');
	
#inserting the courses
insert into courses(coursename, slope, rating, par, yards)
	values('Augusta National Course', '6922', '72', '73.5', '130');
insert into courses(coursename, slope, rating, par, yards)
	values('Bulls Run', '6523', '71', '71.2','127');
insert into courses(coursename, slope, rating, par, yards)
	values('Gibson Bay', '6576', '72', '71.5', '123');
insert into courses(coursename, slope, rating, par, yards)
	values('Green Briar', '6298', '70', '71.5', '122' );
insert into courses(coursename, slope, rating, par, yards)
	values('Hickory Hill', '6550', '71', '71.6', '133');
insert into courses(coursename, slope, rating, par, yards)
	values('Louisville Downs', '7132', '73', '73.6', '129');
insert into courses(coursename, slope, rating, par, yards)
	values('Pebble Beach', '7035', '72', '72.9', '133');
insert into courses(coursename, slope, rating, par, yards)
	values('Pine Valley', '7322', '74', '73.8', '130');
insert into courses(coursename, slope, rating, par, yards)
	values('West Side', '6296', '70', '70.8', '121');
	
#inserting the rounds
insert into rounds(roundid, playerid, tournament, roundnum,teetime,course)
	values('157',1,'Gibson Bay Open 2010', '1','2009-06-07 08:00:00','Gibson Bay');
insert into rounds(roundid, playerid, tournament, roundnum,teetime,course)
	values('274',1,'Halmark Invitational 2011', '1','2010-05-02 08:00:00','Hickory Hill');
insert into rounds(roundid, playerid, tournament, roundnum,teetime,course)
	values('289',1,'Halmark Invitational 2011', '2','2010-05-03 08:00:00','Pine Valley');
insert into rounds(roundid, playerid, tournament, roundnum,teetime,course)
	values('271',3,'Halmark Invitational 2011', '1','2010-05-02 08:00:00','Hickory Hill');
insert into rounds(roundid, playerid, tournament, roundnum,teetime,course)
	values('287',3,'Halmark Invitational 2011', '2','2010-05-03 08:00:00','Pine Valley');
insert into rounds(roundid, playerid, tournament,roundnum,teetime,course)
	values('273',4,'Halmark Invitational 2011', '1','2010-05-02 08:00:00','Hickory Hill');
insert into rounds(roundid, playerid, tournament, roundnum,teetime,course)
	values('286',4,'Halmark Invitational 2011', '2','2010-05-03 08:00:00','Pine Valley');
insert into rounds(roundid, playerid, tournament, roundnum,teetime,course)
	values('275',5,'Halmark Invitational 2011', '1','2010-05-02 08:30:00','Hickory Hill');
insert into rounds(roundid, playerid, tournament, roundnum,teetime,course)
	values('290',5,'Halmark Invitational 2011', '2','2010-05-03 08:30:00','Pine Valley');
insert into rounds(roundid, playerid, tournament, roundnum,teetime,course)
	values('277',6,'Halmark Invitational 2011', '1','2010-05-02 08:30:00','Hickory Hill');
insert into rounds(roundid, playerid, tournament, roundnum,teetime,course)
	values('291',6,'Halmark Invitational 2011', '2','2010-05-03 08:30:00','Pine Valley');
insert into rounds(roundid, playerid, tournament, roundnum,teetime,course)
	values('276',7,'Halmark Invitational 2011', '1','2010-05-02 08:30:00','Hickory Hill');
insert into rounds(roundid, playerid, tournament, roundnum,teetime,course)
	values('292',7,'Halmark Invitational 2011', '2','2010-05-03 08:30:00','Pine Valley');
insert into rounds(roundid, playerid, tournament, roundnum,teetime,course)
	values('280',8,'Halmark Invitational 2011', '1','2010-05-02 09:00:00','Hickory Hill');
insert into rounds(roundid, playerid, tournament, roundnum,teetime,course)
	values('296',8,'Halmark Invitational 2011', '2','2010-05-03 09:00:00','Pine Valley');
insert into rounds(roundid, playerid, tournament, roundnum,teetime,course)
	values('279',9,'Halmark Invitational 2011', '1','2010-05-02 09:00:00','Hickory Hill');
insert into rounds(roundid, playerid, tournament, roundnum,teetime,course)
	values('295',9,'Halmark Invitational 2011', '2','2010-05-03 09:00:00','Pine Valley');
insert into rounds(roundid, playerid, tournament, roundnum,teetime,course)
	values('278',1,'Halmark Invitational 2011', '1','2010-05-02 09:00:00','Hickory Hill');
	
#inserting the phone values
insert into phone(number,playerid)
	values('1522693547',1);
insert into phone(number,playerid)
	values('194555918',2);
insert into phone(number,playerid)
	values('1535555918',3);
insert into phone(number,playerid)
	values('1055554045',4);
insert into phone(number,playerid)
	values('1575555697',5);
insert into phone(number,playerid)
	values('1775554325',6);
insert into phone(number,playerid)
	values('1005551143',7);
insert into phone(number,playerid)
	values('1175553842',8);
insert into phone(number,playerid)
	values('1795555408',9);
insert into phone(number,playerid)
	values('1125559823',10);

#this is telling me there is a foreign key error, I think its lying
CREATE TABLE playersrounds(
	playerid int,
	roundid char(3),
	score varchar(2),
	constraint playersrounds_pk primary key (playerid,roundid),
	constraint players_rounds1_fk foreign key (playerid) references players(playerid),
	constraint players_rounds2_fk foreign key (roundid) references  rounds(roundid));
#inserting the playersrounds values
insert into playersrounds(playerid,roundid,score)
		values(1,'157','71');
insert into playersrounds(playerid,roundid,score)
		values(1,'274','90');
insert into playersrounds(playerid,roundid,score)
		values(1,'289','71');
insert into playersrounds(playerid,roundid,score)
		values(3,'271','81');
insert into playersrounds(playerid,roundid,score)
		values(3,'287','78');
insert into playersrounds(playerid,roundid,score)
		values(4,'273','80');
insert into playersrounds(playerid,roundid,score)
		values(4,'286','80');
insert into playersrounds(playerid,roundid,score)
		values(5,'275','79');
insert into playersrounds(playerid,roundid,score)
		values(5,'290','74');
insert into playersrounds(playerid,roundid,score)
		values(6,'277','83');
insert into playersrounds(playerid,roundid,score)
		values(6,'291','84');
insert into playersrounds(playerid,roundid,score)
		values(7,'276','73');
insert into playersrounds(playerid,roundid,score)
		values(7,'292','73');
insert into playersrounds(playerid,roundid,score)
		values(8,'280','83');
insert into playersrounds(playerid,roundid,score)
		values(8,'296','81');
insert into playersrounds(playerid,roundid,score)
		values(9,'279','78');
insert into playersrounds(playerid,roundid,score)
		values(9,'295','86');
insert into playersrounds(playerid,roundid,score)
		values(10,'278','86');