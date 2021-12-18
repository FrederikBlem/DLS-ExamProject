CREATE TABLE IF NOT EXISTS public.Teacher(
    teacher_id SERIAL PRIMARY KEY,
    teacher_email varchar not null,
    teacher_password varchar not null,
    teacher_full_name varchar not null
    );

CREATE TABLE IF NOT EXISTS public.Student(
    student_id SERIAL PRIMARY KEY,
    student_email varchar not null,
    student_password varchar not null,
    student_phone_number varchar not null
    );

CREATE TABLE IF NOT EXISTS public.Subject(
    subject_id SERIAL PRIMARY KEY,
    subject_name varchar not null
    );

CREATE TABLE IF NOT EXISTS public.Subject_students(
    subject_students_id SERIAL PRIMARY KEY,
    student_id integer references public.Student,
    subject_id integer references public.Subject
);

CREATE TABLE IF NOT EXISTS public.Module(
    module_id SERIAL PRIMARY KEY,
    teacher_id integer references public.Teacher,
    subject_id integer references public.Subject,
    module_date varchar not null,
    module_code varchar not null
    );

CREATE TABLE IF NOT EXISTS public.Module_students(
    module_students_id SERIAL PRIMARY KEY,
    module_id integer references public.Module,
    student_id integer references public.Student,
    has_attended bool not null
);

/*
CREATE TABLE IF NOT EXISTS public.Module_attendees(
    module_attendees_id SERIAL PRIMARY KEY,
    module_id integer references public.Module,
    student_id integer references public.Student
);
*/