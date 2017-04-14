#!/bin/bash
rm out.csv
i=0
 
while read LINE
do
        url=$(echo -e ""$LINE"" | sed 's/\"/\\"/g')
        echo -e $(((++i)))
        [ $i -lt 1 ] && continue
        echo -e '"'"$url"'"','"'$(curl -I -g ""$url"" 2>/dev/null | head -n 1 | awk -F" " '{print $2}')'"' >> out.csv
done < ./input.txt
#input.txt musi byc w formacie linux
 
exit 0
