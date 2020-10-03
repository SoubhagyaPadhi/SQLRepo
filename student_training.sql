CREATE TABLE student (
    student_id    INT NOT NULL,
    student_name  VARCHAR(255),
    PRIMARY KEY ( student_id )
);

CREATE TABLE training (
    training_id    INT NOT NULL,
    student_id     INT,
    training_name  VARCHAR(255),
    PRIMARY KEY ( training_id ),
    CONSTRAINT fk_student_id FOREIGN KEY ( student_id )
        REFERENCES student ( student_id )
);

INSERT INTO student (
    student_id,
    student_name
) VALUES (
    1,
    'Rahul'
);

INSERT INTO student (
    student_id,
    student_name
) VALUES (
    2,
    'Shyam'
);

INSERT INTO student (
    student_id,
    student_name
) VALUES (
    3,
    'Jony'
);

INSERT INTO student (
    student_id,
    student_name
) VALUES (
    4,
    'Rony'
);

INSERT INTO student (
    student_id,
    student_name
) VALUES (
    5,
    'Ram'
);

COMMIT;

INSERT INTO training (
    training_id,
    student_id,
    training_name
) VALUES (
    1,
    1,
    'C'
);

INSERT INTO training (
    training_id,
    student_id,
    training_name
) VALUES (
    2,
    1,
    'C++'
);

INSERT INTO training (
    training_id,
    student_id,
    training_name
) VALUES (
    3,
    2,
    'Java'
);

INSERT INTO training (
    training_id,
    student_id,
    training_name
) VALUES (
    4,
    2,
    'History'
);

INSERT INTO training (
    training_id,
    student_id,
    training_name
) VALUES (
    5,
    3,
    'Science'
);

INSERT INTO training (
    training_id,
    student_id,
    training_name
) VALUES (
    6,
    4,
    'Physics'
);

INSERT INTO training (
    training_id,
    student_id,
    training_name
) VALUES (
    7,
    5,
    'Bio'
);

INSERT INTO training (
    training_id,
    student_id,
    training_name
) VALUES (
    8,
    5,
    'English'
);
--insert into training(training_id,student_id,training_name) values (9,7,'English');
COMMIT;

------------------------------------------------------------
SELECT
    *
FROM
    student;

SELECT
    *
FROM
    training;

--Find Student Names who are enrolled to multiple training subjects
SELECT
    s.student_name
FROM
         student s
    JOIN training t ON s.student_id = t.student_id
GROUP BY
    s.student_name
HAVING
    COUNT(s.student_id) > 1
ORDER BY
    student_name DESC;