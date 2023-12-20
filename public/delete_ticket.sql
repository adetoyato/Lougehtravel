create procedure delete_ticket(IN p_ticket_id integer)
    language plpgsql
as
$$
begin
	delete from ticket
	where ticket_id = p_ticket_id;
end;
$$;

alter procedure delete_ticket(integer) owner to postgres;

