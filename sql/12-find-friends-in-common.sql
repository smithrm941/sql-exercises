/*For each student A who likes a student B where the two are not friends,
find if they have a friend C in common (who can introduce them!). For all such
trios, return the name and grade of A, B, and C.*/

/*Used table I created in 09-mutual likes and the friend table from 02-create-table-friend to find students A and B*/
CREATE TABLE student_info.stranger_crushes AS
  SELECT student_info.likers_likees.liker_id,student_info.likers_likees.liker_name, student_info.likers_likees.liker_grade,
  student_info.likers_likees.likee_id,
  student_info.likers_likees.likee_name,
  student_info.likers_likees.likee_grade
    FROM student_info.likers_likees
      WHERE student_info.likers_likees.likee_id NOT IN (SELECT student_info.friend.id2 FROM student_info.friend WHERE student_info.friend.id1 = liker_id)
      AND student_info.likers_likees.likee_id NOT IN (SELECT student_info.friend.id1 FROM student_info.friend WHERE student_info.friend.id2 = liker_id);

/*Added and id for each friend pair in friend table - might not be needed
ALTER TABLE student_info.friend ADD COLUMN id SERIAL PRIMARY KEY;*/

/*gives liker name, likee name and friend ids of every friend pairing involving liker*/
  SELECT student_info.stranger_crushes.liker_id, student_info.stranger_crushes.liker_name, student_info.stranger_crushes.likee_name, student_info.friend.id1, student_info.friend.id2
    FROM student_info.friend, student_info.stranger_crushes
    WHERE (student_info.stranger_crushes.liker_id = student_info.friend.id1
    OR student_info.stranger_crushes.liker_id = student_info.friend.id2);

/*gives liker name, likee name and friend ids of every friend pairing involving likee*/
  SELECT student_info.stranger_crushes.likee_id, student_info.stranger_crushes.likee_name, student_info.stranger_crushes.liker_name, student_info.friend.id1, student_info.friend.id2
      FROM student_info.friend, student_info.stranger_crushes
      WHERE (student_info.stranger_crushes.likee_id = student_info.friend.id1
      OR student_info.stranger_crushes.likee_id = student_info.friend.id2);
