CREATE TABLE student_info.student_like(
  liker_id INT REFERENCES student_info.student(id),
  likee_id INT REFERENCES student_info.student(id)
);
