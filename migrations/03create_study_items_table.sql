CREATE Table study_items (
    id INT AUTO_INCREMENT PRIMARY KEY,
    goal_id INT NOT NULL,
    title VARCHAR(255) NOT NULL,
    description text,
    Foreign Key (goal_id) REFERENCES goals(id)
);