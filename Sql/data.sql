USE LibraryManagement;

INSERT INTO Accounts (first_name, last_name, email, gender, phone, dateOfBirth, address, role, password) 
VALUES 
('Minh', 'Pham', 'minh@gmail.com', 'M', '111222333', '2000-09-20', 'Ha Noi', 'admin', 'pass123'),
('Emily', 'Brown', 'emily.brown@example.com', 'F', '444555666', '1991-04-12', '567 Pine St, Town', 'user', 'pass456'),
('David', 'Martinez', 'david.martinez@example.com', 'M', '777888999', '1978-12-05', '321 Cedar St, City', 'user', 'pass789'),
('Sarah', 'Wilson', 'sarah.wilson@example.com', 'F', '666777888', '1983-07-30', '987 Maple St, Village', 'user', 'pass101112'),
('Christopher', 'Taylor', 'christopher.taylor@example.com', 'M', '999000111', '1980-03-18', '654 Oak St, Town', 'user', 'pass131415');


INSERT INTO Authors (author_lname, author_fname, dateOfBirth, death) 
VALUES 
('Martin', 'George R.R.', '1948-09-20', NULL),
('King', 'Stephen', '1947-09-21', NULL),
('Austen', 'Jane', '1775-12-16', '1817-07-18'),
('Orwell', 'George', '1903-06-25', '1950-01-21'),
('Hemingway', 'Ernest', '1899-07-21', '1961-07-02');


INSERT INTO Books (title, publisher, quantity, released_year, pages, status, genre, author_id) 
VALUES 
('A Game of Thrones', 'Bantam Books', 80, 1996, 694, 'Available', 'Fantasy', 3),
('The Shining', 'Doubleday', 60, 1977, 447, 'Available', 'Horror', 4),
('Pride and Prejudice', 'T. Egerton, Whitehall', 50, 1813, 279, 'Available', 'Romance', 5),
('1984', 'Secker & Warburg', 70, 1949, 328, 'Available', 'Dystopian', 6),
('The Old Man and the Sea', 'Charles Scribner's Sons', 65, 1952, 127, 'Available', 'Literary Fiction', 7);


INSERT INTO Borrows (account_id, book_id, borrow_date, status) 
VALUES 
(3, 1, '2023-03-20', 'Borrowed'),
(4, 2, '2023-04-25', 'Borrowed'),
(5, 3, '2023-05-30', 'Borrowed'),
(1, 4, '2023-06-15', 'Borrowed'),
(2, 5, '2023-07-10', 'Borrowed');
