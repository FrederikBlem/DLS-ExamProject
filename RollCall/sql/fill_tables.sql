/* Sample teachers who are famous historical scientists */
INSERT INTO public.Teacher(teacher_id, teacher_email, teacher_password, teacher_full_name)
VALUES (DEFAULT, 'FirstTeacher@schoolmail.dk', 'CatsName123', 'Albert Einstein');

INSERT INTO public.Teacher(teacher_id, teacher_email, teacher_password, teacher_full_name)
VALUES (DEFAULT, 'SecondTeacher@schoolmail.dk', 'DogsName123', 'Stephen Hawking');

INSERT INTO public.Teacher(teacher_id, teacher_email, teacher_password, teacher_full_name)
VALUES (DEFAULT, 'ThirdTeacher@schoolmail.dk', 'HamstersName123', 'Marie Curie');

/* Sample students */
INSERT INTO public.Student(student_id, student_email, student_password, student_phone_number)
VALUES (DEFAULT, 'FirstStudent@schoolmail.dk', 'Coffee123', '00000001');

INSERT INTO public.Student(student_id, student_email, student_password, student_phone_number)
VALUES (DEFAULT, 'SecondStudent@schoolmail.dk', 'GreenTea123', '00000002');

INSERT INTO public.Student(student_id, student_email, student_password, student_phone_number)
VALUES (DEFAULT, 'ThirdStudent@schoolmail.dk', 'Chocolate123', '00000003');

INSERT INTO public.Student(student_id, student_email, student_password, student_phone_number)
VALUES (DEFAULT, 'FourthStudent@schoolmail.dk', 'DarkBeer123', '00000004');

INSERT INTO public.Student(student_id, student_email, student_password, student_phone_number)
VALUES (DEFAULT, 'FifthStudent@schoolmail.dk', 'RedWine123', '00000005');

INSERT INTO public.Student(student_id, student_email, student_password, student_phone_number)
VALUES (DEFAULT, 'SixthStudent@schoolmail.dk', 'WhiteRum123', '00000006');

/* Subjects */
INSERT INTO public.Subject(subject_id, subject_name)
VALUES(DEFAULT, 'Physics');

INSERT INTO public.Subject(subject_id, subject_name)
VALUES(DEFAULT, 'Astronomy');

INSERT INTO public.Subject(subject_id, subject_name)
VALUES(DEFAULT, 'Mathematics');

/* Physics modules on 2012.12.16 */
INSERT INTO public.Module(module_id, teacher_id, subject_id, module_date, module_code)
VALUES (DEFAULT, 1, 1, '2021.12.16', 'physics-module-1');

INSERT INTO public.Module(module_id, teacher_id, subject_id, module_date, module_code)
VALUES (DEFAULT, 1, 1, '2021.12.16', 'physics-module-2');

INSERT INTO public.Module(module_id, teacher_id, subject_id, module_date, module_code)
VALUES (DEFAULT, 1, 1, '2021.12.16', 'physics-module-3');

/* Astronomy modules on 2012.12.16 */
INSERT INTO public.Module(module_id, teacher_id, subject_id, module_date, module_code)
VALUES (DEFAULT, 2, 2, '2021.12.16', 'astronomy-module-1');

INSERT INTO public.Module(module_id, teacher_id, subject_id, module_date, module_code)
VALUES (DEFAULT, 2, 2, '2021.12.16', 'astronomy-module-2');

INSERT INTO public.Module(module_id, teacher_id, subject_id, module_date, module_code)
VALUES (DEFAULT, 2, 2, '2021.12.16', 'astronomy-module-3');

/* Mathematics modules on 2012.12.17 (1 day after the other two subjects' modules)*/
INSERT INTO public.Module(module_id, teacher_id, subject_id, module_date, module_code)
VALUES (DEFAULT, 3, 3, '2021.12.17', 'mathematics-module-1');

INSERT INTO public.Module(module_id, teacher_id, subject_id, module_date, module_code)
VALUES (DEFAULT, 3, 3, '2021.12.17', 'mathematics-module-2');

INSERT INTO public.Module(module_id, teacher_id, subject_id, module_date, module_code)
VALUES (DEFAULT, 3, 3, '2021.12.17', 'mathematics-module-3');

/* Assign students to subjects (physics) */
INSERT INTO public.Subject_students(subject_students_id, student_id, subject_id)
VALUES (DEFAULT, 1, 1);

INSERT INTO public.Subject_students(subject_students_id, student_id, subject_id)
VALUES (DEFAULT, 2, 1);

INSERT INTO public.Subject_students(subject_students_id, student_id, subject_id)
VALUES (DEFAULT, 3, 1);

/* Assign students to subjects (astronomy) */
INSERT INTO public.Subject_students(subject_students_id, student_id, subject_id)
VALUES (DEFAULT, 4, 2);

INSERT INTO public.Subject_students(subject_students_id, student_id, subject_id)
VALUES (DEFAULT, 5, 2);

INSERT INTO public.Subject_students(subject_students_id, student_id, subject_id)
VALUES (DEFAULT, 6, 2);

/* Assign students to subjects (mathematics) */
INSERT INTO public.Subject_students(subject_students_id, student_id, subject_id)
VALUES (DEFAULT, 1, 3);

INSERT INTO public.Subject_students(subject_students_id, student_id, subject_id)
VALUES (DEFAULT, 2, 3);

INSERT INTO public.Subject_students(subject_students_id, student_id, subject_id)
VALUES (DEFAULT, 3, 3);

/* Assign students to modules 1-3 (physics) */
INSERT INTO public.Module_students(module_students_id, module_id, student_id)
VALUES (DEFAULT, 1, 1);

INSERT INTO public.Module_students(module_students_id, module_id, student_id)
VALUES (DEFAULT, 2, 1);

INSERT INTO public.Module_students(module_students_id, module_id, student_id)
VALUES (DEFAULT, 3, 1);

INSERT INTO public.Module_students(module_students_id, module_id, student_id)
VALUES (DEFAULT, 1, 2);

INSERT INTO public.Module_students(module_students_id, module_id, student_id)
VALUES (DEFAULT, 2, 2);

INSERT INTO public.Module_students(module_students_id, module_id, student_id)
VALUES (DEFAULT, 3, 2);

INSERT INTO public.Module_students(module_students_id, module_id, student_id)
VALUES (DEFAULT, 1, 3);

INSERT INTO public.Module_students(module_students_id, module_id, student_id)
VALUES (DEFAULT, 2, 3);

INSERT INTO public.Module_students(module_students_id, module_id, student_id)
VALUES (DEFAULT, 3, 3);

/* Assign students to modules 4-6 (astronomy) */
INSERT INTO public.Module_students(module_students_id, module_id, student_id)
VALUES (DEFAULT, 4, 4);

INSERT INTO public.Module_students(module_students_id, module_id, student_id)
VALUES (DEFAULT, 5, 4);

INSERT INTO public.Module_students(module_students_id, module_id, student_id)
VALUES (DEFAULT, 6, 4);

INSERT INTO public.Module_students(module_students_id, module_id, student_id)
VALUES (DEFAULT, 4, 5);

INSERT INTO public.Module_students(module_students_id, module_id, student_id)
VALUES (DEFAULT, 5, 5);

INSERT INTO public.Module_students(module_students_id, module_id, student_id)
VALUES (DEFAULT, 6, 5);

INSERT INTO public.Module_students(module_students_id, module_id, student_id)
VALUES (DEFAULT, 4, 6);

INSERT INTO public.Module_students(module_students_id, module_id, student_id)
VALUES (DEFAULT, 5, 6);

INSERT INTO public.Module_students(module_students_id, module_id, student_id)
VALUES (DEFAULT, 6, 6);

/* Assign students to modules 7-9 (mathematics) */
INSERT INTO public.Module_students(module_students_id, module_id, student_id)
VALUES (DEFAULT, 7, 1);

INSERT INTO public.Module_students(module_students_id, module_id, student_id)
VALUES (DEFAULT, 8, 1);

INSERT INTO public.Module_students(module_students_id, module_id, student_id)
VALUES (DEFAULT, 9, 1);

INSERT INTO public.Module_students(module_students_id, module_id, student_id)
VALUES (DEFAULT, 7, 2);

INSERT INTO public.Module_students(module_students_id, module_id, student_id)
VALUES (DEFAULT, 8, 2);

INSERT INTO public.Module_students(module_students_id, module_id, student_id)
VALUES (DEFAULT, 9, 2);

INSERT INTO public.Module_students(module_students_id, module_id, student_id)
VALUES (DEFAULT, 7, 3);

INSERT INTO public.Module_students(module_students_id, module_id, student_id)
VALUES (DEFAULT, 8, 3);

INSERT INTO public.Module_students(module_students_id, module_id, student_id)
VALUES (DEFAULT, 9, 3);

/* Assign attendance of students to modules 1-3 (physics) */
INSERT INTO public.Module_attendees(module_attendees_id, module_id, student_id)
VALUES (DEFAULT, 1, 1);

INSERT INTO public.Module_attendees(module_attendees_id, module_id, student_id)
VALUES (DEFAULT, 2, 1);

INSERT INTO public.Module_attendees(module_attendees_id, module_id, student_id)
VALUES (DEFAULT, 3, 1);

INSERT INTO public.Module_attendees(module_attendees_id, module_id, student_id)
VALUES (DEFAULT, 1, 2);

INSERT INTO public.Module_attendees(module_attendees_id, module_id, student_id)
VALUES (DEFAULT, 2, 2);

INSERT INTO public.Module_attendees(module_attendees_id, module_id, student_id)
VALUES (DEFAULT, 3, 2);

INSERT INTO public.Module_attendees(module_attendees_id, module_id, student_id)
VALUES (DEFAULT, 1, 3);

INSERT INTO public.Module_attendees(module_attendees_id, module_id, student_id)
VALUES (DEFAULT, 2, 3);

INSERT INTO public.Module_attendees(module_attendees_id, module_id, student_id)
VALUES (DEFAULT, 3, 3);

/* Assign attendance of students to modules 4-6 (astronomy) */
INSERT INTO public.Module_attendees(module_attendees_id, module_id, student_id)
VALUES (DEFAULT, 4, 4);

INSERT INTO public.Module_attendees(module_attendees_id, module_id, student_id)
VALUES (DEFAULT, 5, 4);

INSERT INTO public.Module_attendees(module_attendees_id, module_id, student_id)
VALUES (DEFAULT, 6, 4);

INSERT INTO public.Module_attendees(module_attendees_id, module_id, student_id)
VALUES (DEFAULT, 4, 5);

INSERT INTO public.Module_attendees(module_attendees_id, module_id, student_id)
VALUES (DEFAULT, 5, 5);

INSERT INTO public.Module_attendees(module_attendees_id, module_id, student_id)
VALUES (DEFAULT, 6, 5);

/* /* Student six is absent */
INSERT INTO public.Module_attendees(module_attendees_id, module_id, student_id)
VALUES (DEFAULT, 4, 6);

INSERT INTO public.Module_attendees(module_attendees_id, module_id, student_id)
VALUES (DEFAULT, 5, 6);

INSERT INTO public.Module_attendees(module_attendees_id, module_id, student_id)
VALUES (DEFAULT, 6, 6);
 */

/* Assign attendance of students to modules 7-9 (mathematics) */
INSERT INTO public.Module_attendees(module_attendees_id, module_id, student_id)
VALUES (DEFAULT, 7, 1);

INSERT INTO public.Module_attendees(module_attendees_id, module_id, student_id)
VALUES (DEFAULT, 8, 1);

INSERT INTO public.Module_attendees(module_attendees_id, module_id, student_id)
VALUES (DEFAULT, 9, 1);

INSERT INTO public.Module_attendees(module_attendees_id, module_id, student_id)
VALUES (DEFAULT, 7, 2);

INSERT INTO public.Module_attendees(module_attendees_id, module_id, student_id)
VALUES (DEFAULT, 8, 2);

INSERT INTO public.Module_attendees(module_attendees_id, module_id, student_id)
VALUES (DEFAULT, 9, 2);

INSERT INTO public.Module_attendees(module_attendees_id, module_id, student_id)
VALUES (DEFAULT, 7, 3);

INSERT INTO public.Module_attendees(module_attendees_id, module_id, student_id)
VALUES (DEFAULT, 8, 3);

/* /* Student 3 is absent from the last module of the day */
INSERT INTO public.Module_attendees(module_attendees_id, module_id, student_id)
VALUES (24, 9, 3);
 */