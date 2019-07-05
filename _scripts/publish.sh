#!/bin/bash

source ../_scripts/lastpage
echo $LASTPAGE
FIRSTPAGE=$(($LASTPAGE+1))
PAGES=`qpdf --show-pages file.pdf | grep -c ^page`
LASTPAGE=$(($LASTPAGE+$PAGES))
FILENAME=${1%.*}
EXT=${1##*.}
DATE=`date +"%Y-%m-%d"`
echo $FILENAME
echo $EXT

BASENAME=$DATE-$FILENAME
for EX in tex pdf html
do
    pandoc $1 --template ../_templates/article-template \
	   -o $BASENAME.$EX \
	   --metadata=lastpage:$LASTPAGE \
	   --metadata=firstpage:$FIRSTPAGE \
	   --metadata=pyear:`date +"%Y"` \
	   --metadata=pmonth:`date +"%m"` \
	   --metadata=pday:`date +"%d"` \
           --metadata=date:$DATE
done

mv $BASENAME.html ../_posts/
