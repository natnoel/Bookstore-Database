Execute a script dbCreateBook.sql to create a sample database. Next execute the dbLoadBook.sql to populate the sample database. The database contains information about the products as well as transactions done by customers for the sample database.

Task 1
Implement PL/SQL block that modifies the prices of books and videos accordingly to the following rules:

-	if a product belongs to book category and it has not been purchased in the last 30 days then decrease its price by 3%,
-	if a product belongs to video category and it has been purchased less than 5 times in the last 20 days then decrease its price by 5%.

Task 2
Create a table UserChoice(p#, price) to store information about products (number and price) selected by a user. Initially leave a table UserChoice empty.

Implement a stored PL/SQL procedure FindProducts(category, keyword) that finds all products determined by category parameter, and described by a keyword determined by keyword parameter and stores the numbers and prices of all selected products in UserChoice table. Consider the following categories of products: book, video, cdrom.

Task 3
Implement a database trigger that for each row is inserted into Pbasket table verifies a value of credit card number attribute. Whenever a credit card number included in a new row has been already used by another customer, your trigger should abort insert operation.
