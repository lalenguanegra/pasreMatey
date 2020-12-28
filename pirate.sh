#!/bin/bash
echo "ENTER A URL";
read varname;
okay=$(sed 's/ref/\n/g' <<<"$varname");
alright=$(sed '2d' <<< $okay);
echo $alright | grep -o 'https://[^"]*[/]';

