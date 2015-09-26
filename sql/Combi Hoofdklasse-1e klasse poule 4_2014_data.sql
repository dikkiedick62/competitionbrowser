delete from cm_match_details where game_id in (select game_id from cm_matches where cpn_id = (select id from cm_competitions where name = 'Combi Hoofdklasse-1e klasse poule 4' and ssn_id like '2014%'));
delete from cm_matches where cpn_id = (select id from cm_competitions where name = 'Combi Hoofdklasse-1e klasse poule 4' and ssn_id like '2014%');
insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('16-09-2014','%d-%m-%Y'),(select id from cm_competitions where name = 'Combi Hoofdklasse-1e klasse poule 4' and ssn_id like '2014%'),444093,'SNOOKERPALACE PUTTE','VLAARDINGEN 1',3,6);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444093,'Ward van Doren','René Tinge',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444093,'Peter de Brie','Marko Reijers',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444093,'Peter van Someren','Marko Reijers',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444093,'Peter de Brie','René Tinge',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444093,'Peter van Someren','René Tinge',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444093,'Ward van Doren','Marko Reijers',1,0);
insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('18-09-2014','%d-%m-%Y'),(select id from cm_competitions where name = 'Combi Hoofdklasse-1e klasse poule 4' and ssn_id like '2014%'),444095,'Pompadour 2','La Carambole',6,3);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444095,'Michaël Kuijpers','Anton Vogelaar',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444095,'Jurgen Gruson','Anton Vogelaar',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444095,'Anton Janssen','Anton Vogelaar',0,1);
insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('19-09-2014','%d-%m-%Y'),(select id from cm_competitions where name = 'Combi Hoofdklasse-1e klasse poule 4' and ssn_id like '2014%'),444096,'De Loods 147.1','De Loods 1',3,6);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444096,'Kevin Chan','Roeland Melief',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444096,'Ray Westdijk','Hans van Velde',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444096,'Pascal de Smit','Alexander van den Doel',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444096,'Kevin Chan','Hans van Velde',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444096,'Ray Westdijk','Alexander van den Doel',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444096,'Pascal de Smit','Roeland Melief',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444096,'Pascal de Smit','Hans van Velde',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444096,'Ray Westdijk','Roeland Melief',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444096,'Kevin Chan','Alexander van den Doel',1,0);
insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('30-09-2014','%d-%m-%Y'),(select id from cm_competitions where name = 'Combi Hoofdklasse-1e klasse poule 4' and ssn_id like '2014%'),444098,'De Loods 1','SNOOKERPALACE PUTTE',6,3);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444098,'Hans van Velde','Peter van Someren',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444098,'Roeland Melief','David Smeekens',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444098,'Alexander van den Doel','Peter de Brie',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444098,'Hans van Velde','David Smeekens',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444098,'Roeland Melief','Peter de Brie',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444098,'Alexander van den Doel','Peter van Someren',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444098,'Alexander van den Doel','David Smeekens',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444098,'Roeland Melief','Peter van Someren',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444098,'Hans van Velde','Peter de Brie',0,1);
insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('01-10-2014','%d-%m-%Y'),(select id from cm_competitions where name = 'Combi Hoofdklasse-1e klasse poule 4' and ssn_id like '2014%'),444099,'THE PAUPERBOYS','Pompadour 2',4,5);
insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('01-10-2014','%d-%m-%Y'),(select id from cm_competitions where name = 'Combi Hoofdklasse-1e klasse poule 4' and ssn_id like '2014%'),444100,'La Carambole','De Loods 147.1',3,6);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444100,'Anton Vogelaar','Pascal de Smit',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444100,'Anton Vogelaar','Kevin Chan',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444100,'Anton Vogelaar','Melvin Reese',1,0);
insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('08-10-2014','%d-%m-%Y'),(select id from cm_competitions where name = 'Combi Hoofdklasse-1e klasse poule 4' and ssn_id like '2014%'),444102,'La Carambole','THE PAUPERBOYS',5,4);
insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('10-10-2014','%d-%m-%Y'),(select id from cm_competitions where name = 'Combi Hoofdklasse-1e klasse poule 4' and ssn_id like '2014%'),444104,'De Loods 147.1','SNOOKERPALACE PUTTE',7,2);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444104,'Mitch van den Bergh','David Smeekens',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444104,'Kevin Chan','Peter van Someren',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444104,'Melvin Reese','Peter de Brie',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444104,'Mitch van den Bergh','Peter van Someren',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444104,'Kevin Chan','Peter de Brie',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444104,'Melvin Reese','David Smeekens',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444104,'Melvin Reese','Peter van Someren',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444104,'Kevin Chan','David Smeekens',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444104,'Mitch van den Bergh','Peter de Brie',1,0);
insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('13-10-2014','%d-%m-%Y'),(select id from cm_competitions where name = 'Combi Hoofdklasse-1e klasse poule 4' and ssn_id like '2014%'),444105,'VLAARDINGEN 1','La Carambole',8,1);
insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('14-10-2014','%d-%m-%Y'),(select id from cm_competitions where name = 'Combi Hoofdklasse-1e klasse poule 4' and ssn_id like '2014%'),444107,'De Loods 1','Pompadour 2',6,3);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444107,'Hans van Velde','Corné Kuijpers',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444107,'Roeland Melief','Michaël Kuijpers',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444107,'Alexander van den Doel','Michaël Kuijpers',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444107,'Roeland Melief','Corné Kuijpers',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444107,'Alexander van den Doel','Corné Kuijpers',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444107,'Hans van Velde','Michaël Kuijpers',1,0);
insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('15-10-2014','%d-%m-%Y'),(select id from cm_competitions where name = 'Combi Hoofdklasse-1e klasse poule 4' and ssn_id like '2014%'),444108,'THE PAUPERBOYS','De Loods 147.1',5,4);
insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('22-10-2014','%d-%m-%Y'),(select id from cm_competitions where name = 'Combi Hoofdklasse-1e klasse poule 4' and ssn_id like '2014%'),444109,'THE PAUPERBOYS','VLAARDINGEN 1',4,5);
insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('23-10-2014','%d-%m-%Y'),(select id from cm_competitions where name = 'Combi Hoofdklasse-1e klasse poule 4' and ssn_id like '2014%'),444111,'Pompadour 2','SNOOKERPALACE PUTTE',7,2);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444111,'Jurgen Gruson','Peter van Someren',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444111,'Michaël Kuijpers','Ward van Doren',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444111,'Anton Janssen','Patric van Kakerken',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444111,'Jurgen Gruson','Ward van Doren',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444111,'Michaël Kuijpers','Patric van Kakerken',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444111,'Anton Janssen','Peter van Someren',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444111,'Anton Janssen','Ward van Doren',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444111,'Michaël Kuijpers','Peter van Someren',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444111,'Jurgen Gruson','Patric van Kakerken',1,0);
insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('28-10-2014','%d-%m-%Y'),(select id from cm_competitions where name = 'Combi Hoofdklasse-1e klasse poule 4' and ssn_id like '2014%'),448213,'De Loods 1','THE PAUPERBOYS',6,3);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(448213,'Roeland Melief','Mickey Barbier',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(448213,'Hans van Velde','Gerard van Vliet',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(448213,'Alexander van den Doel','Raymond Bresser',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(448213,'Roeland Melief','Gerard van Vliet',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(448213,'Hans van Velde','Raymond Bresser',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(448213,'Alexander van den Doel','Mickey Barbier',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(448213,'Alexander van den Doel','Gerard van Vliet',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(448213,'Hans van Velde','Mickey Barbier',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(448213,'Roeland Melief','Raymond Bresser',0,1);
insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('29-10-2014','%d-%m-%Y'),(select id from cm_competitions where name = 'Combi Hoofdklasse-1e klasse poule 4' and ssn_id like '2014%'),448167,'La Carambole','De Loods 1',0,9);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(448167,'Anton Vogelaar','Roeland Melief',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(448167,'Anton Vogelaar','Hans van Velde',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(448167,'Anton Vogelaar','Manon Melief',0,1);
insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('30-10-2014','%d-%m-%Y'),(select id from cm_competitions where name = 'Combi Hoofdklasse-1e klasse poule 4' and ssn_id like '2014%'),448209,'Pompadour 2','VLAARDINGEN 1',2,7);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(448209,'Maurice Rijk','René Tinge',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(448209,'Anton Janssen','René Tinge',0,1);
insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('03-11-2014','%d-%m-%Y'),(select id from cm_competitions where name = 'Combi Hoofdklasse-1e klasse poule 4' and ssn_id like '2014%'),444113,'VLAARDINGEN 1','De Loods 147.1',5,4);
insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('04-11-2014','%d-%m-%Y'),(select id from cm_competitions where name = 'Combi Hoofdklasse-1e klasse poule 4' and ssn_id like '2014%'),444114,'SNOOKERPALACE PUTTE','La Carambole',1,8);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444114,'Peter van Someren','Anton Vogelaar',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444114,'David Smeekens','Anton Vogelaar',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444114,'Ward van Doren','Anton Vogelaar',0,1);
insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('10-11-2014','%d-%m-%Y'),(select id from cm_competitions where name = 'Combi Hoofdklasse-1e klasse poule 4' and ssn_id like '2014%'),444117,'VLAARDINGEN 1','De Loods 1',4,5);
insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('12-11-2014','%d-%m-%Y'),(select id from cm_competitions where name = 'Combi Hoofdklasse-1e klasse poule 4' and ssn_id like '2014%'),444118,'THE PAUPERBOYS','SNOOKERPALACE PUTTE',2,7);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444118,'Christiaan ten Hoeven','Adrie Stoffels',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444118,'Raymond Bresser','Peter de Brie',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444118,'Dylan Staneke','Peter van Someren',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444118,'Christiaan ten Hoeven','Peter de Brie',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444118,'Raymond Bresser','Peter van Someren',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444118,'Dylan Staneke','Adrie Stoffels',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444118,'Dylan Staneke','Peter de Brie',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444118,'Raymond Bresser','Adrie Stoffels',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444118,'Christiaan ten Hoeven','Peter van Someren',0,1);
insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('14-11-2014','%d-%m-%Y'),(select id from cm_competitions where name = 'Combi Hoofdklasse-1e klasse poule 4' and ssn_id like '2014%'),444120,'De Loods 147.1','Pompadour 2',5,4);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444120,'Jimmy Worung','Niki Lin',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444120,'Melvin Reese','Tim De Ruyter',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444120,'Kevin Chan','Tim De Ruyter',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444120,'Melvin Reese','Niki Lin',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444120,'Kevin Chan','Niki Lin',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444120,'Jimmy Worung','Tim De Ruyter',1,0);
insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('17-11-2014','%d-%m-%Y'),(select id from cm_competitions where name = 'Combi Hoofdklasse-1e klasse poule 4' and ssn_id like '2014%'),444121,'VLAARDINGEN 1','SNOOKERPALACE PUTTE',5,4);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444121,'Marko Reijers','Peter de Brie',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444121,'René Tinge','David Smeekens',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444121,'Marko Reijers','David Smeekens',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444121,'René Tinge','Adrie Stoffels',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444121,'René Tinge','Peter de Brie',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444121,'Marko Reijers','Adrie Stoffels',0,1);
insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('27-11-2014','%d-%m-%Y'),(select id from cm_competitions where name = 'Combi Hoofdklasse-1e klasse poule 4' and ssn_id like '2014%'),444127,'Pompadour 2','THE PAUPERBOYS',9,0);
insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('01-12-2014','%d-%m-%Y'),(select id from cm_competitions where name = 'Combi Hoofdklasse-1e klasse poule 4' and ssn_id like '2014%'),444129,'VLAARDINGEN 1','Pompadour 2',4,5);
insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('03-12-2014','%d-%m-%Y'),(select id from cm_competitions where name = 'Combi Hoofdklasse-1e klasse poule 4' and ssn_id like '2014%'),444132,'THE PAUPERBOYS','La Carambole',4,5);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444132,'Mickey Barbier','Edwin Roverts',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444132,'Gerard van Vliet','Paul Wisse',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444132,'Raymond Bresser','Anton Vogelaar',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444132,'Mickey Barbier','Paul Wisse',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444132,'Gerard van Vliet','Anton Vogelaar',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444132,'Raymond Bresser','Edwin Roverts',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444132,'Raymond Bresser','Paul Wisse',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444132,'Gerard van Vliet','Edwin Roverts',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444132,'Mickey Barbier','Anton Vogelaar',1,0);
insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('09-12-2014','%d-%m-%Y'),(select id from cm_competitions where name = 'Combi Hoofdklasse-1e klasse poule 4' and ssn_id like '2014%'),448330,'SNOOKERPALACE PUTTE','De Loods 1',4,5);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(448330,'Peter van Someren','Alexander van den Doel',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(448330,'Ward van Doren','Hans van Velde',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(448330,'Patric van Kakerken','Roeland Melief',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(448330,'Peter van Someren','Hans van Velde',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(448330,'Ward van Doren','Roeland Melief',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(448330,'Patric van Kakerken','Alexander van den Doel',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(448330,'Patric van Kakerken','Hans van Velde',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(448330,'Ward van Doren','Alexander van den Doel',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(448330,'Peter van Someren','Roeland Melief',0,1);
insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('10-12-2014','%d-%m-%Y'),(select id from cm_competitions where name = 'Combi Hoofdklasse-1e klasse poule 4' and ssn_id like '2014%'),444134,'La Carambole','VLAARDINGEN 1',1,8);
insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('11-12-2014','%d-%m-%Y'),(select id from cm_competitions where name = 'Combi Hoofdklasse-1e klasse poule 4' and ssn_id like '2014%'),444135,'Pompadour 2','De Loods 1',7,2);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444135,'Michaël Kuijpers','Alexander van den Doel',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444135,'Niki Lin','Hans van Velde',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444135,'Michaël Kuijpers','Hans van Velde',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444135,'Niki Lin','Roeland Melief',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444135,'Niki Lin','Alexander van den Doel',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444135,'Michaël Kuijpers','Roeland Melief',1,0);
insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('15-12-2014','%d-%m-%Y'),(select id from cm_competitions where name = 'Combi Hoofdklasse-1e klasse poule 4' and ssn_id like '2014%'),444137,'VLAARDINGEN 1','THE PAUPERBOYS',8,1);
insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('16-12-2014','%d-%m-%Y'),(select id from cm_competitions where name = 'Combi Hoofdklasse-1e klasse poule 4' and ssn_id like '2014%'),444138,'SNOOKERPALACE PUTTE','Pompadour 2',4,5);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444138,'David Smeekens','Corné Kuijpers',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444138,'Peter van Someren','Corné Kuijpers',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444138,'Ward van Doren','Corné Kuijpers',0,1);
insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('16-12-2014','%d-%m-%Y'),(select id from cm_competitions where name = 'Combi Hoofdklasse-1e klasse poule 4' and ssn_id like '2014%'),444139,'De Loods 1','La Carambole',9,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444139,'Alexander van den Doel','Patrick Beeres',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444139,'Roeland Melief','Martin Jansen',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444139,'Hans van Velde','Anton Vogelaar',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444139,'Alexander van den Doel','Martin Jansen',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444139,'Roeland Melief','Anton Vogelaar',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444139,'Hans van Velde','Patrick Beeres',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444139,'Hans van Velde','Martin Jansen',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444139,'Roeland Melief','Patrick Beeres',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444139,'Alexander van den Doel','Anton Vogelaar',1,0);
insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('06-01-2015','%d-%m-%Y'),(select id from cm_competitions where name = 'Combi Hoofdklasse-1e klasse poule 4' and ssn_id like '2014%'),448450,'SNOOKERPALACE PUTTE','De Loods 147.1',6,3);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(448450,'Patric van Kakerken','Melvin Reese',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(448450,'Peter van Someren','Jimmy Worung',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(448450,'Ward van Doren','Jimmy Worung',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(448450,'Peter van Someren','Melvin Reese',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(448450,'Ward van Doren','Melvin Reese',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(448450,'Patric van Kakerken','Jimmy Worung',1,0);
insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('07-01-2015','%d-%m-%Y'),(select id from cm_competitions where name = 'Combi Hoofdklasse-1e klasse poule 4' and ssn_id like '2014%'),448343,'La Carambole','Pompadour 2',2,7);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(448343,'Paul Wisse','Jurgen Gruson',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(448343,'Martin Jansen','Niki Lin',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(448343,'Anton Vogelaar','Niki Lin',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(448343,'Martin Jansen','Jurgen Gruson',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(448343,'Anton Vogelaar','Jurgen Gruson',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(448343,'Paul Wisse','Niki Lin',0,1);
insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('14-01-2015','%d-%m-%Y'),(select id from cm_competitions where name = 'Combi Hoofdklasse-1e klasse poule 4' and ssn_id like '2014%'),444141,'THE PAUPERBOYS','De Loods 1',4,5);
insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('14-01-2015','%d-%m-%Y'),(select id from cm_competitions where name = 'Combi Hoofdklasse-1e klasse poule 4' and ssn_id like '2014%'),444142,'La Carambole','SNOOKERPALACE PUTTE',4,5);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444142,'Edwin Roverts','David Smeekens',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444142,'Paul Wisse','Peter de Brie',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444142,'Anton Vogelaar','Peter van Someren',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444142,'Edwin Roverts','Peter de Brie',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444142,'Paul Wisse','Peter van Someren',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444142,'Anton Vogelaar','David Smeekens',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444142,'Anton Vogelaar','Peter de Brie',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444142,'Paul Wisse','David Smeekens',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444142,'Edwin Roverts','Peter van Someren',1,0);
insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('16-01-2015','%d-%m-%Y'),(select id from cm_competitions where name = 'Combi Hoofdklasse-1e klasse poule 4' and ssn_id like '2014%'),444144,'De Loods 147.1','VLAARDINGEN 1',1,8);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444144,'Ray Westdijk','René Tinge',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444144,'Kevin Chan','René Tinge',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444144,'Ray Westdijk','Raymond Bresser',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444144,'Kevin Chan','Raymond Bresser',1,0);
insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('20-01-2015','%d-%m-%Y'),(select id from cm_competitions where name = 'Combi Hoofdklasse-1e klasse poule 4' and ssn_id like '2014%'),444146,'De Loods 1','VLAARDINGEN 1',3,6);
insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('22-01-2015','%d-%m-%Y'),(select id from cm_competitions where name = 'Combi Hoofdklasse-1e klasse poule 4' and ssn_id like '2014%'),444148,'Pompadour 2','De Loods 147.1',6,3);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444148,'Michaël Kuijpers','Kevin Chan',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444148,'Niki Lin','Kevin Chan',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(444148,'Jurgen Gruson','Kevin Chan',1,0);
insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('27-01-2015','%d-%m-%Y'),(select id from cm_competitions where name = 'Combi Hoofdklasse-1e klasse poule 4' and ssn_id like '2014%'),448509,'De Loods 1','De Loods 147.1',8,1);
insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('27-01-2015','%d-%m-%Y'),(select id from cm_competitions where name = 'Combi Hoofdklasse-1e klasse poule 4' and ssn_id like '2014%'),448569,'SNOOKERPALACE PUTTE','THE PAUPERBOYS',5,4);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(448569,'Ward van Doren','Dylan Staneke',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(448569,'Peter van Someren','Gerard van Vliet',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(448569,'Peter de Brie','Raymond Bresser',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(448569,'Ward van Doren','Gerard van Vliet',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(448569,'Peter van Someren','Raymond Bresser',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(448569,'Peter de Brie','Dylan Staneke',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(448569,'Peter de Brie','Gerard van Vliet',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(448569,'Peter van Someren','Dylan Staneke',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(448569,'Ward van Doren','Raymond Bresser',0,1);
insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('29-01-2015','%d-%m-%Y'),(select id from cm_competitions where name = 'Combi Hoofdklasse-1e klasse poule 4' and ssn_id like '2014%'),448562,'De Loods 147.1','La Carambole',5,4);