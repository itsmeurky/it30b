-- #1 students table
CREATE TABLE IF NOT EXIST students(
    --primary key for the studet table
    student_id INT PRIMARY KEY AUTO_INCREMENT,

    --student name
    student_first_name VARCHAR(50) NOT NULL,
    student_last_name VARCHAR(50) NOT NULL,

    --studet course
    student_course VARCHAR(50) NOT NULL,

    --student create timestamp
    student_created_at TIMESTAMP NOT NULL
    DEFAULT CURRENT_TIMESTAMP

)ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_general_ci;

--#2 book table
CREATE TABLE IF NOT EXISTS boks(
    --primary key for the book table
    book_id INT PRIMARY KEY AUTO_INCREMENT,

    --book details
    book_title VARCHAR(100) NOT NULL,
    book_author VARCHAR(100) NOT NULL,
    book_category VARCHAR(100) NOT NULL,

    --book created at imestamp
    book_created_at TIMESTAMP NOT NULL
    DEFAULT CURRENT_TIMESTAMP

)ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_general_ci;

--#3 borrow table
CREATE TABLE IF NOT EXISTS borrow(
    --primary key for the borrow table
    borrow_id INT AUTO_INCREMENT PRIMARY KEY,

    --foreign key reference
    student_id INT NOT NULL,
    bok_id INT NOT NULL,

    --borrow timestamp not null by default
    borrrow_date TIMESTAMP NULL
    DEFAULT CURRENT_TIMESTAMP,

    --borrow return timestamp null by default
     borrrow_return_date TIMESTAMP NULL
    DEFAULT NULL,

    --borrow table constraints and foreign keys
    CONSTRAINT fk_borrow_student
    FOREIGN KEY (student_id)
    REFERENCES students(student_id)
    ON UPDATE CASCADE
    ON DELETE RESTRICT,

     CONSTRAINT fk_borrow_book
    FOREIGN KEY (book_id)
    REFERENCES students(book_id)
    ON UPDATE CASCADE
    ON DELETE RESTRICT,


)ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_general_ci;

--insert statement #1: insert students
INSERT INTO students(
    student_first_name,
    student_last_name,
    student_course
)VALUES
('Mikay', 'Renojo', 'BEED'),
('Lovely', 'Dairo', 'BSBA'),
('Dave', 'Tangs', 'BSIT'),
('Mey', 'divino', 'BSED');

--insert statement #1: insert books
INSERT INTO books(
    book_title,
    book_author,
    book_category,
)VALUES
('Traped', 'Jonaxx', 'Romcom')
('Why do you hate me', 'Jonaxx', 'Ation')
('One rebellios night', 'Jonaxx', 'Romcom');
--insert statement #3 insert borrow
INSERT INTO borrow(
    student_id,
    book_id
)VALUES
(1,2),
(2,1),
(3,3);
