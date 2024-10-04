-- Create database
CREATE DATABASE StudentManagement;
USE StudentManagement;

-- Create Students table
CREATE TABLE Students (
    StudentID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    PhoneNumber VARCHAR(15),
    DateOfBirth DATE,
    RegistrationDate DATE
);

-- Create Courses table
CREATE TABLE Courses (
    CourseID INT PRIMARY KEY AUTO_INCREMENT,
    CourseName VARCHAR(100),
    CourseCode VARCHAR(20),
    Credits INT
);

-- Create Enrollments table
CREATE TABLE Enrollments (
    EnrollmentID INT PRIMARY KEY AUTO_INCREMENT,
    StudentID INT,
    CourseID INT,
    EnrollmentDate DATE,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);

-- Create Grades table
CREATE TABLE Grades (
    GradeID INT PRIMARY KEY AUTO_INCREMENT,
    StudentID INT,
    CourseID INT,
    Grade CHAR(2),
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);

-- Sample Data Insertion
INSERT INTO Students (FirstName, LastName, Email, PhoneNumber, DateOfBirth, RegistrationDate)
VALUES ('Alice', 'Johnson', 'alice.johnson@example.com', '1234567890', '2000-05-15', '2023-09-01'),
       ('Bob', 'Smith', 'bob.smith@example.com', '0987654321', '1998-11-22', '2023-09-01');

INSERT INTO Courses (CourseName, CourseCode, Credits)
VALUES ('Database Systems', 'CS101', 3),
       ('Web Development', 'CS102', 4);

INSERT INTO Enrollments (StudentID, CourseID, EnrollmentDate)
VALUES (1, 1, '2023-09-10'),
       (2, 2, '2023-09-10');

INSERT INTO Grades (StudentID, CourseID, Grade)
VALUES (1, 1, 'A'),
       (2, 2, 'B');
