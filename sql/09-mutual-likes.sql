/*For every pair of students who both like each other, return the name and grade
of both students. Include each pair only once, with the two names in alphabetical
order.*/

/*I used the tables I created in 08-query-likes-grade-two-or-more.sql to create table of pairs of student likers and likees*/
CREATE TABLE student_info.likers_likees AS
  SELECT student_info.liker_info.liker_id, student_info.liker_info.liker_name, student_info.liker_info.liker_grade,
  student_info.likee_info.likee_id, student_info.likee_info.likee_name, student_info.likee_info.likee_grade
  FROM student_info.liker_info
  JOIN student_info.likee_info
  ON student_info.liker_info.liker_id = student_info.likee_info.liker_id;

/*Used a self join to find the pairs of students who mutually like each other*/
SELECT a.liker_name, a.liker_grade, b.liker_name, b.liker_grade
FROM student_info.likers_likees a, student_info.likers_likees b
WHERE a.liker_id = b.likee_id
AND a.likee_id = b.liker_id
AND a.liker_id < b.liker_id
ORDER BY a.liker_name;
