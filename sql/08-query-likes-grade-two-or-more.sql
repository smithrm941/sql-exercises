/*For every student who likes someone 2 or more grades younger than themselves,
return that student's name and grade, and the name and grade of the student they
like.*/

/*Created a table of info on students who like other students*/
CREATE TABLE student_info.liker_info AS
  SELECT id AS liker_id, name AS liker_name, grade AS liker_grade,likee_id
  FROM student_info.student_like
  JOIN student_info.student
  ON student_info.student.id = student_info.student_like.liker_id;

/*Created a table of info on students who are liked by other students*/
CREATE TABLE student_info.likee_info AS
  SELECT id AS likee_id, name AS likee_name, grade AS likee_grade, liker_id
  FROM student_info.student_like
  JOIN student_info.student
  ON student_info.student.id = student_info.student_like.likee_id;

/*Name and grade of students who like someone 2 or more grades younger and the
student that they like*/
  SELECT student_info.liker_info.liker_name, student_info.liker_info.liker_grade,
  student_info.likee_info.likee_name, student_info.likee_info.likee_grade
  FROM student_info.liker_info
  JOIN student_info.likee_info
  ON student_info.liker_info.liker_id = student_info.likee_info.liker_id
  WHERE liker_grade - likee_grade >= 2;
