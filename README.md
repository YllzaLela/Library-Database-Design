# Library-Database-Design
Design, Creation and Documentation of a simple Online Library Management System 
1. Introduction


This project is purposed to be an addition to universities library management system. The goal is to provide fast and reliable data to the admin/s (Librarian) and the users (students and professors). 

Users and the admin/s will be able to create their own personal accounts.
Admins will have features of being able to update, add, remove, edit books virtually from the database, they will also have the feature of generating reports and checking on student fines, debts, books they’ve borrowed and/or downloaded virtually. 
Admins my generate as many reports as needed for any user by using their ID. 
Admins also have the availability of searching and borrowing books themselves. 
The reports will feature the users’/students’ basic information and a tracking system of all the books they’ve borrowed /returned. 

Students/users on the other hand, will have the possibility of searching for books, by title, ID and/or author.  
They will have the possibility of either ordering a book to their doorstep for borrowing books, thus having the possibility of viewing their order information. 
If students/users decide to borrow a book, a due date will be automatically generated for when they need to return the book.  And after the due date is expired a fine is also generated automatically. 
The students/users will be also able to generate a personal report, which will show only their own history of order information. For example, the report will show if a certain book has been returned, how much time it has left, or if it is expired how much the fine will cost. 
For creating this database, I have used Microsoft SQL Server Management Studio, for the E-R Diagram design I have used apps.diagrams.net and online service for creating diagrams (Diagrams.net, 2022)[1].

2. Documentation of tables
-USER Table:
•	user_id – Primary Key. Integer data type
•	user_name- varchar(50) data type 
•	user_surname- varchar(50) data type
•	user_email- varchar(50) data type
•	phone_number- varchar(50) data type
•	address- varchar(50) data type
•	is_active- BIT data type

-BOOK Table:
•	book_id- Primary Key. Integer data type
•	book_title- varchar(50) data type
•	copies_owned- Integer data type
•	category_id- Foreign Key. Integer data type
•	author_id- Foreign Key. Integer data type

-AUTHOR Table:
•	author_id- Primary Key. Integer data type
•	author_name- varchar(50) data type
•	author_surname- varchar(50) data type


-CATEGORY Table
•	category_id- Primary Key. Integer data type. 
•	category_name- varchar(50) data type


-ORDER Table:
•	order_id- Primary Key. Integer data type
•	user_id- Foreign Key.  Integer data type
•	order_date- datetime data type
•	return_date- datetime data typw
•	order_type- varchar(50) data type
•	book_id- Foreign Key. Integer data type

-FINE Table:
•	fine_id- Primary Key. Integer data type
•	user_id- Foreign Key.  Integer data type
•	order_id- Foreign Key.  Integer data type
•	book_id- Foreign Key.  Integer data type
•	fine_date- datetime data type
•	fine_amount- decimal data type 

-REPORT Table:
•	report_id- - Primary Key. Integer data type
•	user_id- Foreign Key.  Integer data type
•	book_id- Foreign Key.  Integer data type
•	report_date- datetime data type
•	fine_id- Foreign Key.  Integer data type
•	admin_id- Foreign Key.  Integer data type


