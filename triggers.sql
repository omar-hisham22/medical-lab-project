-- Trigger: Automatically log the insertion of a new test result
DELIMITER //

CREATE TRIGGER log_test_result_insert
AFTER INSERT ON TestResult
FOR EACH ROW
BEGIN
    INSERT INTO TestLog (ResultID, LogMessage, LogDate)
    VALUES (NEW.ResultID, CONCAT('Test Result Added for Patient ID: ', NEW.PatientID), NOW());
END //

DELIMITER ;

-- Also create the TestLog table
CREATE TABLE IF NOT EXISTS TestLog (
    LogID INT PRIMARY KEY AUTO_INCREMENT,
    ResultID INT,
    LogMessage TEXT,
    LogDate DATETIME,
    FOREIGN KEY (ResultID) REFERENCES TestResult(ResultID)
);