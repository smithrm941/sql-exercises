/*Find all students who do not appear in the like table (as a student who
likes or is liked) and return their names and grades. Sort by grade, then by
name within each grade.*/

SELECT name, grade FROM student_info.student
LEFT OUTER JOIN student_info.student_like
ON student_info.student.id = student_info.student_like.liker_id
WHERE student_like.liker_id IS NULL
ORDER BY grade, name;
