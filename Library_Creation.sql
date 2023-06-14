--CREATE TABLE [user] 
--(
--[user_id] [int] NOT NULL PRIMARY KEY,
--[user_name] [varchar](50) NOT NULL,
--[user_surname] [varchar](50),
--[user_email] [varchar](50) NOT NULL,
--[phone_number] [varchar](50),
--[address] [varchar](50), 
--[is_active] [BIT]
--)



--CREATE TABLE [order]
--(
--[order_id] [int] NOT NULL, 
--[user_id] [int] NOT NULL,
--[book_id] [int] NOT NULL, 
--[order_date] [datetime],
--[return_date] [datetime],
--[order_type] [varchar](50),
--FOREIGN KEY (user_id) REFERENCES [user](user_id),
--FOREIGN KEY (book_id) REFERENCES [book](book_id),
--PRIMARY KEY (order_id)
--);

--ALTER TABLE [order]
----ADD [book_id] [int];
--ADD FOREIGN KEY (book_id) REFERENCES [book](book_id);


--CREATE TABLE [book]
--(
--[book_id] [int] NOT NULL PRIMARY KEY, 
--[book_title] [varchar](50) NOT NULL,
--[copies_owned] [int],
----category_id
----author_id
--);
--ALTER TABLE [book]
--ADD [author_id] [int];
--ADD FOREIGN KEY (author_id) REFERENCES [author](author_id);


--CREATE TABLE [category]
--(
--  [category_id] [int] NOT NULL PRIMARY KEY,
--  [category_name] [varchar](50) NOT NULL
--);


--CREATE TABLE [author]
--(
--  [author_id] [int] NOT NULL PRIMARY KEY,
--  [author_name] [varchar](50),
--  [author_surname] [varchar](50)
--);

--CREATE TABLE [admin]
--(
--[admin_id] [int] NOT NULL PRIMARY KEY, 
--[admin_name] [varchar](30) NOT NULL,
--[admin_surname] [varchar](30) NOT NULL,
--[admin_email] [varchar] (50) NOT NULL,
--[phone_number] [varchar] (50),
--[is_active] [BIT]
--);

--CREATE TABLE [report]
--(
--[report_id][int] NOT NULL PRIMARY KEY,
--[user_id][int] NOT NULL,
--[book_id][int] NOT NULL,
--[report_date] [datetime],
--FOREIGN KEY (user_id) REFERENCES [user](user_id),
--FOREIGN KEY (book_id) REFERENCES [book](book_id)
----fine_id



--ALTER TABLE [report]
----ADD [admin_id][int];
--ADD FOREIGN KEY (admin_id) REFERENCES [admin](admin_id);
----ADD [fine_id][int] NOT NULL;
--ADD FOREIGN KEY (fine_id) REFERENCES [fine](fine_id);



--CREATE TABLE [fine]
--(
--[fine_id][int] NOT NULL PRIMARY KEY,
--[user_id][int] NOT NULL,
--[order_id][int] NOT NULL,
--[book_id][int] NOT NULL,
--[fine_date][datetime],
--[fine_amount][decimal](4,2),
--FOREIGN KEY (user_id) REFERENCES [user](user_id),
--FOREIGN KEY (order_id) REFERENCES [order](order_id),
--FOREIGN KEY (book_id) REFERENCES [book](book_id)
--);
