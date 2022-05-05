select * from Students
select * from Subjects
select * from Examinations



select s.sid , sname , sub.sub_name as subject_Name , count(e.sid) as Attende_Exam_Number 
FROM Subjects sub cross join Students s
left join Examinations e
on s.sid = e.sid and e.sub_name = sub.sub_name
group by s.sid  , sname , sub.sub_name


