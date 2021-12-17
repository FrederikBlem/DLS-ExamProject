CREATE OR REPLACE FUNCTION AUTHENTICATE_STUDENT(
    given_id INTEGER,
    given_password VARCHAR
)
returns bit
LANGUAGE plpgsql SECURITY DEFINER
AS
$$
declare
isAuthenticated bit;
begin
select count(*)
into isauthenticated
from student
where student_id = given_id AND student_password = given_password;

return isauthenticated;
end;
$$;


CREATE OR REPLACE FUNCTION AUTHENTICATE_TEACHER(
    given_id INTEGER,
    given_password VARCHAR
)
returns bit
LANGUAGE plpgsql SECURITY DEFINER
AS
$$
declare
isAuthenticated bit;
begin
select count(*)
into isauthenticated
from teacher
where teacher_id = given_id AND teacher_password = given_password;

return isauthenticated;
end;
$$;

/* Still needs the fake authentication? - might do that separately using above functions*/
CREATE OR REPLACE PROCEDURE INSERT_STUDENT (
    given_email VARCHAR,
    given_password VARCHAR,
    given_phone_number VARCHAR
)
LANGUAGE plpgsql SECURITY DEFINER
AS $$
begin
    INSERT INTO public.student(student_email, student_password, student_phone_number)
    VALUES (given_email, given_password, given_phone_number);
end; $$;

/* Still needs the fake authentication? - might do that separately using above functions*/
CREATE OR REPLACE PROCEDURE ASSIGN_STUDENT_TO_SUBJECT_BY_ID (
    given_student_id INTEGER,
    given_subject_id INTEGER
)
    LANGUAGE plpgsql SECURITY DEFINER
AS $$
begin
    INSERT INTO public.subject_students(student_id, subject_id)
    VALUES (given_student_id, given_subject_id);
end; $$;

/* Still needs the fake authentication? - might do that separately using above functions*/

/* THIS DOESN'T WORK YET */
CREATE OR REPLACE PROCEDURE CREATE_MODULE_AND_ASSIGN_STUDENTS_OF_SUBJECT (
    given_teacher_id INTEGER,
    given_subject_id INTEGER,
    given_module_date VARCHAR,
    given_module_code VARCHAR
)
    LANGUAGE plpgsql SECURITY DEFINER
AS $$
    declare new_module_id INTEGER;
    declare subject_students INTEGER[];
begin
    subject_students := ARRAY(
            SELECT student_id FROM subject_students WHERE subject_id = given_subject_id
        );

    WITH NEW_MODULE AS(
        INSERT INTO public.module(teacher_id, subject_id, module_date, module_code)
            VALUES (given_teacher_id, given_subject_id, given_module_date, given_module_code)
            returning module_id into new_module_id
    )
    INSERT INTO public.module_students(module_id, student_id)
    SELECT 1 new_module_id, x
    FROM unnest(subject_students) x;

    /*
    INSERT INTO public.module_students(module_id, student_id)
    VALUES (new_module_id, (SELECT student_id FROM subject_students WHERE subject_id = given_subject_id));
    */

end; $$;



/* Procedure calls and Functions, too */

/* /* This doesn't work yet */
CALL CREATE_MODULE_AND_ASSIGN_STUDENTS_OF_SUBJECT(1, 1, '2021-12-20', 'physics-module-4');
*/

/*
CALL INSERT_STUDENT('SeventhStudent@schoolmail.dk', 'Vodka123', '00000007');

SELECT AUTHENTICATE_STUDENT(1, 'Coffee123');
select AUTHENTICATE_TEACHER(1, 'CatsName123');

SELECT AUTHENTICATE_STUDENT(2, 'WrongPassword');
select AUTHENTICATE_TEACHER(2, 'WrongPassword');
 */

