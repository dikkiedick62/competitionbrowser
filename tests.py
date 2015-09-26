__author__ = 'rene'

from collections import defaultdict
import mysql.connector

details_dict = defaultdict(list)


t = {"home_player":"rene", "away_player":"joris", "home_score":3, "away_score":0}
#details_dict[2345].append(t)
t = {"home_player":"raymond", "away_player":"roy", "home_score":3, "away_score":0}
#details_dict[6666].append(t)

proConfig = {
  'user': 'dikstra',
  'password': 'GFm4X7wM',
  'host': 'www.dikstra.nl',
  'database': 'dikstra',
  'raise_on_warnings': True,
}

cnx = mysql.connector.connect(**proConfig)

#for key, value in details_dict.iteritems():
 #   print value

gen_update_detail_query = ("select home_player, away_player, home_score, away_score, game_id from cm_match_details where game_id in (select game_id from cm_matches where cpn_id = (select id from cm_competitions where name = %s and substring(ssn_id,1,4) = %s))")
data_gen_update = ('Eredivisie', '2015')
gen_update_cursor = cnx.cursor(buffered=True)
gen_update_cursor.execute(gen_update_detail_query, data_gen_update)
t_idx = 0
for (home_player, away_player, home_score, away_score, game_id) in gen_update_cursor:
    t = {"home_player":home_player, "away_player":away_player, "home_score":home_score, "away_score":away_score, "game_id":game_id}
    t_idx = t_idx + 1
    details_dict[t_idx].append(t)
       # print "match found, updating " + str(tuple(data_match_query))

for key, value in details_dict.iteritems():
    print str(key) + " - " +str(value)
#print details_dict

update_detail_query = ("update cm_match_details set home_score = %s, away_score = %s where game_id = %s and home_player = %s and away_player = %s")
data_update_detail_query = ()
for v in details_dict:
    y = details_dict[v]
    #data_update_detail_query(y[0]['home_score'], y[0]['away_score'], y[0]['game_id'], y[0]['home_player'], y[0]['away_player'])
    print "update cm_match_details set home_score = %s, away_score = %s where game_id = %s and home_player = %s and away+player = %s" % (y[0]['home_score'], y[0]['away_score'], y[0]['game_id'], y[0]['home_player'], y[0]['away_player'])