drop table userchoice;
@D:\A3\dbdropbook
@D:\A3\dbcreatebook
@D:\A3\dbloadbook
SPOOL D:\A3\Task2.txt
/*-------------------------------------Task 2-------------------------------------*/
SET ECHO ON
SET FEEDBACK ON
SET LINESIZE 100
SET PAGESIZE 100

CREATE TABLE UserChoice (
p#		NUMBER (8)		NOT NULL,
price	NUMBER (7,2)	NOT NULL,
	CONSTRAINT UserChoice_PK PRIMARY KEY (p#),
	CONSTRAINT UserChoice_FK1 FOREIGN KEY (p#) REFERENCES Product (p#)
);

CREATE OR REPLACE PROCEDURE FindProducts (category IN VARCHAR, key_word IN VARCHAR) IS
BEGIN
	IF upper (category) = 'BOOK' THEN
		FOR brec IN (	SELECT P.p#, P.price FROM Product P, Book B, Keyword K
						WHERE P.p# = B.p# AND B.p# = K.p#
						AND upper (K.kword) = upper (key_word))
		LOOP
			INSERT INTO UserChoice VALUES (brec.p#, brec.price);
		END LOOP;
			
	ELSIF upper (category) = 'VIDEO' THEN
		FOR vrec IN (	SELECT P.p#, P.price FROM Product P, Video V, Keyword K
						WHERE P.p# = V.p# AND V.p# = K.p#
						AND upper (K.kword) = upper (key_word))
		LOOP
			INSERT INTO UserChoice VALUES (vrec.p#, vrec.price);
		END LOOP;
	ELSIF upper (category) = 'CDROM' THEN
		FOR cdrec IN (	SELECT P.p#, P.price FROM Product P, CDROM CD, Keyword K
						WHERE P.p# = CD.p# AND CD.p# = K.p#
						AND upper (K.kword) = upper (key_word))
		LOOP
			INSERT INTO UserChoice VALUES (cdrec.p#, cdrec.price);
		END LOOP;
	END IF;

END FindProducts;
/

--Product Table
SELECT p#, price FROM Product;

--Book Table
SELECT p# FROM Book;

--Video Table
SELECT p# FROM Video;

--CDROM Table
SELECT p# FROM CDROM;

--Keyword Table
SELECT * FROM Keyword;

--Empty Table
SELECT * FROM UserChoice;

exec FindProducts ('Book', 'UNIX');
SELECT * FROM UserChoice;

exec FindProducts ('Video', 'Voyager');
SELECT * FROM UserChoice;

--There are no products that fit this description
exec FindProducts ('Book', 'Voyager');
SELECT * FROM UserChoice;

exec FindProducts ('cdrom', 'Symphony');
SELECT * FROM UserChoice;

SPOOL OFF