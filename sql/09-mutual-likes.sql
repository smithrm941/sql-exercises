/*For every pair of students who both like each other, return the name and grade
of both students. Include each pair only once, with the two names in alphabetical
order.*/

/*Created liker_info and likee_info tables in 08-query-likes-grade-two-or-more.sql
liker_info has these columns: liker_id, liker_name, liker_grade, likee_id
likee_info has these columns: likee_id, likee_name, likee_grade, liker_id*/

/*Used these tables to create table of pairs of student likers and likees*/

CREATE TABLE student_info.likers_likees AS
  SELECT student_info.liker_info.liker_id, student_info.liker_info.liker_name, student_info.liker_info.liker_grade,
  student_info.likee_info.likee_id, student_info.likee_info.likee_name, student_info.likee_info.likee_grade
  FROM student_info.liker_info
  JOIN student_info.likee_info
  ON student_info.liker_info.liker_id = student_info.likee_info.liker_id;

/*Concatenated the couples together*/
SELECT
  CONCAT (liker_id, ' ',liker_name,' ',liker_grade,' and ', likee_id, ' ', likee_name,' ',likee_grade)
FROM
  student_info.likers_likees;
