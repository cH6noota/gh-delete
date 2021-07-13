#!/bin/bash

echo -n "your user name:"
read uname 

while read line
do
  reponame=$uname"/"$line
  echo $reponame" Delete" 
  gh repo-delete $reponame
done < delete.txt
