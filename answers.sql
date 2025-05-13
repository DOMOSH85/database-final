-- Create Database
CREATE DATABASE StudentRecords;
USE StudentRecords;

-- Create Student Table
CREATE TABLE Student (
    StudentID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DOB DATE,
    Email VARCHAR(100)
);

-- Create Course Table
CREATE TABLE Course (
    CourseID INT PRIMARY KEY AUTO_INCREMENT,
    CourseName VARCHAR(100),
    CourseCode VARCHAR(10)
);

-- Create Enrollment Table
CREATE TABLE Enrollment (
    EnrollmentID INT PRIMARY KEY AUTO_INCREMENT,
    StudentID INT,
    CourseID INT,
    EnrollmentDate DATE,
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Course(CourseID)
);

-- Create Grade Table
CREATE TABLE Grade (
    GradeID INT PRIMARY KEY AUTO_INCREMENT,
    EnrollmentID INT,
    Grade CHAR(2),
    FOREIGN KEY (EnrollmentID) REFERENCES Enrollment(EnrollmentID)
);

-- Insert Sample Data into Student Table
INSERT INTO Student (FirstName, LastName, DOB, Email) VALUES
('John', 'Doe', '2000-05-15', 'john.doe@example.com'),
('Jane', 'Smith', '2001-07-20', 'jane.smith@example.com'),
('Alice', 'Johnson', '1999-03-30', 'alice.johnson@example.com');

-- Insert Sample Data into Course Table
INSERT INTO Course (CourseName, CourseCode) VALUES
('Introduction to Programming', 'CS101'),
('Database Systems', 'CS102'),
('Data Structures', 'CS103');

-- Insert Sample Data into Enrollment Table
INSERT INTO Enrollment (StudentID, CourseID, EnrollmentDate) VALUES
(1, 1, '2023-08-01'),
(1, 2, '2023-08-01'),
(2, 1, '2023-08-01'),
(3, 3, '2023-08-01');

-- Insert Sample Data into Grade Table
INSERT INTO Grade (EnrollmentID, Grade) VALUES
(1, 'A'),
(2, 'B'),
(3, 'A'),
(4, 'C');


