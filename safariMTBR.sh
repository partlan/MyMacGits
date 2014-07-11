#!/bin/bash
curl -s http://forums.mtbr.com/california-norcal/ | grep -e 'thread_title_' > mtbrHTML
titlefirst=$(cat mtbrHTML | LC_ALL=C sed -e 's/.*">//;s/<\/.*//' | sed -n 1p)
titlesecond=$(cat mtbrHTML | LC_ALL=C sed -e 's/.*">//;s/<\/.*//' | sed -n 2p)
titlethird=$(cat mtbrHTML | LC_ALL=C sed -e 's/.*">//;s/<\/.*//' | sed -n 3p)
titlefourth=$(cat mtbrHTML | LC_ALL=C sed -e 's/.*">//;s/<\/.*//' | sed -n 4p)
titlefifth=$(cat mtbrHTML | LC_ALL=C sed -e 's/.*">//;s/<\/.*//' | sed -n 5p)
titlesixth=$(cat mtbrHTML | LC_ALL=C sed -e 's/.*">//;s/<\/.*//' | sed -n 6p)
titleseventh=$(cat mtbrHTML | LC_ALL=C sed -e 's/.*">//;s/<\/.*//' | sed -n 7p)
titleeighth=$(cat mtbrHTML | LC_ALL=C sed -e 's/.*">//;s/<\/.*//' | sed -n 8p)
titleninth=$(cat mtbrHTML | LC_ALL=C sed -e 's/.*">//;s/<\/.*//' | sed -n 9p)
titletenth=$(cat mtbrHTML | LC_ALL=C sed -e 's/.*">//;s/<\/.*//' | sed -n 10p)
echo "1:  $titlefirst"
echo "2:  $titlesecond"
echo "3:  $titlethird"
echo "4:  $titlefourth"
echo "5:  $titlefifth"
echo "6:  $titlesixth"
echo "7:  $titleseventh"
echo "8:  $titleeighth"
echo "9:  $titleninth"
echo "10: $titletenth"
echo ""
first=$(cat mtbrHTML | LC_ALL=C sed -e 's/.*href="//;s/" id=".*//' | sed -n 1p)
second=$(cat mtbrHTML | LC_ALL=C sed -e 's/.*href="//;s/" id=".*//' | sed -n 2p)
third=$(cat mtbrHTML | LC_ALL=C sed -e 's/.*href="//;s/" id=".*//' | sed -n 3p)
fourth=$(cat mtbrHTML | LC_ALL=C sed -e 's/.*href="//;s/" id=".*//' | sed -n 4p)
fifth=$(cat mtbrHTML | LC_ALL=C sed -e 's/.*href="//;s/" id=".*//' | sed -n 5p)
sixth=$(cat mtbrHTML | LC_ALL=C sed -e 's/.*href="//;s/" id=".*//' | sed -n 6p)
seventh=$(cat mtbrHTML | LC_ALL=C sed -e 's/.*href="//;s/" id=".*//' | sed -n 7p)
eighth=$(cat mtbrHTML | LC_ALL=C sed -e 's/.*href="//;s/" id=".*//' | sed -n 8p)
ninth=$(cat mtbrHTML | LC_ALL=C sed -e 's/.*href="//;s/" id=".*//' | sed -n 9p)
tenth=$(cat mtbrHTML | LC_ALL=C sed -e 's/.*href="//;s/" id=".*//' | sed -n 10p)

echo -n "Enter the number you wish to view, or 'none' to exit: "
read choice
if [ $choice == 1 ]
then open -a safari.app $first
elif [ $choice == 2 ]
then open -a safari.app $second
elif [ $choice == 3 ]
then open -a safari.app $third
elif [ $choice == 4 ]
then open -a safari.app $fourth
elif [ $choice == 5 ]
then open -a safari.app $fifth
elif [ $choice == 6 ]
then open -a safari.app $sixth
elif [ $choice == 7 ]
then open -a safari.app $seventh
elif [ $choice == 8 ]
then open -a safari.app $eighth
elif [ $choice == 9 ]
then open -a safari.app $ninth
elif [ $choice == 10 ]
then open -a safari.app $tenth
elif [ $choice == "none" ]
then echo "I guess nothing is interesting"
else echo "You typed something wrong. Run me again."
fi
