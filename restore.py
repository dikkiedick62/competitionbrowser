__author__ = 'rene'

import os
import re

files_in_dir = os.listdir("d:\\git\\competitionbrowser")
for file_in_dir in files_in_dir:
    if file_in_dir.endswith("sql"):
        print "file %s" % file_in_dir
        c = re.compile('(game_id, home_player, away_player, home_score, away_score) values(SU 3 Fouls doen we nie,')
        line = re.sub(r"</?\[\d+>", "", line)
