/*For every situation where student A likes student B, but we have no
 information about whom B likes (that is, B's id does not appear in the liker_id
 column of the like table), return A and B's names and grades.*/

/*Created table of ID, name, and grade of students who don't like anyone*/
CREATE TABLE student_info.non_likers AS
  SELECT student_info.student.id AS non_liker_id, student_info.student.name AS non_liker_name, student_info.student.grade AS non_liker_grade
    FROM student_info.student
    LEFT OUTER JOIN student_info.student_like
    ON student_info.student.id  = student_info.student_like.liker_id
    WHERE student_like.liker_id IS NULL;

/*Name and grade of students who like someone who doesn't like anyone and the corresponding liked student who doesn't like anyone. Used the non_liker table from above and the likers_likees table from 09-mutual-likes*/
  SELECT student_info.likers_likees.liker_name, student_info.likers_likees.liker_grade,
  student_info.likers_likees.likee_name, student_info.likers_likees.likee_grade
    FROM student_info.likers_likees
    JOIN student_info.non_likers
    ON student_info.likers_likees.likee_id = student_info.non_likers.non_liker_id;
