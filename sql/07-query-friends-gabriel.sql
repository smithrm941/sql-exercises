/*Find the names of all students who are friends with someone named Gabriel.*/

/*names of friends when Gabriel is id2*/
SELECT name FROM student_info.friend
JOIN student_info.student
ON student_info.student.id = student_info.friend.id1
WHERE student_info.friend.id2 = ANY (SELECT id FROM student_info.student WHERE name = 'Gabriel');

/*names of friends when Gabriel is id1*/
SELECT name FROM student_info.friend
JOIN student_info.student
ON student_info.student.id = student_info.friend.id2
WHERE student_info.friend.id1 = ANY (SELECT id FROM student_info.student WHERE name = 'Gabriel');
