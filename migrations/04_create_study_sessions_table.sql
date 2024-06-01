CREATE TABLE study_sessions_table (
    id INT AUTO_INCREMENT PRIMARY KEY,
    study_item_id INT NOT NULL,
    start_time datetime NOT NULL,
    end_time datetime NOT NULL,
    Foreign Key (study_item_id) REFERENCES study_items(id)
);