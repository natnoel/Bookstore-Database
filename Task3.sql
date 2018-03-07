drop table userchoice;
@D:\A3\dbdropbook
@D:\A3\dbcreatebook
@D:\A3\dbloadbook
SPOOL D:\A3\Task3.txt
/*-------------------------------------Task 3-------------------------------------*/
SET ECHO ON
SET FEEDBACK ON
SET LINESIZE 100
SET PAGESIZE 100

CREATE OR REPLACE TRIGGER verify_creditcard
BEFORE INSERT ON Pbasket
FOR EACH ROW

DECLARE
	other_users	NUMBER (3);
BEGIN
	SELECT count (*)
	INTO other_users
	FROM Pbasket
	WHERE :NEW.ccard = ccard
	AND	:NEW.c# <> c#;
	
	IF other_users <> 0 THEN
		RAISE_APPLICATION_ERROR (-20001, 'Credit card number '||:NEW.ccard||' already in use by another customer! Insertion aborted!');
	END IF;
END;
/

SELECT * FROM Pbasket;

--Valid credit card
INSERT INTO Pbasket VALUES ('25-DEC-2011', '25-DEC-2011', 7777777777, 100); 

--Invalid credit card
INSERT INTO Pbasket VALUES ('17-DEC-2011', '17-DEC-2011', 6781394229, 100); 

SELECT * FROM Pbasket;

SPOOL OFF;