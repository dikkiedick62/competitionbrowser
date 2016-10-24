# encoding: utf-8
import requests
import re
import time
#import codecs
import mysql.connector
import sys
import getopt
from collections import defaultdict

def processIterator(it):
    match_found = False
    localIdx = 0
    add_match = ("insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) " +
                 "values(str_to_date(%s,'%d-%m-%Y'), (select id from cm_competitions where name = %s and substring(ssn_id,1,4) = %s), %s, %s, %s, %s, %s)")
    add_match_detail = ("insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(%s, %s, %s, %s, %s)")
    insert_cursor = cnx.cursor(buffered=True)
    query_cursor = cnx.cursor(buffered=True)
    update_cursor = cnx.cursor(buffered=True)
    delete_query_cursor = cnx.cursor(buffered=True)
    delete_cursor = cnx.cursor(buffered=True)

    match_delete_query = ("select id from cm_matches m1 where m1.home_team = %s and m1.away_team = %s and m1.game_id = -1" +
                          "and exists (select 1 from cm_matches m2 where m1.home_team = m2.home_team and m1.away_team = m2.away_team and m1.cpn_id = m2.cpn_id and m2.game_id > 0 and m1.playdate = m2.playdate)")

    match_delete = ("delete from cm_matches where id = %s")
    match_query = ( "SELECT 'x' as col from cm_matches where game_id = %s and home_team = %s and away_team = %s")
    match_update = ("update cm_matches set home_score = %s, away_score = %s where game_id = %s")
    for match in it:
        localIdx += 1
        gameId = "-1"
        home_score = "0"
        away_score = "0"
        # print "groups %s, %s, %s" % (match.group(4) ,match.group(5), match.group(6))
        if match.group(4) != "&nbsp;":
            gameId = match.group(4)
        if match.group(5):
            home_score = match.group(5)
            away_score = match.group(6)

        print 'Game %s:%s - %s = %s' % (match.group(1), match.group(2), match.group(3), match.group(4))
        data_match = (match.group(1), competition, season, gameId, match.group(2), match.group(3), home_score, away_score)
        data_match_query = (gameId, match.group(2), match.group(3))
        query_cursor.execute(match_query, data_match_query)

        data_match_update = (home_score, away_score, gameId)

        for (col) in query_cursor:
            print "match found, updating " + str(tuple(data_match_query))
            update_cursor.execute(match_update, data_match_update)
            match_found = True

        if not match_found:
            match_found = False
            insert_cursor.execute(add_match, data_match)
            print "not found, adding " + str(tuple(data_match_query))
            for (id) in delete_query_cursor:
                data_match_delete = (id)
               # delete_cursor.execute(match_delete, data_match_delete)
                print "deleting " + str(tuple(data_match_delete))
        r = s.get("http://competitie.knbb.nl/snooker.htm.php?GameID="+gameId);
        qiterator = q.finditer(r.text)
        for qmatch in qiterator:
            # print '%s versus %s  = %s - %s' % (qmatch.group(1), qmatch.group(2), qmatch.group(3), qmatch.group(4))
            data_match_detail = (gameId, qmatch.group(1), qmatch.group(2), qmatch.group(3), qmatch.group(4))
            try:
                insert_cursor.execute(add_match_detail, data_match_detail)
                print '%s versus %s  = %s - %s' % (qmatch.group(1), qmatch.group(2), qmatch.group(3), qmatch.group(4))
            except mysql.connector.IntegrityError as err:
                None #print("Error: {}".format(err))
    # close cursors
    insert_cursor.close()
    query_cursor.close()
    update_cursor.close()

    return localIdx

def processIteratorSimple(it):
    match_found = False
    localIdx = 0
    add_match = ("insert into cm_matches(playdate, cpn_id, game_id, home_team, away_team, home_score, away_score) " +
                 "values(str_to_date(%s,'%d-%m-%Y'), (select id from cm_competitions where name = %s and substring(ssn_id,1,4) = %s), %s, %s, %s, %s, %s)")
    add_match_detail = ("insert into cm_match_details(game_id, home_player, away_player, home_score, away_score) values(%s, %s, %s, %s, %s)")
    insert_cursor = cnx.cursor(buffered=True)

    for match in it:
        localIdx += 1
        gameId = "-1"
        home_score = "0"
        away_score = "0"
        # print "groups %s, %s, %s" % (match.group(4) ,match.group(5), match.group(6))
        if match.group(4) != "&nbsp;":
            gameId = match.group(4)
        if match.group(5):
            home_score = match.group(5)
            away_score = match.group(6)

        print 'Game %s:%s - %s = %s' % (match.group(1), match.group(2), match.group(3), match.group(4))
        data_match = (match.group(1), competition, season, gameId, match.group(2), match.group(3), home_score, away_score)
        insert_cursor.execute(add_match, data_match)

        r = s.get("http://competitie.knbb.nl/snooker.htm.php?GameID="+gameId);
        q = re.compile('<td>([\w0-9\s\.]+)</td><td> vs </td><td>([\w0-9\s\.]+)</td><td>([0-9]) - ([0-9])</td><tr>', re.UNICODE)
        qleft = re.compile('<td></td><td> vs </td><td>([\w0-9\s\.]+)</td><td>([0-9]) - ([0-9])</td><tr>', re.UNICODE)
        qright = re.compile('<td>([\w0-9\s\.]+)</td><td> vs </td><td></td><td>([0-9]) - ([0-9])</td><tr>', re.UNICODE)


        qiterator = q.finditer(r.text)
        for qmatch in qiterator:
            print '%s versus %s  = %s - %s' % (qmatch.group(1), qmatch.group(2), qmatch.group(3), qmatch.group(4))
            data_match_detail = (gameId, qmatch.group(1), qmatch.group(2), qmatch.group(3), qmatch.group(4))
            insert_cursor.execute(add_match_detail, data_match_detail)
        qleftiterator = qleft.finditer(r.text)

        #for qmatch in qleftiterator:
        #    print '%s versus %s  = %s - %s' % ('n.b.', qmatch.group(1), qmatch.group(2), qmatch.group(3))
        #    data_match_detail = (gameId, 'n.b.', qmatch.group(1), qmatch.group(2), qmatch.group(3))
        #    insert_cursor.execute(add_match_detail, data_match_detail)
        #
        #qrightiterator = qright.finditer(r.text)
        #for qmatch in qrightiterator:
        #    print '%s versus %s  = %s - %s' % (qmatch.group(1), 'n.b.',  qmatch.group(2), qmatch.group(3))
        #    data_match_detail = (gameId, qmatch.group(1), 'n.b.', qmatch.group(2), qmatch.group(3))
        #    insert_cursor.execute(add_match_detail, data_match_detail)

    # close cursors
    insert_cursor.close()

    return localIdx

######################### MAIN #########################

myopts, args = getopt.getopt(sys.argv[1:], "s:l:c:p:u:h:")

season = "2015"
levelId = "2"
compId = "3037"

config = {
  'user': 'root',
  'password': 'rene',
  'host': 'localhost',
  'database': 'dikstra',
  'raise_on_warnings': True,
}

for o, a in myopts:
    if o == '-s':
        season = a
    elif o == '-l':
        levelId = a
    elif o == '-c':
        compId = a
    elif o == '-p':
        config['password'] = a
    elif o == '-u':
        config['user'] = a
    elif o == '-h':
        config['host'] = a
    else:
        print("Usage: %s -s season -l levelId -c compId" % sys.argv[0])

print("Running program with season %s levelId %s compId %s" % (season, levelId, compId))


cnx = mysql.connector.connect(**config)


print 'Started at %s' % time.strftime('%X')
c = re.compile('<span>(.+)  Seizoen [0-9]+-[0-9]+</span>')

p = re.compile('<td class=\'num\'>([0-9]+-[0-9]+-[0-9]+)</td>\n\s+<td class=\'num\'>[0-9]+:[0-9]+</td>\n\s+<td class=\'num\'>.+</td>\n\s+<td class=\'text\'>([\w0-9\.\s\/\&\'\!-]+)</td>\n\s+<td class=\'text\'>([\w0-9\.\s\/\&\'\!-]+)</td>\s+<td class=\'final\'><a href="snooker.htm.php\?GameID=([0-9]+)".+>([0-9]) - ([0-9])</a></td>', re.UNICODE)
p2 = re.compile('<td class=\'num\'>([0-9]+-[0-9]+-[0-9]+)</td>\n\s+<td class=\'num\'>[0-9]+:[0-9]+</td>\n\s+<td class=\'num\'>.+</td>\n\s+<td class=\'text\'>([\w0-9\.\s\/\&\'\!-]+)</td>\n\s+<td class=\'text\'>([\w0-9\.\s\/\&\'\!-]+)</td>\s+<td class=\'final\'>(&nbsp;)()()</td>', re.UNICODE)


s = requests.Session()

competition = ""

init = s.get("http://competitie.knbb.nl/index.php?SeasonID="+season)
r = s.get("http://competitie.knbb.nl/overview.php?LevelID="+levelId)
if levelId != "1":
    r = s.get("http://competitie.knbb.nl/overview.php?CompID="+compId)
    print "Finding compId page"

m = c.search(r.text)
if m:
    competition = m.group(1).replace("/", "-")
    print "found competition %s" % competition
else:
    print "no competition"
    exit

piterator = p.finditer(r.text)
p2iterator = p2.finditer(r.text)
idx = 0

details_dict = defaultdict(list)
t_upd_idx = 0
if levelId == "1":
    gen_update_detail_query = ("select home_player, away_player, home_score, away_score, game_id from cm_match_details where game_id in (select game_id from cm_matches where cpn_id = (select id from cm_competitions where name = %s and substring(ssn_id,1,4) = %s))")
    data_gen_update = (competition, season)
    gen_update_cursor = cnx.cursor(buffered=True)
    gen_update_cursor.execute(gen_update_detail_query, data_gen_update)
    for (home_player, away_player, home_score, away_score, game_id) in gen_update_cursor:
        t = {"home_player":home_player, "away_player":away_player, "home_score":home_score, "away_score":away_score, "game_id":game_id}
        t_upd_idx = t_upd_idx + 1
        details_dict[t_upd_idx].append(t)


delete_cursor = cnx.cursor(buffered=True)
delete_detail_query = ("delete from cm_match_details where game_id in (select game_id from cm_matches where cpn_id = (select id from cm_competitions where name = %s and substring(ssn_id,1,4) = %s))")
delete_match_query = ("delete from cm_matches where cpn_id = (select id from cm_competitions where name = %s and substring(ssn_id,1,4) = %s)")
data_delete = (competition, season)
delete_cursor.execute(delete_detail_query, data_delete)
delete_cursor.execute(delete_match_query, data_delete)
idx = idx + processIteratorSimple(piterator)
idx = idx + processIteratorSimple(p2iterator)

if levelId == "1":
    update_detail_query = ("update cm_match_details set home_score = %s, away_score = %s where game_id = %s and home_player = %s and away_player = %s")
    update_cursor = cnx.cursor(buffered=True)
    for v in details_dict:
        y = details_dict[v]
        hs = y[0]['home_score']
        aws = y[0]['away_score']
        gi = y[0]['game_id']
        hp = y[0]['home_player']
        ap = y[0]['away_player']
        data_update_detail_query = (hs, aws, gi, hp ,ap)
        update_cursor.execute(update_detail_query, data_update_detail_query)
        #print "update cm_match_details set home_score = %s, away_score = %s where game_id = %s and home_player = %s and away+player = %s" % (y[0]['home_score'], y[0]['away_score'], y[0]['game_id'], y[0]['home_player'], y[0]['away_player'])

#else:
#    idx = idx + processIterator(piterator)
#    idx = idx + processIterator(p2iterator)
print '%d matches found' % idx
cnx.commit()
cnx.close()



print 'Finished at %s' % (time.strftime('%X'))

