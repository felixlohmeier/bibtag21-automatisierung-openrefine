#!/bin/bash
rm -r openrefine/data # Arbeitsverzeichnis leeren
openrefine/refine -d data & # OpenRefine als Hintergrundprozess starten
sleep 15 # warten bis OpenRefine gestartet ist
openrefine-client --create schriftstellerinnen.csv
openrefine-client --apply history.json schriftstellerinnen
openrefine-client --export schriftstellerinnen
kill %1 # OpenRefine beenden
wait # warten bis OpenRefine beendet ist
