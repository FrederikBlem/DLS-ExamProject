/* Sample teachers who are famous historical scientists */
INSERT INTO public.Teacher(teacher_id, teacher_email, teacher_password, teacher_full_name)
VALUES (1, 'FirstTeacher@schoolmail.dk', 'CatsName123', 'Albert Einstein');

INSERT INTO public.Teacher(teacher_id, teacher_email, teacher_password, teacher_full_name)
VALUES (2, 'SecondTeacher@schoolmail.dk', 'DogsName123', 'Stephen Hawking');

INSERT INTO public.Teacher(teacher_id, teacher_email, teacher_password, teacher_full_name)
VALUES (3, 'ThirdTeacher@schoolmail.dk', 'HamstersName123', 'Marie Curie');

/* Sample students */
INSERT INTO public.Student(student_id, student_email, student_password, student_phone_number)
VALUES (1, 'FirstStudent@schoolmail.dk', 'Coffee123', '00000001');

INSERT INTO public.Student(student_id, student_email, student_password, student_phone_number)
VALUES (2, 'SecondStudent@schoolmail.dk', 'GreenTea123', '00000002');

INSERT INTO public.Student(student_id, student_email, student_password, student_phone_number)
VALUES (3, 'ThirdStudent@schoolmail.dk', 'Chocolate123', '00000003');

INSERT INTO public.Student(student_id, student_email, student_password, student_phone_number)
VALUES (4, 'FourthStudent@schoolmail.dk', 'DarkBeer123', '00000004');

INSERT INTO public.Student(student_id, student_email, student_password, student_phone_number)
VALUES (5, 'FifthStudent@schoolmail.dk', 'RedWine123', '00000005');

INSERT INTO public.Student(student_id, student_email, student_password, student_phone_number)
VALUES (6, 'SixthStudent@schoolmail.dk', 'WhiteRum123', '00000006');

/* Subjects */
INSERT INTO public.Subject(subject_id, subject_name)
VALUES(1, 'Physics');

INSERT INTO public.Subject(subject_id, subject_name)
VALUES(2, 'Astronomy');

INSERT INTO public.Subject(subject_id, subject_name)
VALUES(3, 'Mathematics');

/* Physics modules on 2012.12.16 */
INSERT INTO public.Module(module_id, teacher_id, subject_id, module_date, module_code)
VALUES (1, 1, 1, '2021.12.16', 'physics-module-1');

INSERT INTO public.Module(module_id, teacher_id, subject_id, module_date, module_code)
VALUES (2, 1, 1, '2021.12.16', 'physics-module-2');

INSERT INTO public.Module(module_id, teacher_id, subject_id, module_date, module_code)
VALUES (3, 1, 1, '2021.12.16', 'physics-module-3');

/* Astronomy modules on 2012.12.16 */
INSERT INTO public.Module(module_id, teacher_id, subject_id, module_date, module_code)
VALUES (4, 2, 2, '2021.12.16', 'astronomy-module-1');

INSERT INTO public.Module(module_id, teacher_id, subject_id, module_date, module_code)
VALUES (5, 2, 2, '2021.12.16', 'astronomy-module-2');

INSERT INTO public.Module(module_id, teacher_id, subject_id, module_date, module_code)
VALUES (6, 2, 2, '2021.12.16', 'astronomy-module-3');

/* Mathematics modules on 2012.12.17 (1 day after the other two subjects' modules)*/
INSERT INTO public.Module(module_id, teacher_id, subject_id, module_date, module_code)
VALUES (7, 3, 3, '2021.12.17', 'mathematics-module-1');

INSERT INTO public.Module(module_id, teacher_id, subject_id, module_date, module_code)
VALUES (8, 3, 3, '2021.12.17', 'mathematics-module-2');

INSERT INTO public.Module(module_id, teacher_id, subject_id, module_date, module_code)
VALUES (9, 3, 3, '2021.12.17', 'mathematics-module-3');

/* Assign students to subjects (physics) */
INSERT INTO public.Subject_students(subject_students_id, student_id, subject_id)
VALUES (1, 1, 1);

INSERT INTO public.Subject_students(subject_students_id, student_id, subject_id)
VALUES (2, 2, 1);

INSERT INTO public.Subject_students(subject_students_id, student_id, subject_id)
VALUES (3, 3, 1);

/* Assign students to subjects (astronomy) */
INSERT INTO public.Subject_students(subject_students_id, student_id, subject_id)
VALUES (4, 4, 2);

INSERT INTO public.Subject_students(subject_students_id, student_id, subject_id)
VALUES (5, 5, 2);

INSERT INTO public.Subject_students(subject_students_id, student_id, subject_id)
VALUES (6, 6, 2);

/* Assign students to subjects (mathematics) */
INSERT INTO public.Subject_students(subject_students_id, student_id, subject_id)
VALUES (7, 1, 3);

INSERT INTO public.Subject_students(subject_students_id, student_id, subject_id)
VALUES (8, 2, 3);

INSERT INTO public.Subject_students(subject_students_id, student_id, subject_id)
VALUES (9, 3, 3);

/* Assign students to modules 1-3 (physics) */
INSERT INTO public.Module_students(module_students_id, module_id, student_id)
VALUES (1, 1, 1);

INSERT INTO public.Module_students(module_students_id, module_id, student_id)
VALUES (2, 2, 1);

INSERT INTO public.Module_students(module_students_id, module_id, student_id)
VALUES (3, 3, 1);

INSERT INTO public.Module_students(module_students_id, module_id, student_id)
VALUES (4, 1, 2);

INSERT INTO public.Module_students(module_students_id, module_id, student_id)
VALUES (5, 2, 2);

INSERT INTO public.Module_students(module_students_id, module_id, student_id)
VALUES (6, 3, 2);

INSERT INTO public.Module_students(module_students_id, module_id, student_id)
VALUES (7, 1, 3);

INSERT INTO public.Module_students(module_students_id, module_id, student_id)
VALUES (8, 2, 3);

INSERT INTO public.Module_students(module_students_id, module_id, student_id)
VALUES (9, 3, 3);

/* Assign students to modules 4-6 (astronomy) */
INSERT INTO public.Module_students(module_students_id, module_id, student_id)
VALUES (10, 4, 4);

INSERT INTO public.Module_students(module_students_id, module_id, student_id)
VALUES (11, 5, 4);

INSERT INTO public.Module_students(module_students_id, module_id, student_id)
VALUES (12, 6, 4);

INSERT INTO public.Module_students(module_students_id, module_id, student_id)
VALUES (13, 4, 5);

INSERT INTO public.Module_students(module_students_id, module_id, student_id)
VALUES (14, 5, 5);

INSERT INTO public.Module_students(module_students_id, module_id, student_id)
VALUES (15, 6, 5);

INSERT INTO public.Module_students(module_students_id, module_id, student_id)
VALUES (16, 4, 6);

INSERT INTO public.Module_students(module_students_id, module_id, student_id)
VALUES (17, 5, 6);

INSERT INTO public.Module_students(module_students_id, module_id, student_id)
VALUES (18, 6, 6);

/* Assign students to modules 7-9 (mathematics) */
INSERT INTO public.Module_students(module_students_id, module_id, student_id)
VALUES (19, 7, 1);

INSERT INTO public.Module_students(module_students_id, module_id, student_id)
VALUES (20, 8, 1);

INSERT INTO public.Module_students(module_students_id, module_id, student_id)
VALUES (21, 9, 1);

INSERT INTO public.Module_students(module_students_id, module_id, student_id)
VALUES (22, 7, 2);

INSERT INTO public.Module_students(module_students_id, module_id, student_id)
VALUES (23, 8, 2);

INSERT INTO public.Module_students(module_students_id, module_id, student_id)
VALUES (24, 9, 2);

INSERT INTO public.Module_students(module_students_id, module_id, student_id)
VALUES (25, 7, 3);

INSERT INTO public.Module_students(module_students_id, module_id, student_id)
VALUES (26, 8, 3);

INSERT INTO public.Module_students(module_students_id, module_id, student_id)
VALUES (27, 9, 3);

/* Assign attendance of students to modules 1-3 (physics) */
INSERT INTO public.Module_attendees(module_attendees_id, module_id, student_id)
VALUES (1, 1, 1);

INSERT INTO public.Module_attendees(module_attendees_id, module_id, student_id)
VALUES (2, 2, 1);

INSERT INTO public.Module_attendees(module_attendees_id, module_id, student_id)
VALUES (3, 3, 1);

INSERT INTO public.Module_attendees(module_attendees_id, module_id, student_id)
VALUES (4, 1, 2);

INSERT INTO public.Module_attendees(module_attendees_id, module_id, student_id)
VALUES (5, 2, 2);

INSERT INTO public.Module_attendees(module_attendees_id, module_id, student_id)
VALUES (6, 3, 2);

INSERT INTO public.Module_attendees(module_attendees_id, module_id, student_id)
VALUES (7, 1, 3);

INSERT INTO public.Module_attendees(module_attendees_id, module_id, student_id)
VALUES (8, 2, 3);

INSERT INTO public.Module_attendees(module_attendees_id, module_id, student_id)
VALUES (9, 3, 3);

/* Assign attendance of students to modules 4-6 (astronomy) */
INSERT INTO public.Module_attendees(module_attendees_id, module_id, student_id)
VALUES (10, 4, 4);

INSERT INTO public.Module_attendees(module_attendees_id, module_id, student_id)
VALUES (11, 5, 4);

INSERT INTO public.Module_attendees(module_attendees_id, module_id, student_id)
VALUES (12, 6, 4);

INSERT INTO public.Module_attendees(module_attendees_id, module_id, student_id)
VALUES (13, 4, 5);

INSERT INTO public.Module_attendees(module_attendees_id, module_id, student_id)
VALUES (14, 5, 5);

INSERT INTO public.Module_attendees(module_attendees_id, module_id, student_id)
VALUES (15, 6, 5);

/* /* Student six is absent */
INSERT INTO public.Module_attendees(module_attendees_id, module_id, student_id)
VALUES (16, 4, 6);

INSERT INTO public.Module_attendees(module_attendees_id, module_id, student_id)
VALUES (17, 5, 6);

INSERT INTO public.Module_attendees(module_attendees_id, module_id, student_id)
VALUES (18, 6, 6);
 */

/* Assign attendance of students to modules 7-9 (mathematics) */
INSERT INTO public.Module_attendees(module_attendees_id, module_id, student_id)
VALUES (16, 7, 1);

INSERT INTO public.Module_attendees(module_attendees_id, module_id, student_id)
VALUES (17, 8, 1);

INSERT INTO public.Module_attendees(module_attendees_id, module_id, student_id)
VALUES (18, 9, 1);

INSERT INTO public.Module_attendees(module_attendees_id, module_id, student_id)
VALUES (19, 7, 2);

INSERT INTO public.Module_attendees(module_attendees_id, module_id, student_id)
VALUES (20, 8, 2);

INSERT INTO public.Module_attendees(module_attendees_id, module_id, student_id)
VALUES (21, 9, 2);

INSERT INTO public.Module_attendees(module_attendees_id, module_id, student_id)
VALUES (22, 7, 3);

INSERT INTO public.Module_attendees(module_attendees_id, module_id, student_id)
VALUES (23, 8, 3);

/* /* Student 3 is absent from the last module of the day */
INSERT INTO public.Module_attendees(module_attendees_id, module_id, student_id)
VALUES (24, 9, 3);
 */