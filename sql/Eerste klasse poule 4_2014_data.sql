delete from cm_match_details where game_id in (select game_id from cm_matches where cpn_id = (select id from cm_competitions where name = 'Eerste klasse poule 4' and ssn_id like '2014%'));
delete from cm_matches where cpn_id = (select id from cm_competitions where name = 'Eerste klasse poule 4' and ssn_id like '2014%');
insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('10-03-2015','%d-%m-%Y'),(select id from cm_competitions where name = 'Eerste klasse poule 4' and ssn_id like '2014%'),449220,'Zeekantje','THE PAUPERBOYS',1,8);
insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('18-03-2015','%d-%m-%Y'),(select id from cm_competitions where name = 'Eerste klasse poule 4' and ssn_id like '2014%'),449222,'THE PAUPERBOYS','Blaak',4,5);
insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('19-03-2015','%d-%m-%Y'),(select id from cm_competitions where name = 'Eerste klasse poule 4' and ssn_id like '2014%'),449223,'BSCZ 1','Zeekantje',5,4);
insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('08-04-2015','%d-%m-%Y'),(select id from cm_competitions where name = 'Eerste klasse poule 4' and ssn_id like '2014%'),449617,'THE PAUPERBOYS','BSCZ 1',4,5);
insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('16-04-2015','%d-%m-%Y'),(select id from cm_competitions where name = 'Eerste klasse poule 4' and ssn_id like '2014%'),449229,'BSCZ 1','THE PAUPERBOYS',4,5);
insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('22-04-2015','%d-%m-%Y'),(select id from cm_competitions where name = 'Eerste klasse poule 4' and ssn_id like '2014%'),449632,'Blaak','BSCZ 1',8,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449632,'Laslo Batis','Glenn van Polanen',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449632,'Benjamin Hamburger','Ron Reeuwijk',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449632,'Laslo Batis','Ron Reeuwijk',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449632,'Marcel Streef','Glenn van Polanen',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449632,'Marcel Streef','Ron Reeuwijk',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449632,'Benjamin Hamburger','Glenn van Polanen',1,0);
insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('06-05-2015','%d-%m-%Y'),(select id from cm_competitions where name = 'Eerste klasse poule 4' and ssn_id like '2014%'),449230,'THE PAUPERBOYS','Zeekantje',5,4);
insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('12-05-2015','%d-%m-%Y'),(select id from cm_competitions where name = 'Eerste klasse poule 4' and ssn_id like '2014%'),449232,'Zeekantje','BSCZ 1',3,6);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449232,'Fabian Rademaker','Peter den Boer',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449232,'Johan Grootens','Glenn van Polanen',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449232,'Rutger Beugeling','Peter Hulst',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449232,'Fabian Rademaker','Glenn van Polanen',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449232,'Johan Grootens','Peter Hulst',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449232,'Rutger Beugeling','Peter den Boer',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449232,'Rutger Beugeling','Glenn van Polanen',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449232,'Johan Grootens','Peter den Boer',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449232,'Fabian Rademaker','Peter Hulst',1,0);
insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('21-05-2015','%d-%m-%Y'),(select id from cm_competitions where name = 'Eerste klasse poule 4' and ssn_id like '2014%'),449235,'BSCZ 1','Blaak',5,4);
insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('27-05-2015','%d-%m-%Y'),(select id from cm_competitions where name = 'Eerste klasse poule 4' and ssn_id like '2014%'),449805,'Zeekantje','Blaak',3,6);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449805,'Sjouke Walraven','Tim van der Zanden',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449805,'Fabian Rademaker','Marcel Streef',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449805,'Johan Grootens','Benjamin Hamburger',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449805,'Sjouke Walraven','Marcel Streef',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449805,'Fabian Rademaker','Benjamin Hamburger',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449805,'Johan Grootens','Tim van der Zanden',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449805,'Johan Grootens','Marcel Streef',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449805,'Fabian Rademaker','Tim van der Zanden',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449805,'Sjouke Walraven','Benjamin Hamburger',0,1);
insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('27-05-2015','%d-%m-%Y'),(select id from cm_competitions where name = 'Eerste klasse poule 4' and ssn_id like '2014%'),449236,'Blaak','Zeekantje',8,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449236,'Benjamin Hamburger','Fabian Rademaker',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449236,'Tim van der Zanden','Johan Grootens',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449236,'Marcel Streef','Sjouke Walraven',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449236,'Benjamin Hamburger','Johan Grootens',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449236,'Tim van der Zanden','Sjouke Walraven',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449236,'Marcel Streef','Fabian Rademaker',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449236,'Marcel Streef','Johan Grootens',1,0);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449236,'Tim van der Zanden','Fabian Rademaker',0,1);
insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(449236,'Benjamin Hamburger','Sjouke Walraven',1,0);
insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('03-06-2015','%d-%m-%Y'),(select id from cm_competitions where name = 'Eerste klasse poule 4' and ssn_id like '2014%'),449845,'Blaak','THE PAUPERBOYS',5,4);