CREATE TABLE student_info.friend(
  id1 INT REFERENCES student_info.student(id),
  id2 INT REFERENCES student_info.student(id)
);
