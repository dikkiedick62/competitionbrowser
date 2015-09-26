delete from cm_match_details where game_id in (select game_id from cm_matches where cpn_id = (select id from cm_competitions where name = '' and ssn_id like '2012%'));
delete from cm_matches where cpn_id = (select id from cm_competitions where name = '' and ssn_id like '2012%');
