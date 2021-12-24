
-- Function test

SELECT get_athletes_by_sport('Judo')
    end;
$$ LANGUAGE plpgsql;

--procedure
CALL create_get_athletes_by_sport('Judo');

select * from sports;

--trigger
insert into athletes(ath_id, ath_name) VALUES (101010, 'Pasha');

SELECT * from athletes