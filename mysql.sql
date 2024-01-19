use demo;
CREATE TABLE books (
    author_id INT PRIMARY KEY AUTO_INCREMENT,
    author_name VARCHAR(200),
    book_name VARCHAR(200),
    publication_year INT,
    genre VARCHAR(100),
    language VARCHAR(50),
    pages INT,
    publisher VARCHAR(150),
    price DECIMAL(8,2),
    publication_date DATE
);

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(255),
    ContactName VARCHAR(255),
    Country VARCHAR(255)
);

INSERT INTO Customers (CustomerID, CustomerName, ContactName, Country)
VALUES
(1, 'Alfreds Futterkiste', 'Maria Anders', 'Germany'),
(2, 'Ana Trujillo Emparedados y helados', 'Ana Trujillo', 'Mexico'),
(3, 'Antonio Moreno Taquería', 'Antonio Moreno', 'Mexico');


CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

INSERT INTO Orders (OrderID, CustomerID, OrderDate)
VALUES
(10308, 2, '1996-09-18'),
(10309, 3, '1996-09-19'),
(10310, 1, '1996-09-20');

INSERT INTO books (author_name, book_name, publication_year, genre, language, pages, publisher, price, publication_date)
VALUES
    ('Author1', 'Book1', 2005, 'Fiction', 'English', 320, 'Publisher1', 29.99, '2005-08-15'),
    ('Author2', 'Book2', 2010, 'Mystery', 'English', 400, 'Publisher2', 39.99, '2010-03-22'),
    ('Author3', 'Book3', 2018, 'Science Fiction', 'English', 280, 'Publisher3', 24.99, '2018-11-10'),
    ('Author4', 'Book4', 2008, 'Thriller', 'Spanish', 350, 'Publisher4', 33.50, '2008-06-30'),
    ('Author5', 'Book5', 2015, 'Romance', 'French', 250, 'Publisher5', 19.99, '2015-09-05'),
    ('Author6', 'Book6', 2003, 'Historical Fiction', 'English', 480, 'Publisher6', 44.99, '2003-12-18'),
    ('Author7', 'Book7', 2019, 'Fantasy', 'German', 320, 'Publisher7', 29.99, '2019-07-03'),
    ('Author8', 'Book8', 2012, 'Non-Fiction', 'English', 300, 'Publisher8', 27.50, '2012-02-14'),
    ('Author9', 'Book9', 2006, 'Biography', 'English', 350, 'Publisher9', 31.75, '2006-10-20'),
    ('Author10', 'Book10', 2017, 'Self-Help', 'English', 200, 'Publisher10', 14.99, '2017-04-08');
    
    INSERT INTO books (author_name, book_name, publication_year, genre, language, pages, publisher, price, publication_date)
    VALUES ('LEO TOLSTOY', 'ANNA KARANINA', 2022, 'FICTION', 'English', 200, 'Publisher10', 14.99, '2022-04-08');
	INSERT INTO books (author_name, book_name, publication_year, genre, language, pages, publisher, price, publication_date)
    VALUES ('SYLVIA PLATH', 'BELL JAR', 2021, 'FICTION', 'English', 200, 'Publisher10', 14.99, '2021-04-08');
    
  
    -- current year and fusion of AND and OR
    
    select author_name from books where publication_year >= YEAR(NOW())-4 and (language = "french" OR language = "english");
    
  
    select book_name from books where price not between 20 and 30; 
    
    
    -- UPDATE statement 

    update books 
    set author_name = "JANE AUSTEN"
    where author_name = "Author1";
    
    SET SQL_SAFE_UPDATES = 0;
    
    -- limit clause
    select * from books limit 5;
    select book_name from books where author_name like "A%" limit 2;
    select * from books order by author_name DESC limit 4;
    
    -- MIN MAX Functions
    select MIN(price) as cheapest_book from books;
    
    -- count function
    select count(book_name) from books where price > 20;
    
    -- sum function sums up the numeric column
    select sum(price) from books where author_name like 'A%';

	-- avg function
    select * from books where price > (select avg(price) from books);
    
    -- Like operator
    select book_name from books where author_name like '_a%'; -- second letter is a 
    select book_name from books where author_name like '%or%'; -- contains the phrase or
    select book_name from books where author_name like '%y'; -- ends with y
    select book_name from books where author_name like 'au%'; -- starts with au
    select book_name from books where author_name like 'j%n'; -- starts with j ends with n
    select book_name from books where author_name like '[ajn]%'; -- names starting with j or n 
    select book_name from books where author_name like '[a-m]%'; -- names starting with a ranging upto m
    
    -- In operator: is a shorthand for multiple OR conditions
    select author_name from books where lanugage not in(english,spanish);
    
    -- Return all customers that have NOT placed any orders in the Orders table:
    select * from customers where customerId not in (select customerId from orders);
    
    -- between operator
    select * from books where price between 20 and 30 
    and author_id in (1,2);
    
    -- second highest price
    select price from books where price < (select MAX(price) from books) order by price desc limit 1; 
    -- (select price from books where price < max(price) order by price desc limit 1);

    -- odd even check
    select id, movie, description, rating from Cinema where MOD(id,2)!=0
    AND not  description = "boring" order by rating desc;

    -- group by
    select genre, count(genre) as total_books from books group by genre;

     -- stored procedure 
    -- creating a procedure
    DELIMITER //

    CREATE PROCEDURE GetAll()
    BEGIN
    SELECT * FROM books;
    END //

    DELIMITER ;
    
    -- calling a procedure
    call GetAll();
    
    -- creating procedure with arguments 
    
    DELIMITER //
    
    CREATE PROCEDURE getBooks(IN genreName varchar(30))
    BEGIN
    SELECT * FROM books where genre = genreName;
    END //
    
    DELIMITER ;
    
    -- calling parameterized procedure 
    call getBooks('fiction');
    
    -- deleting a procedure
    DROP PROCEDURE IF EXISTS getAllT;

     -- TO know user in the system along with the host
    select SYSTEM_USER();
    
    -- creating views 
    create view Eng_books as
    select Author_name, book_name, genre from books where language = 'English';
    
    -- using view
    select * from Eng_books;
    
   -- creating a procedure with output parameters
   DELIMITER //

   CREATE PROCEDURE inpout(IN id INT, OUT name VARCHAR(30))
   BEGIN
   SELECT Author_name INTO name FROM books WHERE Author_id = id;
   END //

   DELIMITER ;
   
   set @aName = '';
   
   call inpout(1,@aName);
   
   select @aName;

   -- Index, index is a data structure that keeps a reference to the column indexing makes retreival of data 
   -- from a table columns fast, but keep in mind that updation on indexed colums take more time so
   -- only create index for the columns that need to be searched frequently
   -- An index is a data structure that provides a quick reference to the rows in a table based on the values in one or more columns. 
   -- Think of an index as an ordered list of values, much like the index at the end of a book that helps you find information quickly.
   

   -- indexing
   create INDEX myIndex on books(genre);
   create INDEX myIndex on books(language, Author_name);