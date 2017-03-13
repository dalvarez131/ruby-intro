CREATE TABLE students
(
    id          INTEGER primary key AUTOINCREMENT,
    first_name  varchar(10),
    last_name   varchar(15),
    gender      varchar(1),
    birthday    integer,
    email       varchar(50),
    phone       integer,
    cohort_id   INTEGER,
    FOREIGN KEY(cohort_id) REFERENCES cohorts(id)
);

CREATE TABLE cohorts
(
    id          INTEGER primary key AUTOINCREMENT,
    name        varchar(50)
);
