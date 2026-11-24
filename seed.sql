-- блок 1. справочники сегментов
INSERT INTO ref.segment (segment_code, segment_name, description) VALUES
    ('AVTF', 'Факультет автоматики и вычислительной техники', 'сегмент 1'),
    ('FPMI', 'Факультет прикладной математики и информатики', 'сегмент 2');

INSERT INTO ref.segment_role (role_name, segment_id) VALUES
    ('app_reader', 1), ('app_writer', 1), ('app_owner', 1), ('auditor', 1);

-- блок 2. справочники предметной области
INSERT INTO ref.positions (title, description) VALUES
    ('Ассистент', 'начальная преподавательская должность'),
    ('Старший преподаватель', 'преподаватель без ученой степени'),
    ('Доцент', 'преподаватель с ученой степенью кандидата наук'),
    ('Профессор', 'преподаватель с ученой степенью доктора наук'),
    ('Заведующий кафедрой', 'руководство кафедрой'),
    ('Декан', 'руководство факультетом'),
    ('Инженер-программист', 'техническая поддержка'),
    ('Лаборант', 'обслуживание лабораторий'),
    ('Методист', 'методическая работа'),
    ('Ассистент-стажер', 'стажер на преподавательской должности');

INSERT INTO ref.disciplines (code, name, credit_hours) VALUES
    ('DB101', 'Базы данных', 72),
    ('OS101', 'Операционные системы', 72),
    ('NET101', 'Компьютерные сети', 54),
    ('SE101', 'Проектирование программных систем', 90),
    ('MATH101', 'Дискретная математика', 108),
    ('ALG101', 'Алгоритмы и структуры данных', 90),
    ('WEB101', 'Веб-разработка', 72),
    ('SEC101', 'Информационная безопасность', 72),
    ('PL101', 'Языки программирования', 90),
    ('ENG101', 'Иностранный язык', 54);

INSERT INTO ref.roles (role_code, role_name, description) VALUES
    ('admin', 'Администратор', 'полный доступ к системе'),
    ('dean', 'Диспетчер деканата', 'работа с группами и студентами'),
    ('teacher', 'Преподаватель', 'выставление оценок'),
    ('hr', 'Инспектор отдела кадров', 'работа с личными делами'),
    ('auditor', 'Аудитор', 'чтение журналов'),
    ('reader', 'Чтение данных', 'просмотр отчетов'),
    ('writer', 'Запись данных', 'изменение операционных данных'),
    ('owner', 'Владелец данных', 'полный доступ к персональным данным'),
    ('security', 'Администратор безопасности', 'управление ролями и политиками'),
    ('etl', 'Загрузка данных', 'массовая загрузка');

-- блок 3. преподаватели и группы
INSERT INTO app.teachers (position_id, email, phone, hire_date, last_name, first_name, middle_name, segment_id) VALUES
    (3, 'ivanov@edu.local',    '+7-900-100-0001', '2015-09-01', 'Иванов',   'Пётр',      'Сергеевич',   1),
    (4, 'smirnova@edu.local',  '+7-900-100-0002', '2010-09-01', 'Смирнова', 'Анна',      'Викторовна',  1),
    (2, 'kuznetsov@edu.local', '+7-900-100-0003', '2018-09-01', 'Кузнецов', 'Олег',      'Дмитриевич',  1),
    (3, 'morozova@edu.local',  '+7-900-100-0004', '2012-09-01', 'Морозова', 'Елена',     'Игоревна',    1),
    (1, 'volkov@edu.local',    '+7-900-100-0005', '2021-09-01', 'Волков',   'Сергей',    'Андреевич',   1),
    (4, 'sokolova@edu.local',  '+7-900-100-0006', '2008-09-01', 'Соколова', 'Мария',     'Павловна',    1),
    (1, 'nikitin@edu.local',   '+7-900-100-0007', '2022-09-01', 'Никитин',  'Андрей',    'Владимирович',1),
    (2, 'orlova@edu.local',    '+7-900-100-0008', '2019-09-01', 'Орлова',   'Татьяна',   'Сергеевна',   1),
    (3, 'pavlov@edu.local',    '+7-900-100-0009', '2014-09-01', 'Павлов',   'Игорь',     'Николаевич',  1),
    (4, 'romanova@edu.local',  '+7-900-100-0010', '2009-09-01', 'Романова', 'Екатерина', 'Львовна',     1);

INSERT INTO app.groups (group_name, year_of_admission, curator_id, segment_id) VALUES
    ('ИС-21', 2021, 1, 1), ('ИС-22', 2022, 2, 1), ('ПИ-21', 2021, 3, 1),
    ('ПИ-22', 2022, 4, 1), ('ПМ-23', 2023, 5, 1), ('ИС-23', 2023, 6, 1),
    ('ПИ-23', 2023, 7, 1), ('ПМ-24', 2024, 8, 1), ('ИС-24', 2024, 9, 1),
    ('ПИ-24', 2024, 10, 1);

-- блок 4. студенты
INSERT INTO app.students (group_id, birth_date, email, status, last_name, first_name, middle_name, segment_id) VALUES
    (1, '2003-04-12', 'petrov@stud.local',     'active',    'Петров',    'Иван',     'Алексеевич',  1),
    (1, '2003-07-23', 'sidorova@stud.local',   'active',    'Сидорова',  'Ольга',    'Николаевна',  1),
    (2, '2004-01-15', 'kirillov@stud.local',   'active',    'Кириллов',  'Артём',    'Викторович',  1),
    (2, '2004-03-30', 'fedorova@stud.local',   'active',    'Фёдорова',  'Дарья',    'Сергеевна',   1),
    (3, '2003-11-02', 'novikov@stud.local',    'active',    'Новиков',   'Максим',   'Олегович',    1),
    (3, '2003-09-19', 'egorova@stud.local',    'expelled',  'Егорова',   'Виктория', 'Андреевна',   1),
    (4, '2004-05-08', 'grigoriev@stud.local',  'active',    'Григорьев', 'Никита',   'Павлович',    1),
    (4, '2004-02-27', 'afanasyeva@stud.local', 'active',    'Афанасьева','Полина',   'Игоревна',    1),
    (5, '2005-06-11', 'timofeev@stud.local',   'active',    'Тимофеев',  'Роман',    'Денисович',   1),
    (5, '2005-08-04', 'zaharova@stud.local',   'active',    'Захарова',  'Ксения',   'Романовна',   1),
    (1, '2003-12-21', 'belov@stud.local',      'graduated', 'Белов',     'Дмитрий',  'Андреевич',   1),
    (2, '2004-10-09', 'kravtsova@stud.local',  'active',    'Кравцова',  'Анастасия','Сергеевна',   1);

-- блок 5. личные дела
INSERT INTO app.personal_files (student_id, passport_number, snils, address, phone, admission_date, segment_id)
SELECT s.student_id,
       pgp_sym_encrypt('4510 1234' || lpad(s.student_id::TEXT, 2, '0'), 'edu_encryption_key'),
       pgp_sym_encrypt('112-233-445 ' || lpad((90 + s.student_id)::TEXT, 2, '0'), 'edu_encryption_key'),
       'г. Новосибирск, ул. Ленина, д. ' || s.student_id,
       '+7-901-000-00' || lpad(s.student_id::TEXT, 2, '0'),
       make_date(2021 + (s.student_id % 3), 9, 1),
       s.segment_id
FROM app.students s;

INSERT INTO app.teacher_personal_files (teacher_id, passport_number, snils, address, phone, segment_id)
SELECT t.teacher_id,
       pgp_sym_encrypt('4511 2000' || lpad(t.teacher_id::TEXT, 2, '0'), 'edu_encryption_key'),
       pgp_sym_encrypt('120-000-001 ' || lpad(t.teacher_id::TEXT, 2, '0'), 'edu_encryption_key'),
       'г. Новосибирск, ул. Тверская, д. ' || t.teacher_id,
       '+7-902-000-00' || lpad(t.teacher_id::TEXT, 2, '0'),
       t.segment_id
FROM app.teachers t;

-- блок 6. учебная нагрузка
INSERT INTO app.enrollments (student_id, discipline_id, semester, segment_id) VALUES
    (1,1,1,1),(1,2,1,1),(2,1,1,1),(2,3,1,1),(3,4,1,1),(3,5,1,1),
    (4,4,1,1),(4,6,1,1),(5,7,1,1),(5,8,1,1),(6,1,1,1),(7,9,1,1),
    (8,10,1,1),(9,2,1,1),(10,3,1,1);

INSERT INTO app.teacher_discipline (teacher_id, discipline_id, academic_year, segment_id) VALUES
    (1,1,'2025/2026',1),(1,2,'2025/2026',1),(2,4,'2025/2026',1),(3,5,'2025/2026',1),
    (4,6,'2025/2026',1),(5,7,'2025/2026',1),(6,8,'2025/2026',1),(2,9,'2025/2026',1),
    (3,10,'2025/2026',1),(1,3,'2025/2026',1);

-- блок 7. оценки и посещаемость
INSERT INTO app.grades (student_id, discipline_id, teacher_id, grade_value, grade_date, segment_id) VALUES
    (1,1,1,5,'2026-01-20',1),(1,2,1,4,'2026-01-21',1),(2,1,1,3,'2026-01-20',1),
    (2,3,3,4,'2026-01-22',1),(3,4,2,5,'2026-01-23',1),(3,5,3,4,'2026-01-24',1),
    (4,4,2,3,'2026-01-23',1),(4,6,4,5,'2026-01-25',1),(5,7,5,4,'2026-01-26',1),
    (5,8,6,5,'2026-01-27',1),(6,1,1,2,'2026-01-20',1),(7,9,2,4,'2026-01-28',1),
    (8,10,3,5,'2026-01-29',1),(9,2,1,4,'2026-01-21',1),(10,3,3,3,'2026-01-22',1);

INSERT INTO app.attendance (student_id, discipline_id, lesson_date, is_present, segment_id) VALUES
    (1,1,'2026-01-10',TRUE,1),(1,2,'2026-01-11',TRUE,1),(2,1,'2026-01-10',FALSE,1),
    (2,3,'2026-01-12',TRUE,1),(3,4,'2026-01-13',TRUE,1),(3,5,'2026-01-14',TRUE,1),
    (4,4,'2026-01-13',FALSE,1),(4,6,'2026-01-15',TRUE,1),(5,7,'2026-01-16',TRUE,1),
    (5,8,'2026-01-17',TRUE,1),(6,1,'2026-01-10',TRUE,1),(7,9,'2026-01-18',TRUE,1),
    (8,10,'2026-01-19',TRUE,1),(9,2,'2026-01-11',TRUE,1),(10,3,'2026-01-12',FALSE,1);

-- данные второго сегмента для проверки изоляции
INSERT INTO app.groups (group_name, year_of_admission, curator_id, segment_id)
VALUES ('ФПМИ-21', 2021, NULL, 2);

INSERT INTO app.students (group_id, birth_date, email, status, last_name, first_name, middle_name, segment_id)
VALUES ((SELECT group_id FROM app.groups WHERE group_name = 'ФПМИ-21'),
        '2003-05-17', 'fpmistud@stud.local', 'active', 'Фролов', 'Артём', 'Сергеевич', 2);

INSERT INTO app.grades (student_id, discipline_id, teacher_id, grade_value, grade_date, segment_id)
VALUES ((SELECT student_id FROM app.students WHERE email = 'fpmistud@stud.local'), 1, NULL, 4, '2026-01-30', 2);

-- блок 8. проверка наполнения
SELECT 'ref.segment' AS таблица, count(*) AS строк FROM ref.segment
UNION ALL SELECT 'ref.segment_role', count(*) FROM ref.segment_role
UNION ALL SELECT 'ref.positions', count(*) FROM ref.positions
UNION ALL SELECT 'ref.disciplines', count(*) FROM ref.disciplines
UNION ALL SELECT 'ref.roles', count(*) FROM ref.roles
UNION ALL SELECT 'app.teachers', count(*) FROM app.teachers
UNION ALL SELECT 'app.groups', count(*) FROM app.groups
UNION ALL SELECT 'app.students', count(*) FROM app.students
UNION ALL SELECT 'app.personal_files', count(*) FROM app.personal_files
UNION ALL SELECT 'app.teacher_personal_files', count(*) FROM app.teacher_personal_files
UNION ALL SELECT 'app.grades', count(*) FROM app.grades
UNION ALL SELECT 'app.attendance', count(*) FROM app.attendance
UNION ALL SELECT 'app.enrollments', count(*) FROM app.enrollments
UNION ALL SELECT 'app.teacher_discipline', count(*) FROM app.teacher_discipline
ORDER BY таблица;
