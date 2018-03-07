2011/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/*                             BOOKSHOP                                 */
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
INSERT INTO Product VALUES
(1, 23.95, 'Prentice Hall', 'Magnificent colours !!!' );
INSERT INTO Product VALUES
(2, 50.00, 'Wiley', 'Proven in the last to decades UNIX is here to stay. Unix is the backbone of Internet. This book is the best book about Unix ever published');
INSERT INTO Product VALUES
(3, 5.90, 'Wiley', 'The best SQL book ever !!!' );
INSERT INTO Product VALUES
(4, 49.95, 'Oracle', 'This journal soars above and beyond the world of traditional journals' );
INSERT INTO Product VALUES
(5, 8.95, NULL, NULL );
INSERT INTO Product VALUES
(6, 5.00, NULL, NULL );
INSERT INTO Product VALUES
(7, 25.30, 'Andromeda Pty Ltd', 'Very impressive !!!' );
INSERT INTO Product VALUES
(8, 12.56, 'New Impressions', 'This is a dazzling display of vivid orchestral colour and dashing rhytmic exuberance');
INSERT INTO Product VALUES
(9, 10.05, 'Very Heavy Metal Corp.', '... Remarkable, powerful, ... dynamic. ... superior ...' );
INSERT INTO Product VALUES
(10, 15.00, NULL, NULL);


INSERT INTO Keyword VALUES
(1, 'FLOWER');
INSERT INTO Keyword VALUES        
(1, 'GARDENING');
INSERT INTO Keyword VALUES        
(1, 'COLOUR');
INSERT INTO Keyword VALUES        
(2, 'UNIX');
INSERT INTO Keyword VALUES        
(2, 'OPERATING SYSTEM');
INSERT INTO Keyword VALUES        
(3, 'SQL');
INSERT INTO Keyword VALUES        
(4, 'DATABASE');
INSERT INTO Keyword VALUES        
(4, 'SQL');
INSERT INTO Keyword VALUES        
(7, 'OVERTURE');
INSERT INTO Keyword VALUES        
(8, 'SYMPHONY');
INSERT INTO Keyword VALUES        
(9, 'SYMPHONY');
INSERT INTO Keyword VALUES        
(9, 'ORCHESTRA');
INSERT INTO Keyword VALUES        
(10, 'VOYAGER');
INSERT INTO Keyword VALUES        
(10, 'STARSHIP');


INSERT INTO Customer VALUES
(100, 'Janusz', 'Getta', 'jrg@cs.uow.edu.au', NULL, 'Australia', 'NSW', 'Wollongong', '2530', 'Barham Pl.', 6, NULL );
INSERT INTO Customer VALUES
(101, 'Kevin', 'Corbley', 'kc@cs.wisc.edu', NULL, 'USA', 'Winsconsin', 'Northpool', 'WI567-23', '234', 4, 6);
INSERT INTO Customer VALUES
(102, 'Ann', 'Boleyn', 'ann@ozemail.coma.au', 610242347819, 'Australia', 'Wagga', '3489',NULL, 'Station', 34, NULL);


INSERT INTO Pbasket VALUES
( TO_DATE('02-APR-2011:10:00', 'DD-MON-YYYY:HH:MI'), TO_DATE('02-APR-2011:10:40', 'DD-MON-YYYY:HH:MI'), 4594567829, 100 ); 
INSERT INTO Pbasket VALUES
( TO_DATE('12-APR-2011:01:00', 'DD-MON-YYYY:HH:MI'), TO_DATE('12-APR-2011:01:10', 'DD-MON-YYYY:HH:MI'), 1294522229, 101 ); 
INSERT INTO Pbasket VALUES
( TO_DATE('08-MAY-2011:05:00', 'DD-MON-YYYY:HH:MI'), TO_DATE('08-MAY-2011:05:55', 'DD-MON-YYYY:HH:MI'), 1294522229, 101 ); 
INSERT INTO Pbasket VALUES
( TO_DATE('16-JAN-2011:06:00', 'DD-MON-YYYY:HH:MI'), TO_DATE('16-JAN-2011:06:15', 'DD-MON-YYYY:HH:MI'), 6781394229, 102 ); 


INSERT INTO PP VALUES
( TO_DATE('12-APR-2011:01:10', 'DD-MON-YYYY:HH:MI'), 2 );
INSERT INTO PP VALUES 
( TO_DATE('08-MAY-2011:05:55', 'DD-MON-YYYY:HH:MI'), 5 ); 
INSERT INTO PP VALUES 
( TO_DATE('08-MAY-2011:05:55', 'DD-MON-YYYY:HH:MI'), 6 );
INSERT INTO PP VALUES 
( TO_DATE('08-MAY-2011:05:55', 'DD-MON-YYYY:HH:MI'), 3 );
INSERT INTO PP VALUES 
( TO_DATE('08-MAY-2011:05:55', 'DD-MON-YYYY:HH:MI'), 2 );
INSERT INTO PP VALUES 
( TO_DATE('16-JAN-2011:06:15', 'DD-MON-YYYY:HH:MI'), 2 ); 
INSERT INTO PP VALUES 
( TO_DATE('16-JAN-2011:06:15', 'DD-MON-YYYY:HH:MI'), 7 ); 
INSERT INTO PP VALUES 
( TO_DATE('16-JAN-2011:06:15', 'DD-MON-YYYY:HH:MI'), 8 ); 
INSERT INTO PP VALUES 
( TO_DATE('16-JAN-2011:06:15', 'DD-MON-YYYY:HH:MI'), 9 ); 
INSERT INTO PP VALUES 
( TO_DATE('16-JAN-2011:06:15', 'DD-MON-YYYY:HH:MI'), 10 ); 


INSERT INTO Cevaluation VALUES
( 100, 'Excellent !!!', 5, 1 );
INSERT INTO Cevaluation VALUES  
( 100, 'Very, very average, nothing special', 2, 2 );  
INSERT INTO Cevaluation VALUES  
( 102, 'Magnificent', 5, 10 );  


INSERT INTO Book VALUES
(18752020860, 'Flowers by Colour', 'Weldon Russel Pty. Ltd.', 1990, 'Flowers by Colour is a comprehensive guide to more than 1,000 popular garden flower', 'OTHER', 1 );
INSERT INTO Book VALUES
(12224602080, 'Unix for cops', 'Prentice Hall Pty. Ltd.', 2007, 'This is an ultimate Unix manual', 'COMPUTER', 2 );
INSERT INTO Book VALUES
(12755520369, 'SQL for 2nd year students', 'Morgan Kaufman', 2006, 'Comprehensive SQL guide', 'COMPUTER', 3 );

INSERT INTO Author VALUES
(18752020860, 'Valerie', 'Swan');
INSERT INTO Author VALUES
(12224602080, 'Keith', 'Morgan');
INSERT INTO Author VALUES
(12224602080, 'Mark', 'Thornthwaite');
INSERT INTO Author VALUES
(12755520369, 'Edgar', 'Codd');


INSERT INTO Journal VALUES
(77520368899, 'Oracle Magazine', 'Oracle Publishers', 4 );


INSERT INTO Jissue VALUES
(77520368899, 8, 4, 5 );
INSERT INTO Jissue VALUES
(77520368899, 8, 5, 6 );


INSERT INTO CDROM VALUES
( 7, 'Romeo and Juliet, Fantasy Overture', 'Crystal Collection', 1986, 'CLASSIC' );
INSERT INTO CDROM VALUES
( 8, 'Tchaikovsky Symphony no. 1', 'Crystal Collection', 1989, 'CLASSIC' );
INSERT INTO CDROM VALUES
( 9, 'Tchaikovsky Symphony no. 2', 'Telarc', 1990, 'CLASSIC' );


INSERT INTO Video VALUES
(10, 'Startrek Voyager', 'Columbia', 1997, 'SCIENCE FICTION' );

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
