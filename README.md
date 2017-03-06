# SQL Exercises
# Core SQL

## Challenge Rating

This goal will likely be within your ZPD if you...

- Are familiar with basic command line operations
- Are interested in learning about writing SQL queries
- Are interested in learning how to install postgres & use the `psql` command line tool.

## Description

A day-by-day structured deep dive into the basics of SQL. Complete lessons, and read tutorials.

This goal makes heavy use of external resources: the [Introduction to SQL](https://www.khanacademy.org/computing/computer-programming/sql) course on [Khan Academy](https://www.khanacademy.com/), [Tutorial's Point](https://www.tutorialspoint.com/postgresql), [SQL Zoo](http://sqlzoo.net) and [SQL Bolt](https://sqlbolt.com/lesson/select_queries_order_of_execution)

For the first few days, you'll be working on existing courses and completing tutorials. Then you'll use your skills to complete a set of SQL exercises and submit your queries as your artifact.

Fork the [sql-exercises][sql-exercises] repo, and use the fork as your artifact. Complete all the exercises without looking at solutions on the internet.

## Context

In order to build web applications, it's important to get a solid grounding into the basics of SQL. Proficiency in SQL is a core skill needed to build the backend.

Becoming a full stack web developer means that you need to be comfortable with writing SQL queries and understanding relational database design.

## Specifications

### Day 1: SQL Basics & Advanced SQL Queries
- [ ] Complete the [SQL Basics course](https://www.khanacademy.org/computing/computer-programming/sql#sql-basics)
- [ ] Complete the [Advanced SQL queries course](https://www.khanacademy.org/computing/computer-programming/sql#more-advanced-sql-queries)

### Day 2: Relational Queries
- [ ] Complete the [Relational Queries course](https://www.khanacademy.org/computing/computer-programming/sql#relational-queries-in-sql)
- [ ] Complete the [Modifying databases with SQL course](https://www.khanacademy.org/computing/computer-programming/sql#modifying-databases-with-sql)

### Day 3: Install Postgres and Complete Tutorials with psql
- [ ] Install Homebrew by following instructions listed [here](https://gist.github.com/punitrathore/ca32542fddd0d8b625aab610c35e4545)
- [ ] Install Postgres by following instructions listed [here](https://gist.github.com/punitrathore/ca32542fddd0d8b625aab610c35e4545#install-postgres)
- [ ] Learn the `psql` command line tool by working through the following tutorials
  - [ ] complete the tutorial for `createdb` [here](https://www.tutorialspoint.com/postgresql/postgresql_create_database.htm)
  - [ ] complete the tutorial for selecting the database [here](https://www.tutorialspoint.com/postgresql/postgresql_select_database.htm)
  - [ ] complete the tutorial for dropping the database [here](https://www.tutorialspoint.com/postgresql/postgresql_drop_database.htm)
  - [ ] complete the tutorial for `create table` [here](https://www.tutorialspoint.com/postgresql/postgresql_create_table.htm)
  - [ ] complete the tutorial for `drop table` [here](https://www.tutorialspoint.com/postgresql/postgresql_drop_table.htm)
  - [ ] complete the tutorial for `schema` [here](https://www.tutorialspoint.com/postgresql/postgresql_schema.htm)
  - [ ] complete the tutorial for `insert` [here](https://www.tutorialspoint.com/postgresql/postgresql_insert_query.htm)
  - [ ] complete the tutorial for `select` [here](https://www.tutorialspoint.com/postgresql/postgresql_select_query.htm)
  - [ ] complete the tutorial for expressions [here](https://www.tutorialspoint.com/postgresql/postgresql_expressions.htm)
  - [ ] complete the tutorial for `where` clause [here](https://www.tutorialspoint.com/postgresql/postgresql_where_clause.htm)
  - [ ] complete the tutorial for `and` and `or` operators [here](https://www.tutorialspoint.com/postgresql/postgresql_and_or_clauses.htm)
  - [ ] complete the tutorial for update queries [here](https://www.tutorialspoint.com/postgresql/postgresql_update_query.htm)
  - [ ] complete the tutorial for delete queries [here](https://www.tutorialspoint.com/postgresql/postgresql_delete_query.htm)
  - [ ] complete the tutorial for the `like` clause [here](https://www.tutorialspoint.com/postgresql/postgresql_like_clause.htm)
  - [ ] complete the tutorial for the `limit` clause [here](https://www.tutorialspoint.com/postgresql/postgresql_limit_clause.htm)
  - [ ] complete the tutorial for the `order by` clause [here](https://www.tutorialspoint.com/postgresql/postgresql_order_by.htm)
  - [ ] complete the tutorial for the `group by` clause [here](https://www.tutorialspoint.com/postgresql/postgresql_group_by.htm)

### Day 4: Mini Project & Exercises
- [ ] Exercises 1-13 in the [sql-exercises][sql-exercises] repo are complete and written to the appropriate file:
  - [ ] `sql/01-create-table-student.sql`
  - [ ] `sql/02-create-table-friend.sql`
  - [ ] `sql/03-create-table-like.sql`
  - [ ] `sql/04-load-table-learner.sql`
  - [ ] `sql/05-load-table-friend.sql`
  - [ ] `sql/06-load-table-like.sql`
  - [ ] `sql/07-query-friends-gabriel.sql`
  - [ ] `sql/08-query-likes-grade-two-or-more.sql`
  - [ ] `sql/09-mutual-likes.sql`
  - [ ] `sql/10-not-liked.sql`
  - [ ] `sql/11-liked-but-does-not-like.sql`
  - [ ] `sql/12-find-friends-in-common.sql`
  - [ ] `sql/13-popular-students.sql`
Exercises to help exercise the SQL muscles.

Base repository for the [core-sql](https://github.com/GuildCrafts/web-development-js/issues/178) goal.

## Getting Started

Create a Postgres database called `sql-exercises`. Use this database for all of the exercises.

## Exercises

### Build the Schema

Create the schema for the following tables.

**01:** Table name: `student`, columns: `id`, `name`, `grade`
- `id` is the primary key
- `name` is only their first name
- `grade` is an integer
- write the SQL in the file `sql/01-create-table-student.sql`

**02:** Table name: `friend`, columns: `id1`, `id2`
- `id1` is a foreign key reference to a student
- `id2` is a foreign key reference to a student
- write the SQL in the file `sql/02-create-table-friend.sql`

**03:** Table name: `student_like`, columns: `liker_id`, `likee_id`
- `liker_id` is a foreign key reference to a student
- `likee_id` is a foreign key reference to a student
- write the SQL in the file `sql/03-create-table-like.sql`

Run the SQL for the schema against the `sql-exercises` database to create the tables.

### Load the Data

Load the data into the tables (make sure you have created the tables above).

**04:** SQL query to load the CSV file `data/students.csv` for the `student` table
<br>Write the SQL in the file `sql/04-load-table-student.sql`

**05:** SQL query to load the CSV file `data/friends.csv` for the `friend` table
<br>Write the query in the file `sql/05-load-table-friend.sql`

**06:** SQL query to load the CSV file `data/likes.csv` for the `student_like` table
<br>Write the SQL in the file `sql/06-load-table-like.sql`

Run the queries to load the data into the tables.

### Query the Data

Make sure each question is copied and pasted in the file which contains the SQL, so that it is easy for the reviewer to know what the SQL is supposed to do.

**07:** Find the names of all students who are friends with someone named Gabriel.
<br>Write the SQL in the file `sql/07-query-friends-gabriel.sql`

**08:** For every student who likes someone 2 or more grades younger than themselves, return that student's name and grade, and the name and grade of the student they like.
<br>Write the SQL in the file `sql/08-query-likes-grade-two-or-more.sql`

**09:** For every pair of students who both like each other, return the name and grade of both students. Include each pair only once, with the two names in alphabetical order.
<br>Write the SQL in the file `sql/09-mutual-likes.sql`

**10:** Find all students who do not appear in the like table (as a student who likes or is liked) and return their names and grades. Sort by grade, then by name within each grade.
<br>Write the SQL in the file `sql/10-not-liked.sql`

**11:** For every situation where student A likes student B, but we have no information about whom B likes (that is, B's id does not appear in the `liker_id` column of the like table), return A and B's names and grades.
<br>Write the SQL in the file `sql/11-liked-but-does-not-like.sql`

**12:** For each student A who likes a student B where the two are not friends, find if they have a friend C in common (who can introduce them!). For all such trios, return the name and grade of A, B, and C.
<br>Write the SQL in the file `sql/12-find-friends-in-common.sql`

**13:** Find the name and grade of all students who are liked by more than one other student.
<br>Write the SQL in the file `sql/13-popular-students.sql`

### Day 5: Exercises on SQL Bolt
- [ ] Complete the [SQL Bolt tutorial](https://sqlbolt.com/)

### Stretch
- [ ] Complete the [Codeacademy course on SQL](https://www.codecademy.com/learn/learn-sql)
- [ ] Complete the [SQL Zoo quizzes](http://sqlzoo.net/wiki/Tutorial_Quizzes)

### Quality Rubric

**Well formatted code**
- All the SQL keywords are capitalized [25 points]

**Good project management**
- Commit messages are concise and descriptive. [25 points]
- All features are added via pull requests. [25 points]
- Every pull request has a description summarizing the changes made. [25 points]
- Every pull request has been reviewed by at least one other person. [25 points]

[sql-exercises]:https://github.com/GuildCrafts/sql-exercises

