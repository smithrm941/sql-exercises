/*Find the name and grade of all students who are liked by more than one other
student.*/

/*I used the table I created in 09-mutual-likes.sql*/
SELECT student_info.likers_likees.likee_name, student_info.likers_likees.likee_grade
  FROM student_info.likers_likees
  GROUP BY student_info.likers_likees.likee_name,
  student_info.likers_likees.likee_grade
  HAVING (COUNT(student_info.likers_likees.likee_id) > 1);
