create procedure insert_users(INOUT p_fname character, INOUT p_lname character, INOUT p_age integer, INOUT p_username character varying, INOUT p_password character varying, INOUT p_role_id integer)
    language plpgsql
as
$$
BEGIN

    if p_fName is NULL then
        RAISE EXCEPTION 'Please enter first name.';
    end if;

    if p_lName is NULL then
        RAISE EXCEPTION 'Please enter last name.';
    end if;

    if p_age is NULL then
        RAISE EXCEPTION 'Please enter age.';
    end if;

    if p_username is NULL then
        RAISE EXCEPTION 'Please enter username.';
    end if;

    if p_password is NULL then
        RAISE EXCEPTION 'Please enter password.';
    end if;

    insert into users(fName, lName, age, username, password, role_id)
    values(p_fName, p_lName, p_age, p_username, p_password, p_role_id);

END;
$$;

alter procedure insert_users(inout char, inout char, inout integer, inout varchar, inout varchar, inout integer) owner to postgres;

