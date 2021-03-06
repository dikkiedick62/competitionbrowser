delete from cm_match_details where game_id in (select game_id from cm_matches where cpn_id = (select id from cm_competitions where name = 'Tweede klasse poule 3' and ssn_id like '2014%'));
delete from cm_matches where cpn_id = (select id from cm_competitions where name = 'Tweede klasse poule 3' and ssn_id like '2014%');
insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('02-03-2015','%d-%m-%Y'),(select id from cm_competitions where name = 'Tweede klasse poule 3' and ssn_id like '2014%'),449308,'Ketel 1','HOGEWOERD 3',7,2);
insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('06-03-2015','%d-%m-%Y'),(select id from cm_competitions where name = 'Tweede klasse poule 3' and ssn_id like '2014%'),449309,'Azzurri','NNPV',4,5);
insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('10-03-2015','%d-%m-%Y'),(select id from cm_competitions where name = 'Tweede klasse poule 3' and ssn_id like '2014%'),449311,'Spijkenisse','Azzurri',5,4);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449311,'Dennis de Ruiter','Gozewijn van Laatum',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449311,'Bas Lange','Arno van Vlokhoven',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449311,'Marcel Paulus','René de Winter',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449311,'Dennis de Ruiter','Arno van Vlokhoven',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449311,'Bas Lange','René de Winter',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449311,'Marcel Paulus','Gozewijn van Laatum',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449311,'Marcel Paulus','Arno van Vlokhoven',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449311,'Bas Lange','Gozewijn van Laatum',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449311,'Dennis de Ruiter','René de Winter',1,0);
insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('16-03-2015','%d-%m-%Y'),(select id from cm_competitions where name = 'Tweede klasse poule 3' and ssn_id like '2014%'),449312,'Ketel 1','Spijkenisse',3,6);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449312,'Joram Hensens','Bas Lange',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449312,'Kevin Dijkstra','Marcel Paulus',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449312,'Erik Oortwijn','Dennis de Ruiter',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449312,'Joram Hensens','Marcel Paulus',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449312,'Kevin Dijkstra','Dennis de Ruiter',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449312,'Erik Oortwijn','Bas Lange',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449312,'Erik Oortwijn','Marcel Paulus',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449312,'Kevin Dijkstra','Bas Lange',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449312,'Joram Hensens','Dennis de Ruiter',0,1);
insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('19-03-2015','%d-%m-%Y'),(select id from cm_competitions where name = 'Tweede klasse poule 3' and ssn_id like '2014%'),449313,'HOGEWOERD 3','NNPV',6,3);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449313,'Debbie Anthonissen','Rob Molier',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449313,'Michiel Peter Sjouke','Marco Roeleveld',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449313,'Martijn Korner','Mark Molier',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449313,'Debbie Anthonissen','Marco Roeleveld',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449313,'Michiel Peter Sjouke','Mark Molier',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449313,'Martijn Korner','Rob Molier',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449313,'Martijn Korner','Marco Roeleveld',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449313,'Michiel Peter Sjouke','Rob Molier',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449313,'Debbie Anthonissen','Mark Molier',1,0);
insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('26-03-2015','%d-%m-%Y'),(select id from cm_competitions where name = 'Tweede klasse poule 3' and ssn_id like '2014%'),449562,'NNPV','Ketel 1',3,6);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449562,'Marco Roeleveld','Erik Oortwijn',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449562,'Mark Molier','Jordy Bax',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449562,'Rob Molier','Mark Oortwijn',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449562,'Marco Roeleveld','Jordy Bax',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449562,'Mark Molier','Mark Oortwijn',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449562,'Rob Molier','Erik Oortwijn',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449562,'Rob Molier','Jordy Bax',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449562,'Mark Molier','Erik Oortwijn',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449562,'Marco Roeleveld','Mark Oortwijn',1,0);
insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('31-03-2015','%d-%m-%Y'),(select id from cm_competitions where name = 'Tweede klasse poule 3' and ssn_id like '2014%'),449314,'Spijkenisse','HOGEWOERD 3',4,5);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449314,'Dennis de Ruiter','Debbie Anthonissen',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449314,'Bas Lange','Martijn Korner',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449314,'Marcel Paulus','Michiel Peter Sjouke',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449314,'Dennis de Ruiter','Martijn Korner',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449314,'Bas Lange','Michiel Peter Sjouke',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449314,'Marcel Paulus','Debbie Anthonissen',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449314,'Marcel Paulus','Martijn Korner',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449314,'Bas Lange','Debbie Anthonissen',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449314,'Dennis de Ruiter','Michiel Peter Sjouke',1,0);
insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('03-04-2015','%d-%m-%Y'),(select id from cm_competitions where name = 'Tweede klasse poule 3' and ssn_id like '2014%'),449315,'Azzurri','Ketel 1',5,4);
insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('09-04-2015','%d-%m-%Y'),(select id from cm_competitions where name = 'Tweede klasse poule 3' and ssn_id like '2014%'),449317,'HOGEWOERD 3','Azzurri',3,6);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449317,'Debbie Anthonissen','Gozewijn van Laatum',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449317,'Martijn Korner','Arno van Vlokhoven',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449317,'Soerin Ganga','René de Winter',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449317,'Debbie Anthonissen','Arno van Vlokhoven',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449317,'Martijn Korner','René de Winter',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449317,'Soerin Ganga','Gozewijn van Laatum',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449317,'Soerin Ganga','Arno van Vlokhoven',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449317,'Martijn Korner','Gozewijn van Laatum',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449317,'Debbie Anthonissen','René de Winter',1,0);
insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('13-04-2015','%d-%m-%Y'),(select id from cm_competitions where name = 'Tweede klasse poule 3' and ssn_id like '2014%'),449318,'NNPV','Azzurri',4,5);
insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('20-04-2015','%d-%m-%Y'),(select id from cm_competitions where name = 'Tweede klasse poule 3' and ssn_id like '2014%'),449635,'NNPV','Spijkenisse',4,5);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449635,'Nico van Veen','Bas Lange',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449635,'Marco Roeleveld','Marcel Paulus',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449635,'Ruud Heufke Kantelaar','Dennis de Ruiter',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449635,'Nico van Veen','Marcel Paulus',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449635,'Marco Roeleveld','Dennis de Ruiter',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449635,'Ruud Heufke Kantelaar','Bas Lange',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449635,'Ruud Heufke Kantelaar','Marcel Paulus',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449635,'Marco Roeleveld','Bas Lange',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449635,'Nico van Veen','Dennis de Ruiter',0,1);
insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('30-04-2015','%d-%m-%Y'),(select id from cm_competitions where name = 'Tweede klasse poule 3' and ssn_id like '2014%'),449629,'HOGEWOERD 3','Ketel 1',8,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449629,'Soerin Ganga','Mark Oortwijn',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449629,'Michiel Peter Sjouke','Erik Oortwijn',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449629,'Debbie Anthonissen','Joram Hensens',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449629,'Soerin Ganga','Erik Oortwijn',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449629,'Michiel Peter Sjouke','Joram Hensens',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449629,'Debbie Anthonissen','Mark Oortwijn',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449629,'Debbie Anthonissen','Erik Oortwijn',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449629,'Michiel Peter Sjouke','Mark Oortwijn',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449629,'Soerin Ganga','Joram Hensens',1,0);
insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('04-05-2015','%d-%m-%Y'),(select id from cm_competitions where name = 'Tweede klasse poule 3' and ssn_id like '2014%'),449320,'Ketel 1','NNPV',7,2);
insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('08-05-2015','%d-%m-%Y'),(select id from cm_competitions where name = 'Tweede klasse poule 3' and ssn_id like '2014%'),449321,'Azzurri','Spijkenisse',7,2);
insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('12-05-2015','%d-%m-%Y'),(select id from cm_competitions where name = 'Tweede klasse poule 3' and ssn_id like '2014%'),449323,'Spijkenisse','Ketel 1',5,4);
insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('18-05-2015','%d-%m-%Y'),(select id from cm_competitions where name = 'Tweede klasse poule 3' and ssn_id like '2014%'),449324,'Ketel 1','Azzurri',3,6);
insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('21-05-2015','%d-%m-%Y'),(select id from cm_competitions where name = 'Tweede klasse poule 3' and ssn_id like '2014%'),449325,'HOGEWOERD 3','Spijkenisse',5,4);
insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('26-05-2015','%d-%m-%Y'),(select id from cm_competitions where name = 'Tweede klasse poule 3' and ssn_id like '2014%'),449326,'Spijkenisse','NNPV',6,3);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449326,'Dennis de Ruiter','Ruud Heufke Kantelaar',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449326,'Bas Lange','Mark Molier',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449326,'Marcel Paulus','Nico van Veen',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449326,'Dennis de Ruiter','Mark Molier',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449326,'Bas Lange','Nico van Veen',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449326,'Marcel Paulus','Ruud Heufke Kantelaar',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449326,'Marcel Paulus','Mark Molier',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449326,'Bas Lange','Ruud Heufke Kantelaar',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449326,'Dennis de Ruiter','Nico van Veen',1,0);
insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('29-05-2015','%d-%m-%Y'),(select id from cm_competitions where name = 'Tweede klasse poule 3' and ssn_id like '2014%'),449327,'Azzurri','HOGEWOERD 3',7,2);
insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('01-06-2015','%d-%m-%Y'),(select id from cm_competitions where name = 'Tweede klasse poule 3' and ssn_id like '2014%'),449832,'NNPV','HOGEWOERD 3',3,6);
