create procedure update_users(IN p_user_id integer, IN p_fname character, IN p_lname character, IN p_age character, IN p_username character varying, IN p_password character varying, IN p_role_id integer)
    language plpgsql
as
$$
begin
	update users
	set fName = p_fName,
	    lName = p_lName,
	    age = p_age,
	    username = p_username,
	    password = p_password
	where user_id = p_user_id;
end;
$$;

alter procedure update_users(integer, char, char, char, varchar, varchar, integer) owner to postgres;

