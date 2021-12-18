/* Not every operation/query needs a function or procedure,
   I chose to create a number of them to get a gentler difficulty curve on development */

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

CREATE OR REPLACE PROCEDURE CREATE_MODULE_AND_ASSIGN_STUDENTS_OF_SUBJECT (
    given_teacher_id INTEGER,
    given_subject_id INTEGER,
    given_module_date VARCHAR,
    given_module_code VARCHAR
)
    LANGUAGE plpgsql SECURITY DEFINER
AS $$
    declare new_module_id module.module_id%TYPE; -- Variable to hold the id of the newly created module.
    declare subject_students_ids INTEGER[]; -- Array to hold the id's of the students assigned to the given subject.
begin
    -- Create the Module.
    INSERT INTO public.module(teacher_id, subject_id, module_date, module_code)
    VALUES (given_teacher_id, given_subject_id, given_module_date, given_module_code)
    returning public.module.module_id into new_module_id; -- Receive the created module's id into the variable.

    -- Fill the array with id's of students already assigned to the subject.
    subject_students_ids := ARRAY(
    SELECT student_id FROM subject_students WHERE subject_id = given_subject_id
    );

    -- Assign the students to the module using the array and the new module's id.
    INSERT INTO public.module_students(module_id, student_id, has_attended)
    SELECT new_module_id, x, 0
    FROM unnest(subject_students_ids) x;

end; $$;

CREATE OR REPLACE FUNCTION GET_ASSIGNED_MODULES_OF_STUDENT_BY_ID(
    given_student_id INTEGER
)
    returns integer[]
    LANGUAGE plpgsql SECURITY DEFINER
AS $$
    --declare assigned_subjects integer[];
    declare assigned_modules integer[];
begin
    -- Get the student's assigned subjects
    /*
    assigned_subjects := ARRAY(
            SELECT subject_id FROM subject_students WHERE student_id = given_student_id
        );
    */
    -- Get the student's assigned modules
    assigned_modules := ARRAY(
            SELECT module_id FROM module_students WHERE student_id = given_student_id
        );

    RETURN assigned_modules;

end; $$;

CREATE OR REPLACE FUNCTION GET_ATTENDED_MODULES_OF_STUDENT_BY_ID(
    given_student_id INTEGER
)
returns integer[]
    LANGUAGE plpgsql SECURITY DEFINER
AS $$
    --declare assigned_subjects integer[];
    declare attended_modules integer[];
begin
    -- Get the student's assigned subjects
    /*
    assigned_subjects := ARRAY(
            SELECT subject_id FROM subject_students WHERE student_id = given_student_id
        );
    */
    -- Get the student's attended modules
    attended_modules := ARRAY(
            SELECT module_id FROM module_students WHERE student_id = given_student_id AND has_attended = true
        );

    RETURN attended_modules;
end; $$;

CREATE OR REPLACE FUNCTION GET_ATTENDANCE_PERCENTAGE_OF_STUDENT_BY_ID(
    given_student_id INTEGER
)
    returns integer
    LANGUAGE plpgsql SECURITY DEFINER
AS $$
    --declare assigned_subjects integer[];
declare assigned_modules integer[];
declare attended_modules integer[];
declare assigned_count float;
declare attended_count float;
declare percentage_score integer;
begin
    -- Get the student's assigned subjects
    /*
    assigned_subjects := ARRAY(
            SELECT subject_id FROM subject_students WHERE student_id = given_student_id
        );
    */
    -- Get the student's score
    assigned_modules := ARRAY(
            SELECT module_id FROM module_students WHERE student_id = given_student_id
        );
    -- Get the student's attended modules
    attended_modules := ARRAY(
            SELECT module_id FROM module_students WHERE student_id = given_student_id AND has_attended = true
        );

    assigned_count = array_length(assigned_modules, 1);
    attended_count = array_length(attended_modules, 1);

    percentage_score = attended_count / assigned_count * 100;

    RETURN percentage_score;

end; $$;

/* Procedure calls and Functions, too */

--SELECT GET_ASSIGNED_MODULES_OF_STUDENT_BY_ID(3);
--SELECT GET_ATTENDED_MODULES_OF_STUDENT_BY_ID(3);
--SELECT GET_ATTENDANCE_PERCENTAGE_OF_STUDENT_BY_ID(3);

/*
CALL INSERT_STUDENT('SeventhStudent@schoolmail.dk', 'Vodka123', '00000007');
CALL ASSIGN_STUDENT_TO_SUBJECT_BY_ID(7, 1);

/* This now works! */
CALL CREATE_MODULE_AND_ASSIGN_STUDENTS_OF_SUBJECT(1, 1, '2021-12-20', 'physics-module-4');
CALL CREATE_MODULE_AND_ASSIGN_STUDENTS_OF_SUBJECT(2, 2, '2021-12-20', 'astronomy-module-4');


SELECT AUTHENTICATE_STUDENT(1, 'Coffee123');
select AUTHENTICATE_TEACHER(1, 'CatsName123');

SELECT AUTHENTICATE_STUDENT(2, 'WrongPassword');
select AUTHENTICATE_TEACHER(2, 'WrongPassword');
 */

