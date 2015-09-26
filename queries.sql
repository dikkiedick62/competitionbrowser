select m.game_id,count(*) 
from   cm_matches m
left outer join cm_match_details d on  m.game_id = d.game_id
where  m.season = '2014'
group  by game_id
having count(*) = 9;


select x.player,sum(x.score),sum(score)/count(*)
from ( 
select d1.home_player player,d1.home_score score
from   cm_match_details d1
where  d1.game_id in (select game_id from cm_matches where season = '2014')
union all
select d2.away_player player,d2.away_score score
from   cm_match_details d2
where  d2.game_id in (select game_id from cm_matches where season = '2014')
) x
where x.player like '%iks'
group by x.player
order by sum(score) desc;

select d.* 
from   cm_matches m
left outer join cm_match_details d on  m.game_id = d.game_id
where  m.season = '2014'
and    (d.home_player = 'Freek Bettonviel' or away_player = 'Freek Bettonviel')
    
;

CREATE TABLE `cm_matches` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `season` varchar(45) DEFAULT NULL,
  `game_id` int(11) DEFAULT NULL,
  `home_team` varchar(255) DEFAULT NULL,
  `away_team` varchar(255) DEFAULT NULL,
  `home_score` int(11) DEFAULT NULL,
  `away_score` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=447 DEFAULT CHARSET=latin1;

CREATE TABLE `cm_match_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `game_id` int(11) DEFAULT NULL,
  `home_player` varchar(255) DEFAULT NULL,
  `away_player` varchar(255) DEFAULT NULL,
  `home_score` int(11) DEFAULT NULL,
  `away_score` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2711 DEFAULT CHARSET=latin1;
