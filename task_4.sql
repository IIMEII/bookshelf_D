#задание 2: Вывести всех студентов с одного курса и одной специальности.
SELECT * FROM студенты.students where Сourse = '1' And Name_of_specialty = 'менеджмент';

#задание 3: Вывести всех девочек, учащихся на “3” курсе.
SELECT * FROM студенты.students where Сourse = '3' And Gender = 'female';

#задание 4: Вывести количество студентов каждого курса, результат сгруппировать по специальности.!!
SELECT Сourse, count(Student_name) as экономика FROM студенты.students where Name_of_specialty='Экономика' group by Сourse order by Сourse;

#задание 5: Вывести три самых популярных мужских имен среди студентов и посчитать сколько раз они встречаются.
SELECT Student_name, count(Student_name) from студенты.students where Gender ='male' group by Student_name order by count(Student_name) desc limit 3;

#задание 6:Посчитать сколько студентов проходят практику на каждом из курсов, результат сгруппировать по курсу.
SELECT Сourse, count(Student_name) FROM студенты.students where  Discipline_name='Практика' group by(Сourse);
"проверочный запрос  SELECT count(Discipline_name) FROM студенты.students where Discipline_name='Практика';   "

#задание 7: Вывести троих самых старших студентов.
SELECT Student_name, (year(current_date)-year(Date_of_Birth)) from студенты.students order by(Date_of_Birth) limit 3;

#задание 8: Посчитать средний возраст студентов, посещающих математику.
SELECT round(avg (year(current_date)-(Date_of_Birth)),1) as возраст from студенты.students where Discipline_name='Математика';
