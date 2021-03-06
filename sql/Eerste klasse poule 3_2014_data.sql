delete from cm_match_details where game_id in (select game_id from cm_matches where cpn_id = (select id from cm_competitions where name = 'Eerste klasse poule 3' and ssn_id like '2014%'));
delete from cm_matches where cpn_id = (select id from cm_competitions where name = 'Eerste klasse poule 3' and ssn_id like '2014%');
insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('04-03-2015','%d-%m-%Y'),(select id from cm_competitions where name = 'Eerste klasse poule 3' and ssn_id like '2014%'),449198,'Ames 2  De Zwervers','The Chokers',7,2);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449198,'Ko de Ruijter','Louis Leurs',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449198,'Hans Moerkerk','Michiel Ronhaar',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449198,'Frans van Poppel','Geert Dutman',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449198,'Ko de Ruijter','Michiel Ronhaar',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449198,'Hans Moerkerk','Geert Dutman',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449198,'Frans van Poppel','Louis Leurs',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449198,'Frans van Poppel','Michiel Ronhaar',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449198,'Hans Moerkerk','Louis Leurs',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449198,'Ko de Ruijter','Geert Dutman',1,0);
insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('18-03-2015','%d-%m-%Y'),(select id from cm_competitions where name = 'Eerste klasse poule 3' and ssn_id like '2014%'),449203,'Ames 2  De Zwervers','VEGHEL 2',3,6);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449203,'Ko de Ruijter','Gertjan Huiskes',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449203,'Anthony Bisschops','Jacques Willem van Melis',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449203,'Math van der Linden','René van Bavel',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449203,'Ko de Ruijter','Jacques Willem van Melis',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449203,'Anthony Bisschops','René van Bavel',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449203,'Math van der Linden','Gertjan Huiskes',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449203,'Math van der Linden','Jacques Willem van Melis',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449203,'Anthony Bisschops','Gertjan Huiskes',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449203,'Ko de Ruijter','René van Bavel',0,1);
insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('02-04-2015','%d-%m-%Y'),(select id from cm_competitions where name = 'Eerste klasse poule 3' and ssn_id like '2014%'),449205,'VEGHEL 2','The Chokers',5,4);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449205,'Pieter van Driel','Nienke Reijntjes',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449205,'René van Bavel','Michiel Ronhaar',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449205,'Gertjan Huiskes','Gert Jan Niels',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449205,'Pieter van Driel','Michiel Ronhaar',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449205,'René van Bavel','Gert Jan Niels',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449205,'Gertjan Huiskes','Nienke Reijntjes',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449205,'Gertjan Huiskes','Michiel Ronhaar',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449205,'René van Bavel','Nienke Reijntjes',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449205,'Pieter van Driel','Gert Jan Niels',1,0);
insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('22-04-2015','%d-%m-%Y'),(select id from cm_competitions where name = 'Eerste klasse poule 3' and ssn_id like '2014%'),449724,'The Chokers','Ames 2  De Zwervers',8,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449724,'Gert Jan Niels','Anthony Bisschops',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449724,'Geert Dutman','Math van der Linden',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449724,'Nienke Reijntjes','Wim Manders',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449724,'Gert Jan Niels','Math van der Linden',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449724,'Geert Dutman','Wim Manders',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449724,'Nienke Reijntjes','Anthony Bisschops',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449724,'Nienke Reijntjes','Math van der Linden',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449724,'Geert Dutman','Anthony Bisschops',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449724,'Gert Jan Niels','Wim Manders',1,0);
insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('14-05-2015','%d-%m-%Y'),(select id from cm_competitions where name = 'Eerste klasse poule 3' and ssn_id like '2014%'),449213,'VEGHEL 2','Ames 2  De Zwervers',6,3);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449213,'Sebastiaan Henstra','Frans van Poppel',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449213,'Theo van den Anker','Wim Manders',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449213,'Pieter van Driel','Anthony Bisschops',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449213,'Sebastiaan Henstra','Wim Manders',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449213,'Theo van den Anker','Anthony Bisschops',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449213,'Pieter van Driel','Frans van Poppel',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449213,'Pieter van Driel','Wim Manders',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449213,'Theo van den Anker','Frans van Poppel',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449213,'Sebastiaan Henstra','Anthony Bisschops',1,0);
insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('19-05-2015','%d-%m-%Y'),(select id from cm_competitions where name = 'Eerste klasse poule 3' and ssn_id like '2014%'),449214,'The Chokers','VEGHEL 2',7,2);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449214,'Gert Jan Niels','Sebastiaan Henstra',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449214,'Michiel Ronhaar','René van Bavel',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449214,'Louis Leurs','Theo van den Anker',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449214,'Gert Jan Niels','René van Bavel',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449214,'Michiel Ronhaar','Theo van den Anker',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449214,'Louis Leurs','Sebastiaan Henstra',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449214,'Louis Leurs','René van Bavel',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449214,'Michiel Ronhaar','Sebastiaan Henstra',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449214,'Gert Jan Niels','Theo van den Anker',1,0);
