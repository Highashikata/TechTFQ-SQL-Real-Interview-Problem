# TechTFQ-SQL-Real-Interview-Problem

In this repository, we are going to go through he video posted by the SQL instructor TechTFQ in that video [Capgemini SQL Problem](https://www.youtube.com/watch?v=jXKGsMPk1Hg).

**This is the problem statement**

![image](https://github.com/Highashikata/TechTFQ-SQL-Real-Interview-Problem/assets/96960411/10e540a0-237c-4bce-895a-97bb8f1d3cf1)

**Inputs**

![image](https://github.com/Highashikata/TechTFQ-SQL-Real-Interview-Problem/assets/96960411/a35e7f4a-84d7-48ea-9fbc-e2b873722b8e)


**Outputs**

![image](https://github.com/Highashikata/TechTFQ-SQL-Real-Interview-Problem/assets/96960411/f80c1f39-a3fa-44d5-b765-8ae05e6804da)


**DDL & DML**
```
CREATE TABLE LIFT (
    ID SERIAL PRIMARY KEY,
    CAPACITY_KG INT NOT NULL
);

CREATE TABLE LIFT_PASSENGERS (
    PASSENGER_NAME VARCHAR(50) NOT NULL,
    WEIGHT_KG INT NOT NULL,
    LIFT_ID INT NOT NULL,
    FOREIGN KEY (LIFT_ID) REFERENCES LIFT(ID)
);

-- Insert sample data into LIFT table
INSERT INTO LIFT (CAPACITY_KG) VALUES
    (300),
    (350);

-- Insert sample data into LIFT_PASSENGERS table
INSERT INTO LIFT_PASSENGERS (PASSENGER_NAME, WEIGHT_KG, LIFT_ID) VALUES
    ('Rahul', 85, 1),
    ('Adarsh', 73, 1),
    ('Riti', 95, 1),
    ('Dheeraj', 80, 1),
    ('Vimal', 83, 2),
    ('Neha', 77, 2),
    ('Priti', 73, 2),
    ('Himanshi', 85, 2);

-- Select all data from LIFT table
SELECT * FROM LIFT;
CREATE TABLE LIFT (
    ID SERIAL PRIMARY KEY,
    CAPACITY_KG INT NOT NULL
);

CREATE TABLE LIFT_PASSENGERS (
    PASSENGER_NAME VARCHAR(50) NOT NULL,
    WEIGHT_KG INT NOT NULL,
    LIFT_ID INT NOT NULL,
    FOREIGN KEY (LIFT_ID) REFERENCES LIFT(ID)
);

-- Insert sample data into LIFT table
INSERT INTO LIFT (CAPACITY_KG) VALUES
    (300),
    (350);

-- Insert sample data into LIFT_PASSENGERS table
INSERT INTO LIFT_PASSENGERS (PASSENGER_NAME, WEIGHT_KG, LIFT_ID) VALUES
    ('Rahul', 85, 1),
    ('Adarsh', 73, 1),
    ('Riti', 95, 1),
    ('Dheeraj', 80, 1),
    ('Vimal', 83, 2),
    ('Neha', 77, 2),
    ('Priti', 73, 2),
    ('Himanshi', 85, 2);

-- Select all data from LIFT table
SELECT * FROM LIFT;

```
