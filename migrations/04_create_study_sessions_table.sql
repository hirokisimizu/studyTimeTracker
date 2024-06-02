-- StudySessions Table
CREATE TABLE StudySessions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    study_item_id INT NOT NULL,
    duration INT NOT NULL,
    session_date DATE NOT NULL,
    start_time TIME NOT NULL,
    end_time TIME NOT NULL,
    FOREIGN KEY (study_item_id) REFERENCES StudyItems(id)
);