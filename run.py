# encoding: utf-8
import requests
import re
import time
import codecs

import sys

#print 'Started at %s' % time.strftime('%X')
c = re.compile('<span>(.+)  Seizoen [0-9]+-[0-9]+</span>')

#<a href="snooker.htm.php\?GameID=([0-9]+)".+>([0-9]) - ([0-9])</a>
p = re.compile('<td class=\'num\'>([0-9]+-[0-9]+-[0-9]+)</td>\n\s+<td class=\'num\'>[0-9]+:[0-9]+</td>\n\s+<td class=\'num\'>.+</td>\n\s+<td class=\'text\'>([a-zA-Z0-9\.\s\/\&\'\!.]+)</td>\n\s+<td class=\'text\'>([a-zA-Z0-9\.\s\/\&\'\!.]+)</td>\s+<td class=\'final\'><a href="snooker.htm.php\?GameID=([0-9]+)".+>([0-9]) - ([0-9])</a></td>', re.UNICODE)
#p = re.compile('<td class=\'num\'>([0-9]+-[0-9]+-[0-9]+)</td>\n\s+<td class=\'num\'>[0-9]+:[0-9]+</td>\n\s+<td class=\'num\'>.+</td>\n\s+<td class=\'text\'>([a-zA-Z0-9\.\s\/]+)</td>\n\s+<td class=\'text\'>([a-zA-Z0-9\.\s\/]+)</td>\s+<td class=\'final\'>(<a href="snooker.htm.php\?GameID=([0-9]+)".+>([0-9]) - ([0-9])</a>|(&nbsp;)()())</td>')
p2 = re.compile('<td class=\'num\'>([0-9]+-[0-9]+-[0-9]+)</td>\n\s+<td class=\'num\'>[0-9]+:[0-9]+</td>\n\s+<td class=\'num\'>.+</td>\n\s+<td class=\'text\'>([a-zA-Z0-9\.\s\/\&\'\!.]+)</td>\n\s+<td class=\'text\'>([a-zA-Z0-9\.\s\/\&\'\!.]+)</td>\s+<td class=\'final\'>(&nbsp;)()()</td>', re.UNICODE)

q = re.compile('<td>([\w0-9\s]+)</td><td> vs </td><td>([\w0-9\s]+)</td><td>([0-9]) - ([0-9])</td><tr>', re.UNICODE)
s = requests.Session()

season = "2015"
levelId = "1"
compId = "3037"
competition = ""

#compId = sys.argv[1]

init = s.get("http://competitie.knbb.nl/index.php?SeasonID="+season)
r = s.get("http://competitie.knbb.nl/overview.php?LevelID="+levelId)
if levelId != "1":
    r = s.get("http://competitie.knbb.nl/overview.php?CompID="+compId)
#print r.text

m = c.search(r.text)
if m:
    competition = m.group(1).replace("/", "-")
    print "found competition %s" % competition
else:
    print "no competition"
    exit
f =   codecs.open(competition+'_'+season+'_data.sql', 'w', encoding='utf-8')

piterator = p.finditer(r.text)
p2iterator = p2.finditer(r.text)
idx = 0

f.write("delete from cm_match_details where game_id in (select game_id from cm_matches where cpn_id = (select id from cm_competitions where name = '"+competition+"' and ssn_id like '"+season+"%'));\n")
f.write("delete from cm_matches where cpn_id = (select id from cm_competitions where name = '"+competition+"' and ssn_id like '"+season+"%');\n")
for match in piterator:
    idx += 1
    gameId = "0000"
    home_score = "0"
    away_score = "0"
   # print "groups %s, %s, %s" % (match.group(4) ,match.group(5), match.group(6))
    if match.group(4) != "&nbsp;":
        gameId = match.group(4)
    if match.group(5):
       home_score = match.group(5)
       away_score = match.group(6)

    print 'Game %s:%s - %s = %s' % (match.group(3), match.group(1), match.group(2), match.group(4))
    f.write("insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('"+match.group(1)+"','%d-%m-%Y'),(select id from cm_competitions where name = '"+competition+"' and ssn_id like '"+season+"%'),"+gameId+",'"+match.group(2).replace("'", "''")+"','"+match.group(3).replace("'", "''")+"',"+home_score+","+away_score+");\n".encode('utf-8'))
    r = s.get("http://competitie.knbb.nl/snooker.htm.php?GameID="+gameId);
   # print r.text
    qiterator = q.finditer(r.text)
    for qmatch in qiterator:
        # print '%s versus %s  = %s - %s' % (qmatch.group(1), qmatch.group(2), qmatch.group(3), qmatch.group(4))
         f.write("insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values("+gameId+",'"+qmatch.group(1).replace("'", "''")+"','"+qmatch.group(2).replace("'", "''")+"',"+qmatch.group(3)+","+qmatch.group(4)+");\n".encode('utf-8'))

for match in p2iterator:
    idx += 1
    gameId = "0000"
    home_score = "0"
    away_score = "0"
   # print "groups %s, %s, %s" % (match.group(4) ,match.group(5), match.group(6))
    if match.group(4) != "&nbsp;":
        gameId = match.group(4)
    if match.group(5):
       home_score = match.group(5)
       away_score = match.group(6)
   # print 'Game %s:%s - %s = %s' % (match.group(3), match.group(1), match.group(2), match.group(4))
    f.write("insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) values(str_to_date('"+match.group(1)+"','%d-%m-%Y'),(select id from cm_competitions where name = '"+competition+"' and ssn_id like '"+season+"%'),"+gameId+",'"+match.group(2).replace("'", "''")+"','"+match.group(3).replace("'", "''")+"',"+home_score+","+away_score+");\n".encode('utf-8'))
    r = s.get("http://competitie.knbb.nl/snooker.htm.php?GameID="+gameId);
   # print r.text
    qiterator = q.finditer(r.text)
    for qmatch in qiterator:
        # print '%s versus %s  = %s - %s' % (qmatch.group(1), qmatch.group(2), qmatch.group(3), qmatch.group(4))
         f.write("insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values("+gameId+",'"+qmatch.group(1).replace("'", "''")+"','"+qmatch.group(2).replace("'", "''")+"',"+qmatch.group(3)+","+qmatch.group(4)+");\n".encode('utf-8'))

print '%d matches found' % idx


f.close()
print 'Finished at %s' % (time.strftime('%X'))
