/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/*			       BOOKSHOP					*/
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */

CREATE TABLE Product(
p#		NUMBER(8)	NOT NULL, /* Product number		*/
price		NUMBER(7,2)	NOT NULL, /* Price per item		*/
manufacturer	VARCHAR(30)		, /* Manufacturer name   	*/
pcomment	LONG			, /* Brief comments     	*/
	CONSTRAINT Product_PK PRIMARY KEY(p#)
);


CREATE TABLE Keyword(
p#		NUMBER(8)	NOT NULL, /* product number		*/
kword		VARCHAR(30)	NOT NULL, /* Keyword			*/
	CONSTRAINT Keyword_PK PRIMARY KEY(p#, kword),
	CONSTRAINT Keyword_FK1 FOREIGN KEY(p#) REFERENCES Product(p#)
);


CREATE TABLE Customer(
c#		NUMBER(20)	NOT NULL, /* Customer number		*/
fname		VARCHAR(30)	NOT NULL, /* First name			*/
lname		VARCHAR(30)	NOT NULL, /* Last name			*/
email		VARCHAR(100)	NOT NULL, /* E-mail address		*/
fax#		NUMBER(20)		, /* Fax number			*/
country		VARCHAR(30)	NOT NULL, /* Country part of address	*/
state		VARCHAR(30)		, /* State part of address	*/
city		VARCHAR(30)	NOT NULL, /* City part of address	*/
pcode		VARCHAR(10)		, /* Post code part of address	*/
street		VARCHAR(30)	NOT NULL, /* Street part of address	*/
house#		NUMBER(6)	NOT NULL, /* House number part fo adress */
flat#		NUMBER(6)		, /* Flat number part fo address */
	CONSTRAINT Customer_PK PRIMARY KEY(c#)
);


CREATE TABLE Pbasket(
whencreated	DATE		NOT NULL, /* Transferred from Abasket	*/
whenfinalised	DATE		NOT NULL, /* Date time when finalised   */
ccard		number(20)	NOT NULL, /* Credit card used		*/
c#		NUMBER(20)	NOT NULL, /* Customer number		*/
	CONSTRAINT Pbasket_PK PRIMARY KEY(whenfinalised),
	CONSTRAINT Pbasket_CK UNIQUE(whencreated),
	CONSTRAINT PBasket_FK1 FOREIGN KEY(c#) REFERENCES Customer(c#)	
);


CREATE TABLE PP(
whenfinalised	DATE		NOT NULL, /* Date time when finalised  	*/
p#		NUMBER(8)	NOT NULL, /* Product number		*/
	CONSTRAINT PP_PK PRIMARY KEY(whenfinalised, p#),
	CONSTRAINT PP_FK1 FOREIGN KEY(whenfinalised) 
			REFERENCES Pbasket(whenfinalised),
	CONSTRAINT PP_FK2 FOREIGN KEY(p#) REFERENCES Product(p#)
);


CREATE TABLE Cevaluation(
c#		NUMBER(20)	NOT NULL, /* Customer number		*/
etext		LONG		NOT NULL, /* Text of evaluation		*/
erank		NUMBER(1)	NOT NULL, /* Rank provided by customer  */
p#		NUMBER(8)	NOT NULL, /* Product number		*/
	CONSTRAINT Cevaluation_PK PRIMARY KEY(c#, p#),
	CONSTRAINT Cevaluation_FK1 FOREIGN KEY(c#) REFERENCES Customer(c#),
	CONSTRAINT Cevaluation_FK2 FOREIGN KEY(p#) REFERENCES Product(p#),
	CONSTRAINT Cevaluation_CHK CHECK( erank IN (0, 1, 2, 3, 4, 5) )
);


CREATE TABLE Book(
ISBN		VARCHAR(20)	NOT NULL, /* ISBN			*/
title		VARCHAR(256)	NOT NULL, /* Book title			*/
publisher	VARCHAR(50)	NOT NULL, /* Publisher company		*/
pyear		NUMBER(4)	NOT NULL, /* Publication year		*/
description	LONG		NOT NULL, /* Description 		*/
topic		VARCHAR(30)	NOT NULL, /* Topic			*/
p#		NUMBER(8)	NOT NULL, /* Product number		*/
	CONSTRAINT Book_PK PRIMARY KEY(p#),
	CONSTRAINT Book_CK1 UNIQUE(ISBN),
	CONSTRAINT Book_CK2 UNIQUE(title),
	CONSTRAINT Book_FK1 FOREIGN KEY(p#) REFERENCES Product(p#),
	CONSTRAINT Book_CHK1 CHECK (topic IN ('ART', 'ARCHITECTURE',
		'BIOGRAPHY', 'CHILDREN', 'COMPUTER', 'COOKING', 'FOOD AND WINE',
		'HEALTH', 'HISTORY', 'GEOGRAPHY', 'SCIENCE', 'RELIGION', 'ROMANCE',
		'SPORT', 'OTHER' )),
	CONSTRAINT Book_CHK2 CHECK( pyear > 1400 )
);


CREATE TABLE Author(
ISBN		VARCHAR(20)	NOT NULL, /* ISBN			*/
fname		VARCHAR(30)	NOT NULL, /* First name			*/
lname		VARCHAR(30)	NOT NULL, /* Last name			*/
	CONSTRAINT Author_PK PRIMARY KEY(ISBN, fname, lname),
	CONSTRAINT Author_FK1 FOREIGN KEY(ISBN) REFERENCES Book(ISBN)
);


CREATE TABLE Journal(
ISSN		VARCHAR(20)	NOT NULL, /* ISSN			*/
title		VARCHAR(256)	NOT NULL, /* Title			*/
publisher	VARCHAR(50)	NOT NULL, /* Publisher company		*/
p#		NUMBER(8)	NOT NULL, /* Product number		*/
	CONSTRAINT Journal_PK PRIMARY KEY(p#),
	CONSTRAINT Journal_CK1 UNIQUE(ISSN),
	CONSTRAINT Journal_CK2 UNIQUE(title),
	CONSTRAINT Journal_FK1 FOREIGN KEY(p#) REFERENCES Product(p#)
);


CREATE TABLE Jissue(
ISSN		VARCHAR(20)	NOT NULL, /* ISNN			*/
vol#		NUMBER(2)	NOT NULL, /* Volume number		*/
issue#		NUMBER(2)	NOT NULL, /* Issue number		*/
p#		NUMBER(8)	NOT NULL, /* Product number		*/
	CONSTRAINT Jissue_PK PRIMARY KEY(p#),
	CONSTRAINT Jissue_CK1 UNIQUE(ISSN, vol#, issue#), 
	CONSTRAINT Jissue_FK1 FOREIGN KEY(p#) REFERENCES Product(p#),
	CONSTRAINT Jissue_FK2 FOREIGN KEY(ISSN) REFERENCES Journal(ISSN)
);


CREATE TABLE CDROM(
p#		NUMBER(8)	NOT NULL, /* Product number		*/
title		VARCHAR(256)	NOT NULL, /* Title			*/
producer	VARCHAR(50)	NOT NULL, /* Producer			*/
pyear		NUMBER(4)	NOT NULL, /* Production year		*/
category	VARCHAR(30)	NOT NULL, /* Category			*/
	CONSTRAINT CDROM_PK PRIMARY KEY(p#),
	CONSTRAINT CDROM_CK1 UNIQUE(title),
	CONSTRAINT CDROM_FK1 FOREIGN KEY(p#) REFERENCES PRODUCT(p#),
	CONSTRAINT CROM_CHK1 CHECK ( category IN ('CLASSIC', 'POP', 'ROCK',
		'JAZZ', 'KIDS', 'OTHER' ) )
);


CREATE TABLE Video(
p#		NUMBER(8)	NOT NULL, /* Product number		*/
title		VARCHAR(256)	NOT NULL, /* Title			*/
producer	VARCHAR(50)	NOT NULL, /* Producer			*/
pyear		NUMBER(4)	NOT NULL, /* Production year		*/
topic		VARCHAR(30)	NOT NULL, /* Topic			*/
	CONSTRAINT Video_PK PRIMARY KEY(p#),
	CONSTRAINT Video_CK1 UNIQUE(title),
	CONSTRAINT Video_FK1 FOREIGN KEY(p#) REFERENCES PRODUCT(p#),
	CONSTRAINT Video_CHK1 CHECK( topic IN ('ACTION', 'ADVENTURE', 
		'CLASSIC', 'COMEDY', 'HORROR', 'DRAMA', 'SCIENCE FICTION',
		'KIDS AND FAMILY', 'OTHER' ) )
);

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
