#!/bin/bash
zip -r "$1".zip "$1"
curl -T "$1".zip ftp://31.170.163.223 --user u276630279:hB9l_d3-5LsD
