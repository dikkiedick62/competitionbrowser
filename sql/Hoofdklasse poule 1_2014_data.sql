delete from cm_match_details where game_id in (select game_id from cm_matches where cpn_id = (select id from cm_competitions where name = 'Hoofdklasse poule 1' and ssn_id like '2014%'));
delete from cm_matches where cpn_id = (select id from cm_competitions where name = 'Hoofdklasse poule 1' and ssn_id like '2014%');
insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('05-03-2015','%d-%m-%Y'),(select id from cm_competitions where name = 'Hoofdklasse poule 1' and ssn_id like '2014%'),449089,'Zeekant','SNOOKERIJ 1',7,2);
insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('12-03-2015','%d-%m-%Y'),(select id from cm_competitions where name = 'Hoofdklasse poule 1' and ssn_id like '2014%'),449093,'Sneeuwwitje e/d 7 dwergen','Snookerloopy',4,5);
insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('19-03-2015','%d-%m-%Y'),(select id from cm_competitions where name = 'Hoofdklasse poule 1' and ssn_id like '2014%'),449095,'Sneeuwwitje e/d 7 dwergen','SNOOKERIJ 1',3,6);
insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('19-03-2015','%d-%m-%Y'),(select id from cm_competitions where name = 'Hoofdklasse poule 1' and ssn_id like '2014%'),449096,'Snookerloopy','Zeekant',2,7);
insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('26-03-2015','%d-%m-%Y'),(select id from cm_competitions where name = 'Hoofdklasse poule 1' and ssn_id like '2014%'),449503,'FINAL TOUCH 2','Zeekant',5,4);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449503,'Albert Pronk','Raymond Huisman',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449503,'David Lucieer','Marcel Scholtes',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449503,'Eric van Lokven','Jarl Hinfelaar',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449503,'Albert Pronk','Marcel Scholtes',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449503,'David Lucieer','Jarl Hinfelaar',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449503,'Eric van Lokven','Raymond Huisman',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449503,'Eric van Lokven','Marcel Scholtes',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449503,'David Lucieer','Raymond Huisman',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449503,'Albert Pronk','Jarl Hinfelaar',1,0);
insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('30-03-2015','%d-%m-%Y'),(select id from cm_competitions where name = 'Hoofdklasse poule 1' and ssn_id like '2014%'),449097,'SNOOKERIJ 1','Snookerloopy',7,2);
insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('06-04-2015','%d-%m-%Y'),(select id from cm_competitions where name = 'Hoofdklasse poule 1' and ssn_id like '2014%'),449100,'SNOOKERIJ 1','FINAL TOUCH 2',5,4);
insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('09-04-2015','%d-%m-%Y'),(select id from cm_competitions where name = 'Hoofdklasse poule 1' and ssn_id like '2014%'),449101,'Sneeuwwitje e/d 7 dwergen','Zeekant',6,3);
insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('13-04-2015','%d-%m-%Y'),(select id from cm_competitions where name = 'Hoofdklasse poule 1' and ssn_id like '2014%'),449103,'SNOOKERIJ 1','Zeekant',2,7);
insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('16-04-2015','%d-%m-%Y'),(select id from cm_competitions where name = 'Hoofdklasse poule 1' and ssn_id like '2014%'),449104,'FINAL TOUCH 2','Snookerloopy',9,0);
insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('30-04-2015','%d-%m-%Y'),(select id from cm_competitions where name = 'Hoofdklasse poule 1' and ssn_id like '2014%'),449574,'FINAL TOUCH 2','Sneeuwwitje e/d 7 dwergen',6,3);
insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('07-05-2015','%d-%m-%Y'),(select id from cm_competitions where name = 'Hoofdklasse poule 1' and ssn_id like '2014%'),449108,'Snookerloopy','Sneeuwwitje e/d 7 dwergen',7,2);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449108,'Eric Sminia','René Verheyden',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449108,'Stefan Dijkhuizen','Rob Kanninga',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449108,'John Wehrmann','Ronald Peeters',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449108,'Eric Sminia','Rob Kanninga',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449108,'Stefan Dijkhuizen','Ronald Peeters',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449108,'John Wehrmann','René Verheyden',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449108,'John Wehrmann','Rob Kanninga',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449108,'Stefan Dijkhuizen','René Verheyden',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449108,'Eric Sminia','Ronald Peeters',1,0);
insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('08-05-2015','%d-%m-%Y'),(select id from cm_competitions where name = 'Hoofdklasse poule 1' and ssn_id like '2014%'),449467,'Zeekant','FINAL TOUCH 2',7,2);
insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('11-05-2015','%d-%m-%Y'),(select id from cm_competitions where name = 'Hoofdklasse poule 1' and ssn_id like '2014%'),449109,'SNOOKERIJ 1','Sneeuwwitje e/d 7 dwergen',2,7);
insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('15-05-2015','%d-%m-%Y'),(select id from cm_competitions where name = 'Hoofdklasse poule 1' and ssn_id like '2014%'),449504,'Zeekant','Snookerloopy',5,4);
insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('21-05-2015','%d-%m-%Y'),(select id from cm_competitions where name = 'Hoofdklasse poule 1' and ssn_id like '2014%'),449113,'Sneeuwwitje e/d 7 dwergen','FINAL TOUCH 2',3,6);
insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('21-05-2015','%d-%m-%Y'),(select id from cm_competitions where name = 'Hoofdklasse poule 1' and ssn_id like '2014%'),449114,'Snookerloopy','SNOOKERIJ 1',5,4);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449114,'Eric Sminia','Hans van Ommeren',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449114,'John Wehrmann','Aad Wijsman',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449114,'Asghar Gafoer','Michel Noorduin',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449114,'Eric Sminia','Aad Wijsman',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449114,'John Wehrmann','Michel Noorduin',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449114,'Asghar Gafoer','Hans van Ommeren',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449114,'Asghar Gafoer','Aad Wijsman',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449114,'John Wehrmann','Hans van Ommeren',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449114,'Eric Sminia','Michel Noorduin',0,1);
insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('28-05-2015','%d-%m-%Y'),(select id from cm_competitions where name = 'Hoofdklasse poule 1' and ssn_id like '2014%'),449831,'Zeekant','Sneeuwwitje e/d 7 dwergen',6,3);
insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('28-05-2015','%d-%m-%Y'),(select id from cm_competitions where name = 'Hoofdklasse poule 1' and ssn_id like '2014%'),449117,'FINAL TOUCH 2','SNOOKERIJ 1',7,2);