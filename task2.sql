-- Table1:School
CREATE TABLE `xworkz`.`school` (
  `student_rollno` INT NOT NULL AUTO_INCREMENT,
  `student_name` VARCHAR(45) NULL,
  `address` VARCHAR(45) NULL,
  `subject1` INT(10) NULL,
  `subject2` INT(10) NULL,
  `subject3` INT(10) NULL,
  `class` VARCHAR(10) NULL,
  `grade` VARCHAR(10) NULL,
  `gender` VARCHAR(10) NULL,
  PRIMARY KEY (`student_rollno`));

SELECT * FROM school;

insert into school values(01,'Allen','Bangalore',80,85,90,'10th','A','Male');
insert into school values(02,'Berry','Delhi',85,90,95,'9th','A','Male');
insert into school values(03,'Siri','Kolkatta',90,95,75,'11th','A','Female');
insert into school values(04,'Pooja','Mangalore',100,99,100,'Bcom','A','Female');
insert into school values(05,'Hari','Kerala',60,65,55,'BSC','B','Male');
insert into school values(06,'Sam','Bangalore',70,30,45,'10th','F','Male');
insert into school values(07,'Sandy','Andhra',55,45,35,'BBA','A','Male');
insert into school values(08,'Priya','Bangalore',80,85,90,'12th','A','Female');
insert into school values(09,'Riya','Assam',45,50,48,'BBA','B','Female');
insert into school values(10,'Kiran','Bangalore',80,85,90,'BCA','A','Male');

insert into school values(11,'Kaira','Mysore',85,75,60,'MCA','A','Female');
insert into school values(12,'Ashrith','Mangalore',90,100,100,'BCA','A','Male');
insert into school values(13,'Poornachandra','Chikmagaluru',55,50,45,'BBA','B','Male');
insert into school values(14,'Khyathi','Mumbai',75,85,90,'MCA','A','Female');
insert into school values(15,'Shruthi','Udupi',45,60,55,'12th','B','Female');

insert into school values(16,'Allen','Andhra',35,30,32,'10th','F','Male');
insert into school values(17,'Allen','Bangalore',80,85,90,'10th','A','Male');
insert into school values(18,'Amit Sharma', 'Maharashtra', 78, 85, 89, '10th', 'A', 'Male'),
(19,'Riya Verma', 'Karnataka', 88, 92, 87, '10th', 'A', 'Female'),
(20,'Suresh Gupta', 'Tamil Nadu', 69, 75, 71, '9th', 'B', 'Male'),
(21,'Priya Joshi', 'Rajasthan', 95, 94, 90, '12th', 'A', 'Female'),
(22,'Vikas Singh', 'Uttar Pradesh', 76, 80, 82, '11th', 'B', 'Male'),
(23,'Sneha Patil', 'Gujarat', 85, 88, 84, '9th', 'A', 'Female'),
(24,'Rahul Mehta', 'Madhya Pradesh', 78, 82, 80, '10th', 'B', 'Male'),
(25,'Anjali Kapoor', 'Delhi', 90, 89, 93, '12th', 'A', 'Female'),
(26,'Rajesh Kumar', 'Haryana', 65, 70, 72, '11th', 'C', 'Male'),
(27,'Neha Reddy', 'Telangana', 92, 88, 91, '9th', 'A', 'Female'),
(28,'Vivek Bhat', 'West Bengal', 74, 77, 79, '11th', 'B', 'Male'),
(29,'Meena Nair', 'Kerala', 89, 92, 94, '12th', 'A', 'Female'),
(30,'Abhishek Rao', 'Andhra Pradesh', 80, 83, 85, '10th', 'B', 'Male');

select * from school;

update school set student_name='Allen Square',subject1=65,subject2=60,subject3=55,grade='B' where student_rollno=1 ;

update school set address='AndhraPradesh' where student_name='Allen' and student_rollno=16;

UPDATE school  SET subject1 = 65, subject2 = 70, subject3 = 68 WHERE student_rollno = 2 AND gender = 'male';

update school set student_name='Kiran' where student_rollno=5;

select * from school where student_name='kiran';

SET SQL_SAFE_UPDATES = 0;

update school set grade='F',subject2=30 where address='Kerala' or student_name='kiran';

UPDATE school SET grade = 'A+' ,subject1=100,subject2=100,subject3=100 WHERE address = 'Mangalore' OR student_name = 'Pooja';

UPDATE school SET grade = 'B', subject1 = 55 WHERE student_rollno IN (1, 4, 7);

UPDATE school SET subject2 = 60 WHERE student_rollno IN (5, 9, 12) OR class = '10th';

update school set student_name='Allen Henry' where student_rollno=16 and address='andhrapradesh';

update school set subject1=45,grade='B' where student_rollno IN(17,18,19);

delete from school where address='Maharashtra';
delete from school where grade='c'and student_rollno=26;
delete from school where address='delhi' or student_rollno=30;

-- Table2:Books
CREATE TABLE books (
    book_id INT NOT NULL AUTO_INCREMENT,
    title VARCHAR(100) NOT NULL,
    author VARCHAR(100) NOT NULL,
    genre VARCHAR(50) NOT NULL,
    published_year INT(4) NOT NULL,
    price DECIMAL(5,2) NOT NULL,
    stock INT NOT NULL,
    publisher VARCHAR(100),
    language VARCHAR(50),
    pages INT NOT NULL,
    PRIMARY KEY (book_id)
);
 select * from books;
 INSERT INTO books (title, author, genre, published_year, price, stock, publisher, language, pages) 
VALUES 
('The Alchemist', 'Paulo Coelho', 'Fiction', 1988, 299.99, 20, 'HarperOne', 'English', 208),
('To Kill a Mockingbird', 'Harper Lee', 'Classics', 1960, 350.00, 15, 'J.B. Lippincott & Co.', 'English', 324),
('The Great Gatsby', 'F. Scott Fitzgerald', 'Classics', 1925, 249.50, 12, 'Charles Scribner\'s Sons', 'English', 180),
('1984', 'George Orwell', 'Dystopian', 1949, 399.99, 10, 'Secker & Warburg', 'English', 328),
('Sapiens', 'Yuval Noah Harari', 'Non-fiction', 2011, 450.00, 25, 'Harvill Secker', 'English', 512),
('Pride and Prejudice', 'Jane Austen', 'Romance', 1813, 299.99, 18, 'T. Egerton', 'English', 279),
('The Catcher in the Rye', 'J.D. Salinger', 'Classics', 1951, 299.00, 20, 'Little, Brown and Company', 'English', 214),
('Moby Dick', 'Herman Melville', 'Adventure', 1851, 399.00, 12, 'Richard Bentley', 'English', 635),
('The Hobbit', 'J.R.R. Tolkien', 'Fantasy', 1937, 499.99, 25, 'George Allen & Unwin', 'English', 310),
('The Road', 'Cormac McCarthy', 'Post-apocalyptic', 2006, 350.00, 15, 'Knopf', 'English', 287),
('Fahrenheit 451', 'Ray Bradbury', 'Dystopian', 1953, 280.00, 18, 'Ballantine Books', 'English', 158),
('Brave New World', 'Aldous Huxley', 'Dystopian', 1932, 320.00, 12, 'Chatto & Windus', 'English', 311),
('The Book Thief', 'Markus Zusak', 'Historical Fiction', 2005, 399.99, 15, 'Picador', 'English', 552),
('Animal Farm', 'George Orwell', 'Satire', 1945, 199.99, 20, 'Secker & Warburg', 'English', 112),
('Crime and Punishment', 'Fyodor Dostoevsky', 'Classics', 1866, 349.99, 10, 'The Russian Messenger', 'English', 671),
('War and Peace', 'Leo Tolstoy', 'Historical Fiction', 1869, 500.00, 8, 'The Russian Messenger', 'English', 1225),
('The Kite Runner', 'Khaled Hosseini', 'Drama', 2003, 350.00, 18, 'Riverhead Books', 'English', 372),
('Life of Pi', 'Yann Martel', 'Adventure', 2001, 299.99, 20, 'Knopf Canada', 'English', 319),
('The Da Vinci Code', 'Dan Brown', 'Thriller', 2003, 450.00, 22, 'Doubleday', 'English', 454),
('The Shining', 'Stephen King', 'Horror', 1977, 399.99, 15, 'Doubleday', 'English', 447),
('Gone Girl', 'Gillian Flynn', 'Thriller', 2012, 399.99, 10, 'Crown Publishing Group', 'English', 432),
('The Girl on the Train', 'Paula Hawkins', 'Thriller', 2015, 299.99, 12, 'Riverhead Books', 'English', 395),
('The Hunger Games', 'Suzanne Collins', 'Dystopian', 2008, 350.00, 25, 'Scholastic', 'English', 374),
('Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling', 'Fantasy', 1997, 499.99, 30, 'Bloomsbury', 'English', 309),
('The Maze Runner', 'James Dashner', 'Dystopian', 2009, 299.99, 18, 'Delacorte Press', 'English', 375),
('The Fault in Our Stars', 'John Green', 'Young Adult', 2012, 299.99, 20, 'Dutton Books', 'English', 313),
('Percy Jackson and the Olympians: The Lightning Thief', 'Rick Riordan', 'Fantasy', 2005, 299.99, 22, 'Disney-Hyperion', 'English', 377),
('The Outsiders', 'S.E. Hinton', 'Young Adult', 1967, 250.00, 15, 'Viking Press', 'English', 192),
('Twilight', 'Stephenie Meyer', 'Romance', 2005, 349.99, 18, 'Little, Brown and Company', 'English', 498),
('Divergent', 'Veronica Roth', 'Dystopian', 2011, 350.00, 20, 'Katherine Tegen Books', 'English', 487);

-- Using AND 
UPDATE books  SET price = 499.99, stock = 30 WHERE genre = 'Fiction' AND published_year =1988;
select * from books where genre = 'Fiction' ;

-- Using OR
UPDATE books SET language = 'Spanish' WHERE title = 'Sapiens' OR price <300;
select * from books where title = 'Sapiens' OR price <300;

-- Using IN 
UPDATE books SET stock = 25 WHERE book_id IN (1, 3, 5);
select * from books where book_id IN (1, 3, 5);

-- Using DELETE
DELETE FROM books WHERE book_id IN (2, 4, 5);

select * from books;

-- Table3:Employee
CREATE TABLE employees (
    employee_id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    department VARCHAR(100) NOT NULL,
    job_title VARCHAR(100) NOT NULL,
    hire_date DATE NOT NULL,
    salary DECIMAL(8,2) NOT NULL,
    email VARCHAR(100),
    phone_number VARCHAR(15),
    address VARCHAR(150),
    PRIMARY KEY (employee_id)
);

select * from employees;

INSERT INTO employees (first_name, last_name, department, job_title, hire_date, salary, email, phone_number, address)
VALUES 
('John', 'Doe', 'IT', 'Software Engineer', '2021-03-15', 75000.00, 'john.doe@company.com', '123-456-7890', '123 Street, City, Country'),
('Emily', 'Smith', 'HR', 'HR Manager', '2020-06-10', 68000.00, 'emily.smith@company.com', '987-654-3210', '456 Avenue, City, Country'),
('Michael', 'Brown', 'Finance', 'Accountant', '2019-09-25', 62000.00, 'michael.brown@company.com', '345-678-1234', '789 Blvd, City, Country'),
('Sophia', 'Johnson', 'Marketing', 'Marketing Executive', '2022-01-02', 58000.00, 'sophia.johnson@company.com', '654-321-9870', '321 Drive, City, Country'),
('David', 'Wilson', 'IT', 'Network Administrator', '2018-07-30', 72000.00, 'david.wilson@company.com', '123-456-0987', '987 Park, City, Country'),
('Linda', 'Taylor', 'Sales', 'Sales Manager', '2020-02-15', 69000.00, 'linda.taylor@company.com', '876-543-2109', '123 Elm St, City, Country'),
('James', 'Lee', 'IT', 'System Administrator', '2021-08-17', 70000.00, 'james.lee@company.com', '456-789-0123', '456 Oak Ave, City, Country'),
('Olivia', 'Moore', 'Finance', 'Financial Analyst', '2019-11-03', 65000.00, 'olivia.moore@company.com', '234-567-8901', '567 Cedar Rd, City, Country'),
('Liam', 'Martin', 'Marketing', 'SEO Specialist', '2023-03-14', 56000.00, 'liam.martin@company.com', '789-654-3210', '789 Pine St, City, Country'),
('Emma', 'Clark', 'HR', 'Recruitment Specialist', '2022-05-20', 61000.00, 'emma.clark@company.com', '890-123-4567', '456 Birch Dr, City, Country'),
('Noah', 'Garcia', 'IT', 'Software Developer', '2020-12-15', 78000.00, 'noah.garcia@company.com', '345-678-9012', '789 Maple St, City, Country'),
('Isabella', 'Martinez', 'Finance', 'Senior Accountant', '2017-10-23', 64000.00, 'isabella.martinez@company.com', '123-987-6540', '987 Willow Dr, City, Country'),
('Lucas', 'Rodriguez', 'Sales', 'Sales Executive', '2021-09-01', 55000.00, 'lucas.rodriguez@company.com', '765-432-1098', '654 Walnut St, City, Country'),
('Ava', 'Martinez', 'HR', 'Training Coordinator', '2019-08-21', 60000.00, 'ava.martinez@company.com', '543-210-9876', '321 Spruce St, City, Country'),
('Mason', 'Lopez', 'IT', 'Data Analyst', '2020-04-18', 71000.00, 'mason.lopez@company.com', '432-109-8765', '432 Fir Ave, City, Country'),
('Mia', 'Harris', 'Finance', 'Auditor', '2018-07-05', 63000.00, 'mia.harris@company.com', '210-987-6543', '876 Sycamore Rd, City, Country'),
('Ethan', 'Young', 'Marketing', 'Content Creator', '2022-11-19', 59000.00, 'ethan.young@company.com', '109-876-5432', '654 Chestnut Dr, City, Country'),
('Amelia', 'King', 'Sales', 'Sales Representative', '2023-01-07', 57000.00, 'amelia.king@company.com', '345-678-4321', '321 Ash St, City, Country'),
('William', 'Scott', 'Finance', 'Tax Consultant', '2018-03-26', 66000.00, 'william.scott@company.com', '678-543-2101', '876 Palm Ave, City, Country'),
('Sophia', 'Hill', 'Marketing', 'Social Media Manager', '2021-07-11', 60000.00, 'sophia.hill@company.com', '210-654-9873', '432 Cypress St, City, Country'),
('Oliver', 'Baker', 'IT', 'Technical Support Specialist', '2020-06-08', 69000.00, 'oliver.baker@company.com', '123-456-7890', '123 Elm St, City, Country'),
('Ella', 'Mitchell', 'Sales', 'Sales Coordinator', '2023-09-29', 58000.00, 'ella.mitchell@company.com', '234-567-8901', '789 Pine St, City, Country'),
('Henry', 'Perez', 'IT', 'Network Engineer', '2019-10-20', 72000.00, 'henry.perez@company.com', '345-678-9012', '456 Oak Ave, City, Country'),
('Aiden', 'Carter', 'Finance', 'Investment Analyst', '2017-12-12', 64000.00, 'aiden.carter@company.com', '876-543-2109', '567 Cedar Rd, City, Country'),
('Charlotte', 'Diaz', 'HR', 'HR Coordinator', '2021-02-28', 62000.00, 'charlotte.diaz@company.com', '789-654-3210', '987 Willow Dr, City, Country'),
('Benjamin', 'Reed', 'IT', 'Cloud Engineer', '2022-10-15', 75000.00, 'benjamin.reed@company.com', '765-432-1098', '321 Spruce St, City, Country'),
('Evelyn', 'Gray', 'Sales', 'Sales Manager', '2023-05-03', 70000.00, 'evelyn.gray@company.com', '543-210-9876', '654 Walnut St, City, Country'),
('Alexander', 'Hughes', 'Marketing', 'Graphic Designer', '2021-06-01', 58000.00, 'alexander.hughes@company.com', '345-678-4321', '432 Fir Ave, City, Country'),
('Avery', 'Ross', 'Finance', 'Credit Analyst', '2020-09-15', 66000.00, 'avery.ross@company.com', '210-987-6543', '876 Sycamore Rd, City, Country'),
('Jacob', 'Rogers', 'HR', 'Compensation Analyst', '2019-03-11', 64000.00, 'jacob.rogers@company.com', '109-876-5432', '654 Chestnut Dr, City, Country');

-- Using AND
UPDATE employees SET salary = 80000, department = 'Engineering' WHERE job_title = 'Software Engineer' AND hire_date > '2021-01-01';

select * from employees where job_title = 'Software Engineer' AND hire_date > '2021-01-01';

-- Using OR
UPDATE employees SET salary = 70000 WHERE department = 'HR' OR job_title = 'Network Administrator';

select * from employees where department = 'HR' OR job_title = 'Network Administrator';

-- Using IN
UPDATE employees SET department = 'Operations' WHERE employee_id IN (2, 4);

select * from employees where employee_id IN (2, 4);

-- using DELETE
DELETE FROM employees WHERE employee_id IN (1, 3, 5);

select * from employees;
















