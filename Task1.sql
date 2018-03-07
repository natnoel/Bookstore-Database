drop table userchoice;
@D:\A3\dbdropbook
@D:\A3\dbcreatebook
@D:\A3\dbloadbook
SPOOL d:\A3\Task1.txt
/*==========================Task 1==========================*/
SET ECHO ON
SET FEEDBACK ON
SET LINESIZE 100
SET PAGESIZE 100

SELECT p#, price FROM Product;
SELECT p# FROM Book;
SELECT p# FROM Video;
SELECT * FROM PP;

BEGIN
	UPDATE Product
	SET price = price * 0.97
	WHERE p# IN
	(	SELECT p# FROM Book
		WHERE p# NOT IN
		(	SELECT p# FROM PP
			WHERE (SYSDATE - whenfinalised) <= 30));
			
	UPDATE Product
	SET price = price * 0.95
	WHERE p# IN
	(	SELECT p# FROM Video
		WHERE p# NOT IN
		(	SELECT p# FROM PP
			WHERE (SYSDATE - whenfinalised) <= 20
			GROUP BY p#
			HAVING count (*) >= 5));
END;
/

SELECT p#, price FROM Product;
SELECT p# FROM Book;
SELECT p# FROM Video;
SELECT * FROM PP;

SPOOL OFF