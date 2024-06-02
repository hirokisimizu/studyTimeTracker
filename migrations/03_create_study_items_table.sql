-- StudyItems Table
CREATE TABLE StudyItems (
    id INT AUTO_INCREMENT PRIMARY KEY,
    goal_id INT NOT NULL,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    weight INT,
    FOREIGN KEY (goal_id) REFERENCES Goals(id)
);