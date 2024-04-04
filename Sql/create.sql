CREATE DATABASE LibraryManagement;
USE LibraryManagement;
CREATE TABLE Accounts(
    account_id INT PRIMARY KEY IDENTITY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    email VARCHAR(50) NOT NULL UNIQUE,
    gender CHAR(1) NOT NULL CHECK (gender IN ('M', 'F')), 
    phone VARCHAR(25) NOT NULL,
    dateOfBirth DATE NOT NULL,
    address VARCHAR(250),
    role CHAR(5) NOT NULL CHECK (role IN ('admin', 'user')),
    active INT NOT NULL DEFAULT 1,
    password VARCHAR(50) NOT NULL
);
CREATE TABLE Authors (
    author_id INT PRIMARY KEY IDENTITY,
    author_lname VARCHAR(30) NOT NULL,
    author_fname VARCHAR(30) NOT NULL,
    dateOfBirth DATE,
    death DATE
);
CREATE TABLE Books (
    book_id INT PRIMARY KEY IDENTITY,
    title VARCHAR(100) NOT NULL,
    publisher VARCHAR(50) NOT NULL,
    quantity TINYINT NOT NULL,
    released_year SMALLINT NOT NULL,
    pages SMALLINT,
    status VARCHAR(100),
    genre VARCHAR(50),
	author_id INT,
	FOREIGN KEY(author_id) REFERENCES Authors(author_id)

);

CREATE TABLE Borrows(
	borrow_id INT PRIMARY KEY IDENTITY,
	account_id INT NOT NULL,
	book_id INT NOT NULL,
	FOREIGN KEY (account_id) REFERENCES Accounts(account_id),
	FOREIGN KEY (book_id) REFERENCES Books(book_id),
	borrow_date DATE NOT NULL,
	return_date DATE,
	status VARCHAR(50)
)