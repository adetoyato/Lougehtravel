create procedure insert_ticket(INOUT p_ticket_id integer, INOUT p_country_id integer, INOUT p_city_id integer, INOUT p_user_id integer, INOUT p_ticket_number integer, INOUT p_date date)
    language plpgsql
as
$$
BEGIN

    if p_ticket_id is NULL then
        RAISE EXCEPTION 'ticket_id must have a value';
    end if;

    if p_country_id is NULL then
        RAISE EXCEPTION 'country_id must have a value';
    end if;

    if p_city_id is NULL then
        RAISE EXCEPTION 'city_id must have a value';
    end if;

    if p_user_id is NULL then
        RAISE EXCEPTION 'user_id must have a value';
    end if;

    if p_ticket_number is NULL then
        RAISE EXCEPTION 'Ticket Number should have a value.';
    end if;

    if p_date is NULL then
        RAISE EXCEPTION 'Please enter date.';
    end if;

    insert into ticket (ticket_id, country_id, city_id, user_id, date)
    values(p_ticket_id, p_country_id, p_city_id, p_user_id, p_date);

END
$$;

alter procedure insert_ticket(inout integer, inout integer, inout integer, inout integer, inout integer, inout date) owner to postgres;

