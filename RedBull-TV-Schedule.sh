#!/bin/bash
curl -s http://live.redbull.tv/includes/fragments/schedule_list.php | sed -n '/Upcoming Programs/,/Past Programs/p' | grep -i -e '<h3>' -e 'class="date"' > redSched
cat redSched | sed -e 's/.*\/">//;s/<\/span><\/a><\/h3>//' -e 's/.*only-med">//;s/<\/span><\/td>//' > dateSched
cat dateSched | grep -v 'class="date"' | sed -e 's/<span>//' -e 's/2014-//' -e 's/-00//' -e 's/-/\//' -e 's/-/  /' -e 's/-/:/' > spaceSched
cat spaceSched | awk '{print; } NR % 2 == 0 { print ""; }' | sed -e 's/Mont\/Sainte/Mont-Sainte/' | head -24
