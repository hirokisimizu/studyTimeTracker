## Database Design

### Users Table
Stores user information.

| Column Name | Data Type | Description                |
|-------------|-----------|----------------------------|
| id          | INT       | Primary key, auto-increment|
| username    | VARCHAR   | Username                   |
| email       | VARCHAR   | User's email address       |
| password    | VARCHAR   | Hashed password            |

### Goals Table
Stores the different goal categories set by the user.

| Column Name  | Data Type | Description                            |
|--------------|-----------|----------------------------------------|
| id           | INT       | Primary key, auto-increment            |
| user_id      | INT       | Foreign key to Users table id          |
| title        | VARCHAR   | Title of the goal category             |
| description  | TEXT      | Detailed description of the goal       |

### StudyItems Table
Records the study items that a user inputs under each goal category.

| Column Name  | Data Type | Description                              |
|--------------|-----------|------------------------------------------|
| id           | INT       | Primary key, auto-increment              |
| goal_id      | INT       | Foreign key to Goals table id            |
| title        | VARCHAR   | Title of the study item                  |
| description  | TEXT      | Detailed description of the study item   |
| weight       | INT       | Weight of the study item (impact on goal)|

### StudySessions Table
Logs specific study times for each study item.

| Column Name  | Data Type | Description                        |
|--------------|-----------|------------------------------------|
| id           | INT       | Primary key, auto-increment        |
| study_item_id| INT       | Foreign key to StudyItems table id |
| duration     | INT       | Study duration in minutes          |
| session_date | DATE      | Date of study session              |

### Relational Database Design
- The **Users** table has a one-to-many relationship with the **Goals** table. One user can set multiple goal categories.
- The **Goals** table has a one-to-many relationship with the **StudyItems** table. One goal can have multiple study items.
- The **StudyItems** table has a one-to-many relationship with the **StudySessions** table. One study item can have multiple study sessions recorded.

### 追記・修正・改善
- 勤怠アプリみたいにボタンで学習スタートと学習終わりを登録できる（登録し忘れた時のために手動で変更もできる）
- 


# What is Your Main Goal - Study Time Tracker

## Overview
**What is Your Main Goal** is a single-page application that allows users to record and visually track their efforts towards achieving their study goals. Users can log their study activities and time spent, and assess how their actions impact their goals through weighted contributions.

## Features
- **Log Study Items and Time**: Users can record their daily study activities.
- **Weight Activities**: Assign weights to each study activity to see how much it contributes to achieving goals.
- **Visual Progress Display**: Graphically displays how study activities are helping to achieve goals.

## Technology Stack
- **Frontend**: HTML, CSS, TypeScript, React
- **Backend**: PHP, TypeScript
- **Database**: MySQL
- **Infrastructure**: Docker, AWS (EC2, RDS, S3), ECS/EKS

## Environment Setup
1. **Docker**: Already installed. The application runs within Docker containers.
2. **AWS Account**: Ensure access is configured for necessary AWS services.

## Local Development
Before starting development, install dependencies with the following command:
```
npm install
```
To start the development server:
```
npm start
```
## Database Configuration
Data is managed using MySQL. Configure the database settings in config/database.php.

## API Endpoints
The API provides the following endpoints:

- POST /api/tasks: Registers a new study task.
- GET /api/tasks: Retrieves registered study tasks.
## Deployment
Use the Dockerfile to build the container image for the application. After building, deploy to AWS ECS or EKS.

## Testing and Debugging
Perform functional and load tests to ensure all features work as expected.

## Production
After passing tests, migrate the application to the production environment. Monitor and maintain the application in production, performing updates and bug fixes as needed.
