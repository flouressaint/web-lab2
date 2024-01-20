-- два запроса на выборку для связанных таблиц с условиями и сортировкой;
-- Вывести студентов, обучающихся python10_2020, в алфавитном порядке по имени;
SELECT study_group_name,
    student_name
FROM student
    JOIN student_study_group ON student.student_id = student_study_group.student_id
    JOIN study_group ON student_study_group.study_group_id = study_group.study_group_id
    JOIN lesson ON lesson.study_group_id = study_group.study_group_id
WHERE study_group_name = 'python10_2020'
ORDER BY student_name;
-- Вывести дисциплину, преподавателя, кабинет и время начала занятий, продолжительность проводящихся '2021-08-12'.
SELECT discipline_name,
    teacher_name,
    room_name,
    start_time,
    duration || ' minutes'
FROM discipline
    JOIN lesson ON lesson.discipline_id = discipline.discipline_id
    JOIN teacher ON lesson.teacher_id = teacher.teacher_id
    JOIN room ON lesson.room_id = room.room_id
WHERE lesson_date = '2021-08-12'
ORDER BY start_time;
-- два запроса с группировкой и групповыми функциями;
-- Вывести количество студентов по каждой группе;
SELECT study_group_name,
    count(student.student_id) as "student_count"
FROM student_study_group
    JOIN study_group ON student_study_group.study_group_id = study_group.study_group_id
    JOIN student ON student_study_group.student_id = student.student_id
GROUP BY study_group_name
ORDER BY student_count DESC;
-- Вывести количество занятий по каждой дисциплине;
SELECT discipline_name,
    count(lesson.lesson_id) as "lesson_count"
FROM lesson
    JOIN discipline ON lesson.discipline_id = discipline.discipline_id
    JOIN teacher ON lesson.teacher_id = teacher.teacher_id
    JOIN room ON lesson.room_id = room.room_id
GROUP BY discipline_name
ORDER BY lesson_count DESC;
-- два запроса со вложенными запросами или табличными выражениями;
-- Вывести учебные группы, где количество студаентов меньше 10;
SELECT study_group_name
FROM study_group
WHERE study_group_id IN (
        SELECT study_group_id
        FROM student_study_group
        GROUP BY study_group_id
        HAVING count(student_id) < 10
    );
-- Вывести преподавателей, которые ведут занятия '2021-08-12';
SELECT teacher_name
FROM teacher
WHERE teacher_id IN (
        SELECT teacher_id
        FROM lesson
        WHERE lesson_date = '2021-08-12'
    );
-- два запроса корректировки данных (обновление, добавление, удаление и пр)
-- добавление записи в таблицу;
insert into student_study_group (student_id, study_group_id)
VALUES (1, 1);
-- обновление записи в таблице;
UPDATE student_study_group
SET study_group_id = 2
WHERE student_id = 1;
-- удаление записи в таблице;
DELETE FROM student_study_group
WHERE student_id = 1;