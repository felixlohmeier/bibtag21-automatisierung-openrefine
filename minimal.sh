#!/bin/bash
openrefine/refine -d data &
sleep 15
openrefine-client --create schriftstellerinnen.csv
openrefine-client --apply history.json schriftstellerinnen
openrefine-client --export schriftstellerinnen
kill %1
wait
rm -r openrefine/data
