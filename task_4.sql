#запрос 1: Вывести всех студентов с одного курса и одной специальности.(задание 2)
SELECT * FROM студенты.table1 where Курс = '1' And Название_специальности = 'менеджмент';

#запрос 2: Вывести всех девочек, учащихся на “3” курсе.(задание 3)
SELECT * FROM студенты.table1 where Курс = '3' And Пол = 'female';

#запрос 3: Вывести количество студентов каждого курса, результат сгруппировать по специальности.(задание 4)
SELECT count(Имя_студента), Название_специальности from студенты.table1 group by Название_специальности ;

#запрос 4: Вывести три самых популярных мужских имен среди студентов и посчитать сколько раз они встречаются.(задание 5)
SELECT Имя_студента, count(Имя_студента) from студенты.table1 where Пол ='male' group by Имя_студента order by count(Имя_студента) desc limit 3;

#запрос 5: Вывести троих самых старших студентов.(задание 7)
SELECT Имя_студента, Дата_рождения from студенты.table1 order by Дата_рождения asc limit 3;

#запрос 6: Посчитать средний возраст студентов, посещающих математику.(задание 8)
SELECT Название_дисциплины, avg(Дата_рождения) from студенты.table1 where Название_дисциплины ='Математика' ;
