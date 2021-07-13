#!/bin/bash

echo -n "your user name:"
read uname 

while read line
do
  reponame=$uname"/"$line
  echo $reponame
  gh repo-delete $reponame
done < delete.txt