create procedure update_ticket(IN p_ticket_id integer, IN p_country_id integer, IN p_city_id integer, IN p_user_id integer, IN p_ticket_number integer, IN p_date date)
    language plpgsql
as
$$
begin
	update ticket
	set date = p_date
	where ticket_id = p_ticket_id;
end;
$$;

alter procedure update_ticket(integer, integer, integer, integer, integer, date) owner to postgres;

