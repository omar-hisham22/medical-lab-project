CREATE DATABASE IF NOT EXISTS MedicalLabDB;
USE MedicalLabDB;

CREATE TABLE IF NOT EXISTS Laboratorian (
    LaboratorianID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Phone VARCHAR(20),
    Address VARCHAR(200)
);

CREATE TABLE IF NOT EXISTS Patient (
    PatientID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Phone VARCHAR(20),
    Address VARCHAR(200),
    BirthDate DATE,
    Job VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS Component (
    ComponentID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    AvailableQuantity INT NOT NULL,
    MinimumQuantity INT NOT NULL
);

CREATE TABLE IF NOT EXISTS MedicalTest (
    TestID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Price FLOAT NOT NULL
);

CREATE TABLE IF NOT EXISTS TestComponent (
    TestID INT,
    ComponentID INT,
    PRIMARY KEY (TestID, ComponentID),
    FOREIGN KEY (TestID) REFERENCES MedicalTest(TestID),
    FOREIGN KEY (ComponentID) REFERENCES Component(ComponentID)
);

CREATE TABLE IF NOT EXISTS TestResult (
    ResultID INT PRIMARY KEY AUTO_INCREMENT,
    TestID INT,
    PatientID INT,
    LaboratorianID INT,
    TestDate DATE NOT NULL,
    Result TEXT,
    FOREIGN KEY (TestID) REFERENCES MedicalTest(TestID),
    FOREIGN KEY (PatientID) REFERENCES Patient(PatientID),
    FOREIGN KEY (LaboratorianID) REFERENCES Laboratorian(LaboratorianID)
);